{ pkgs, ... }: {
  programs.bat = {
    enable = true;
    config = {
      pager = "less --RAW-CONTROL-CHARS --quit-if-one-screen --mouse";
      paging = "never";
      theme = "gruvbox-dark";
    };
  };
}
