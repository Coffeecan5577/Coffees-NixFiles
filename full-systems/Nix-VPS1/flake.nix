{
  description = "Coffees Nix-VPS1 System Configuration ❄️";

  # Inputs will be sorted alphabetically
  inputs = {

    # Home Manager configuration
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nix Index Database Nix Configuration
    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Niri window manager flake
    niri-flake.url = "github:sodiboo/niri-flake";

    # Nix Packages URL
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # NVF Neovim Nix configuration flake
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      home-manager,
      niri-flake,
      nix-index-database,
      nixpkgs,
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
          hostname = "Nix-VPS1";
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
        pkgs-unstable = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = {
          inherit inputs homeStateVersion user;
        };

        modules = [
          ./home-manager/home.nix
        ];
      };
    };
}
