{
  environment.sessionVariables = rec {
    TERMINAL = "ghostty";
    EDITOR = "nano";
    SOPS_AGE_KEY_FILE = "$HOME/.config/sops/age/Pi-Sec-Age-Key.txt";
    NIXPKGS_ALLOW_INSECURE = 1;
    };
}

