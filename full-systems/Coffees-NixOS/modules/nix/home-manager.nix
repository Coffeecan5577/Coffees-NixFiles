{ inputs, ... } @ flakeArgs:
{
  flake.modules.nixos.core-home-manager =
    { ... }:
    {
      imports = [
        inputs.home-manager.nixosModules.default
      ];

      home-manager.backupFileExtension = "backup";
      home-manager.extraSpecialArgs = {
        inherit inputs;
      };

      home-manager.users.coffeecan.imports = [
        flakeArgs.config.flake.modules.homeManager.core-user

        flakeArgs.config.flake.modules.homeManager.development-git
        flakeArgs.config.flake.modules.homeManager.development-zed-editor

        flakeArgs.config.flake.modules.homeManager.desktop-hyprland
        flakeArgs.config.flake.modules.homeManager.desktop-dconf
        flakeArgs.config.flake.modules.homeManager.desktop-swaync
        flakeArgs.config.flake.modules.homeManager.desktop-waybar
        flakeArgs.config.flake.modules.homeManager.desktop-wofi

        flakeArgs.config.flake.modules.homeManager.appearance-cursor
        flakeArgs.config.flake.modules.homeManager.appearance-fonts

        flakeArgs.config.flake.modules.homeManager.applications-librewolf
        flakeArgs.config.flake.modules.homeManager.applications-btop-rocm
        flakeArgs.config.flake.modules.homeManager.applications-keepassxc
        flakeArgs.config.flake.modules.homeManager.applications-flameshot

        flakeArgs.config.flake.modules.homeManager.shell-atuin
        flakeArgs.config.flake.modules.homeManager.shell-bat
        flakeArgs.config.flake.modules.homeManager.shell-eza
        flakeArgs.config.flake.modules.homeManager.shell-fastfetch
        flakeArgs.config.flake.modules.homeManager.shell-fish
        flakeArgs.config.flake.modules.homeManager.shell-oh-my-posh
        flakeArgs.config.flake.modules.homeManager.shell-tmux
        flakeArgs.config.flake.modules.homeManager.shell-superfile

        flakeArgs.config.flake.modules.homeManager.terminal-ghostty

        flakeArgs.config.flake.modules.homeManager.home-packages
      ];
    };
}
