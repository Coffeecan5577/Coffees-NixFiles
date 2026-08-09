{
  flake.modules.nixos.environment-env = {
    environment.sessionVariables = rec {
      TERMINAL = "ghostty";
      EDITOR = "nvim";
      SOPS_AGE_KEY_FILE = "$HOME/.config/sops/age/Pi-Sec-Age-Key.txt";
      MANPAGER = "nvim -c +Man!";
      PAGER = "nvim -c +Man!";
    };
  };
}
