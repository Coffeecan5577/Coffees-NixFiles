{
  environment.sessionVariables = rec {
    EDITOR = "nvim";
    SOPS_AGE_KEY_FILE = "$HOME/.config/sops/age/Pi-Sec-Secrets-Age-Key.txt";
    MANPAGER = "nvim -c +Man!";
    PAGER = "nvim -c +Man!";
    };
}

