{
  flake.modules.homeManager.development-git-commit-signing = {
    programs.git = {
      settings = {
        user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA/tMIresKpiDB7fyIUS7prdHJYRaei17wugIIAl39cf NixOS-Laptop-Commit-Signing";
        gpg.format = "ssh";
        commit.gpgsign = true;
      };
    };
  };
}
