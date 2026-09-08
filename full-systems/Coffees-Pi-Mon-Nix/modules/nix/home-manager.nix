{ inputs, ...} @ flakeArgs:
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

        flakeArgs.config.flake.modules.homeManager.applications-btop

        flakeArgs.config.flake.modules.homeManager.shell-atuin
        flakeArgs.config.flake.modules.homeManager.shell-bat
        flakeArgs.config.flake.modules.homeManager.shell-eza
        flakeArgs.config.flake.modules.homeManager.shell-fetch
        flakeArgs.config.flake.modules.homeManager.shell-fish
        flakeArgs.config.flake.modules.homeManager.shell-oh-my-posh
        flakeArgs.config.flake.modules.homeManager.shell-tmux

        flakeArgs.config.flake.modules.homeManager.home-packages
      ];
    };
}
