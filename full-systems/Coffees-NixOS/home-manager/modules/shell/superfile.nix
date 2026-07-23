{
  programs.superfile = {
    enable = true;

    pinnedFolders = [
      {
        name = "Coffees-NixOS Files";
        location = "/home/coffeecan/Coffees-NixFiles/full-systems/Coffees-NixOS";
      }
    ];

    settings = {
      auto_check_update = true;
      code_previewer = "bat";
      default_directory = "~/Coffees-NixFiles/full-systems/Coffees-NixOS";
      default_sort_type = 0;
      editor = "nvim";
      enable_md5_checksum = true;
      ignore_missing_fields = true;
      metadata = true;
      nerdfont = true;
      theme = "gruvbox-dark-hard";
      transparent_background = true;
      zoxide_support = true;
    };
  };
}
