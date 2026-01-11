{
  description = "Coffees Pi-Mon-Nix System Configuration";

  inputs = {
    
    # Nix Packages URL
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
 
    # Home Manager Configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    }; 

    # Sops-Nix Configuration
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };  
  };

  outputs = { self, nixpkgs, home-manager, sops-nix, ... }@inputs: let
    system = "aarch64-linux";
    homeStateVersion = "25.11";
    user = "coffeecan";
    hosts = [
      { hostname = "Coffees-Pi-Mon-Nix"; stateVersion = "25.11"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
        sops-nix.nixosModules.sops
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
