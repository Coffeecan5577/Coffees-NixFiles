{
  description = "Coffees Pi-Sec-Nix System Configuration ❄️"; 

  inputs = {  # Inputs will be sorted alphabetically
    
    # Areofyl Fetch URL
    areofyl-fetch = {
      url = "github:areofyl-fetch";
    };

    # Home Manager Configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # NixOS Hardware URL
    nixos-hardware.url = "github:NixOS/nixos-hardware";

    # Nix Packages URL
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    # NVF Neovim Nix configuration flake
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Sops-Nix Configuration
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { areofyl-fetch, home-manager, nixos-hardware, nixpkgs, nvf, self, sops-nix, ... }@inputs: let
    system = "aarch64-linux";
    homeStateVersion = "26.05";
    user = "coffeecan";
    hosts = [
      { hostname = "Coffees-Pi-Sec-Nix"; stateVersion = "26.05"; }
    ];

    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user;
      };

      modules = [
        ./hosts/${hostname}/configuration.nix
        nixos-hardware.nixosModules.raspberry-pi-4
        nvf.nixosModules.default
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
