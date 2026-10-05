{
  flake.modules.homeManager.shell-superfile = {
    programs.superfile = {
      enable = true;

      settings = {
        auto_check_update = true;
        code_previewer = "bat";
        default_sort_type = 0;
        editor = "nvim";
        enable_md5_checksum = true;
        ignore_missing_fields = true;
        metadata = true;
        nerdfont = true;
        theme = "gruvbox";
        transparent_background = true;
        zoxide_support = true;
      };
    };
  };
}
