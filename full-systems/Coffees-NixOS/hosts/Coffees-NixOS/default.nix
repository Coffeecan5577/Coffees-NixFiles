{ inputs, config, ... }:
{
  flake.nixosConfigurations."Coffees-NixOS" = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    specialArgs = { inherit inputs; };
    modules = [
      ./hardware-configuration.nix
      ./local-packages.nix

      # Core
      config.flake.modules.nixos.core-boot
      config.flake.modules.nixos.core-file-systems
      config.flake.modules.nixos.core-hardware
      config.flake.modules.nixos.core-kernel
      config.flake.modules.nixos.core-timezone
      config.flake.modules.nixos.core-user
      config.flake.modules.nixos.core-home-manager

      # Nix
      config.flake.modules.nixos.nix-nh
      config.flake.modules.nixos.nix-settings
      config.flake.modules.nixos.nix-store-management

      # Networking
      config.flake.modules.nixos.networking-dns
      config.flake.modules.nixos.networking-firewall
      config.flake.modules.nixos.networking-net
      config.flake.modules.nixos.networking-ssh
      config.flake.modules.nixos.networking-syncthing
      config.flake.modules.nixos.networking-vpn

      # Security
      config.flake.modules.nixos.security-clamav-scanner
      config.flake.modules.nixos.security-sops

      # Virtualization
      config.flake.modules.nixos.virtualization-virt-manager
      config.flake.modules.nixos.virtualization-podman

      # Development + environment
      config.flake.modules.nixos.development-llm
      config.flake.modules.nixos.development-nvf
      config.flake.modules.nixos.development-programming-languages
      config.flake.modules.nixos.environment-env

      # Desktop
      config.flake.modules.nixos.desktop-audio
      config.flake.modules.nixos.desktop-display-manager
      config.flake.modules.nixos.desktop-hyprland

      # External flake modules (unchanged from original flake.nix)
      inputs.nix-index-database.nixosModules.default
      inputs.nvf.nixosModules.default
      inputs.sops-nix.nixosModules.sops
      inputs.stylix.nixosModules.stylix

      # Host identity + the one line from your old configuration.nix
      # that isn't an aspect (environment.systemPackages = [ pkgs.home-manager ])
      (
        { pkgs, ... }:
        {
          environment.systemPackages = [ pkgs.home-manager ];
          networking.hostName = "Coffees-NixOS";
          system.stateVersion = "26.05";
        }
      )
    ];
  };
}
