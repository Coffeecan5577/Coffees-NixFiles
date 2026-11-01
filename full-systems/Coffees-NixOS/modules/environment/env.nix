{
  flake.modules.nixos.environment-env = {
    environment.sessionVariables = rec {
      TERMINAL = "ghostty";
      EDITOR = "nvim";
      MANPAGER = "nvim -c +Man!";
      PAGER = "nvim -c +Man!";
    };
  };
}
