{
  description = "Coffees Pi-Mon-Nix System Configuration";

  inputs = {
    
    # Nix Packages URL
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
 
    # Custom Japanese Font import URL
    nixos-fonts.url = "github:Takamatsu-Naoki/nixos-fonts";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };   
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: let
    system = "aarch64-linux";
    homeStateVersion = "25.05";
    user = "coffeecan";
    hosts = [
      { hostname = "Coffees-Pi-Mon-Nix"; stateVersion = "25.05"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
      ];
    };

  in {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        inherit inputs homeStateVersion user;
      };

      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}
