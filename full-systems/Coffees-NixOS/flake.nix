{
  description = "Coffees NixOS System Configuration ❄️";

  inputs = {
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
    };

    # Home Manager configuration
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

    # Nixmate TUI flake
    nixmate = {
      url = "github:daskladas/nixmate";
    };

    # Nix Packages Stable Branch URL
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-26.05";
    };

    # NVF Neovim Nix configuration flake
    nvf = {
      url = "github:NotAShelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Sops-Nix configuration
    sops-nix = {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Stylix Nix Module URL
    stylix = {
      url = "github:nix-community/stylix/release-26.05";
    };

    # Zen Browser Twilight package flake
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ flake-parts, import-tree, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        (inputs.import-tree ./modules)
        ./hosts/Coffees-NixOS
      ];
    };
}
