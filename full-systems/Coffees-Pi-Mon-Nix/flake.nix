{
  description = "Coffees Pi-Mon-Nix System Configuration";

  inputs = {

    # Areofyl Fetch package flake
    areofyl-fetch = {
      url = "github:areofyl/fetch";
    };

    # Flake-Parts for modularizing flakes
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };

    # Home Manager Configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Recursively imports every module under ./modules
    import-tree = {
      url = "github:vic/import-tree";
    };

    # Nix Index Database Nix Configuration
    nix-index-database = {
      url = "github:nix-community/nix-index-database";
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

  outputs = 
    inputs@{ flake-parts, import-tree, ...}:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        (inputs.import-tree ./modules)
        ./hosts/Coffees-Pi-Mon-Nix
      ];
    };
}
