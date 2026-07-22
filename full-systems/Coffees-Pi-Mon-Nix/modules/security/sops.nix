{
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";

    age = {
      # This will automatically import SSH keys as age keys
      sshKeyPaths = [ ];

      # This is using an age key that is expected to already be in the filesystem
      keyFile = "/home/coffeecan/.config/sops/age/Pi-Monitor-Secrets-Age-Key.txt";
    };

    secrets = {
      # This is the actual specification of the secrets.
      example-key = {};
      "myservice/my_subdir/my_secret" = {};
    };
  };
}
