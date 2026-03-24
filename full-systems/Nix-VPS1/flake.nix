{
  description = "Coffees Nix-VPS1 System Configuration ❄️";

  # Inputs will be sorted alphabetically
  inputs = {

    # Home Manager configuration
    home-manager = {
      unstable-url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix Index Database Nix Configuration
    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix Packages URL
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # NVF Neovim Nix configuration flake
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      home-manager,
      nix-index-database,
      nixpkgs-unstable,
      nvf,
      self,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      homeStateVersion = "26.05";
      user = "coffeecan";
      hosts = [
        {
          hostname = "Coffees-NixVPS1";
          stateVersion = "26.05";
        }
      ];

      makeSystem =
        { hostname, stateVersion }:
        nixpkgs.lib.nixosSystem {
          system = system;
          specialArgs = {
            inherit
              inputs
              stateVersion
              hostname
              user
              ;
          };

          modules = [
            ./hosts/${hostname}/configuration.nix
            nix-index-database.nixosModules.default
            nvf.nixosModules.default
          ];
        };

    in
    {
      nixosConfigurations = nixpkgs.lib.foldl' (
        configs: host:
        configs
        // {
          "${host.hostname}" = makeSystem {
            inherit (host) hostname stateVersion;
          };
        }
      ) { } hosts;

      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
        extraSpecialArgs = {
          inherit inputs homeStateVersion user;
        };

        modules = [
          ./home-manager/home.nix
        ];
      };
    };
}
