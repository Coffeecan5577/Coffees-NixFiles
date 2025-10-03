{
  description = "Coffees Pi-Sec-Nix System Configuration";

  inputs = {
    
    # Nix Packages URL
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  
    vscode-server.url = "github:nix-community/nixos-vscode-server";

  };

  outputs = { self, nixpkgs, home-manager, vscode-server, ... }@inputs: let
    system = "aarch64-linux";
    homeStateVersion = "25.05";
    user = "coffeecan";
    hosts = [
      { hostname = "Coffees-Pi-Sec-Nix"; stateVersion = "25.05"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
        vscode-server.nixosModules.default
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
