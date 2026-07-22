{
  programs.superfile = {
    enable = true;

    pinnedFolders = [
      {
        name = "Coffees-NixOS Files";
        location = "~/Coffees-NixFiles/full-systems/Coffees-NixOS";
      }
    ];

    settings = {
      default_sort_type = 0;
      theme = "gruvbox";
      transparent_background = true;
    };
  };
}
