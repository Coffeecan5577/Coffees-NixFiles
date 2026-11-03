{ inputs, ... }:
{
  flake.modules.nixos.development-comin = { config, ... }: {

    # trust GitHub's host key (value from GitHub's published fingerprints page)
    programs.ssh.knownHosts."github.com".publicKey =
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMqqnkVzrm0SdG6UOoqKLsabgH5C9okWi0dh2l9GKJl";

    services.comin = {
      enable = true;
      repositorySubdir = "Coffees-Pi-Mon-Nix";   # the folder holding THIS Pi's flake
      remotes = [{
        name = "origin";
        url = "git@github.com:Coffeecan5577/Coffees-NixFiles.git";
        auth.username = "git";
        auth.ssh_deploy_key_path = config.sops.secrets.Comin-Git-Key.path;
        branches.main.name = "Raspberry-Pi-Nix";   # the shared Pi branch
      }];
      # only deploy commits signed by someone in this file
      sshAllowedSignersPath = "${../../allowed_signers}";
    };
  };
}
