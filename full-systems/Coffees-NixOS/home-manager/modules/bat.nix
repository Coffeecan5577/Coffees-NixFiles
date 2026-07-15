{ pkgs, ... }: {
  programs.bat = {
    enable = true;
    settings = {
      pager = "nvim -c";
      manpager = "nvim -c";
      theme = "gruvbox-dark";
    };
  };
}
