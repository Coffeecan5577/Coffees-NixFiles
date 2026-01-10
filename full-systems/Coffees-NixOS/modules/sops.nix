{
  sops = {
    defaultSopsFile = ../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";

    # This will automatically import SSH keys as age keys
    age.sshKeyPaths = [ ];

    # This is using an age key that is expected to already be in the filesystem
    age.keyFile = "~/.config/sops/age/Pi-Sec-Age-Key.txt";

    # This is the actual specification of the secrets.
    secrets.example-key = {};
    secrets."myservice/my_subdir/my_secret" = {};
  };
}
