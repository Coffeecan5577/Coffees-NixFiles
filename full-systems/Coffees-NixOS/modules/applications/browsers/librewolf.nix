{
  flake.modules.homeManager.applications-librewolf = {
    programs.librewolf = {
      enable = true;
      #  extensions = [
        # Dark Reader
        # {id = "(insert extension ID here)"; }
      #  ];
    };
  };
}
