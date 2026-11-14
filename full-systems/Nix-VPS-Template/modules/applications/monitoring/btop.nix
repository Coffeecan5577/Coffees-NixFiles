{
  flake.modules.homeManager.applications-btop = { ... }: {
    programs.btop = {
      enable = true;
      settings = {
        theme_background = true;
      };
    };
  };
}
