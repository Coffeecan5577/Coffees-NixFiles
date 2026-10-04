{ inputs, config, ... }:
{
  flake.nixosConfigurations."Coffees-NixVM1" = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    specialArgs = { inherit inputs; };
    modules = [
      ./hardware-configuration.nix
      ./local-packages.nix

      # Core
      config.flake.modules.nixos.core-boot
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

      # Security
      config.flake.modules.nixos.security-clamav-scanner

      # Virtualization
      config.flake.modules.nixos.virtualization-virt-manager

      # Development + environment
      config.flake.modules.nixos.development-nvf
      config.flake.modules.nixos.development-programming-languages
      config.flake.modules.nixos.environment-env

      # Desktop
      config.flake.modules.nixos.desktop-audio
      config.flake.modules.nixos.desktop-display-manager

      # External flake modules (unchanged from original flake.nix)
      inputs.nix-index-database.nixosModules.default
      inputs.nvf.nixosModules.default
      inputs.stylix.nixosModules.stylix

      # Host identity + the one line from your old configuration.nix
      # that isn't an aspect (environment.systemPackages = [ pkgs.home-manager ])
      (
        { pkgs, ... }:
        {
          environment.systemPackages = [ pkgs.home-manager ];
          networking.hostName = "Coffees-NixVM1";
          system.stateVersion = "26.05";
        }
      )
    ];
  };
}
