{
  flake.modules.homeManager.shell-oh-my-posh = { config, ... }: {
    programs.oh-my-posh = {
      enable = true;
      enableFishIntegration = true;
      useTheme = "gruvbox";
    };
  };
}
