{ inputs, config, ...}:
{
  flake.nixosConfigurations."Coffees-Pi-Mon-Nix" = inputs.nixpkgs.lib.nixosSystem {
    system = "aarch64-linux";
    specialArgs = { inherit inputs; };
    modules = [
      ./hardware-configuration.nix
      ./local-packages.nix

      # Applications

      # Core
      config.flake.modules.nixos.core-boot
      config.flake.modules.nixos.core-hardware
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
      config.flake.modules.nixos.networking-ssh

      # Security
      config.flake.modules.nixos.security-clamav-scanner
      config.flake.modules.nixos.security-sops

      # Development + environment
      config.flake.modules.nixos.development-nvf
      config.flake.modules.nixos.environment-env

      # External flake modules
      inputs.nix-index-database.nixosModules.default
      inputs.nixos-hardware.nixosModules.raspberry-pi-4
      inputs.nvf.nixosModules.default
      inputs.sops-nix.nixosModules.sops

      # Host identity + the one line from your old configuration.nix
      (
        { pkgs, ... }:
        {
          environment.systemPackages = [ pkgs.home-manager ];
          networking.hostName = "Coffees-Pi-Mon-Nix";
          system.stateVersion = "26.05";
        }
      )
    ];
  };
}
