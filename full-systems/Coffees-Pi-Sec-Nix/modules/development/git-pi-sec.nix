{
  flake.modules.homeManager.development-git-pi-sec = {
    programs.git = {
      settings = {
        core.sshCommand = "ssh -i /run/secrets/Comin-Git-Key -o IdentitiesOnly=yes";
        user.signingkey = "/run/secrets/Comin-Git-Key";
        gpg.format = "ssh";
        gpg.ssh.allowedSignersFile = "${../../allowed_signers}";
        commit.gpgsign = true;
      };
    };
  };
}
