{ pkgs, ... }: {
  programs.bat = {
    enable = true;
    config = {
      pager = "nvim -c";
      manpager = "nvim -c";
      theme = "gruvbox-dark";
    };
  };
}
