{
  flake.modules.nixos.security-sops = {
    
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";

    age = {
      # This will automatically import SSH keys as age keys
      sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];

      # This is using an age key that is expected to already be in the filesystem
      #keyFile
    };

    secrets = {
      # This is the actual specification of the secrets.
      Comin-Git-Key = {
        owner = "coffeecan";
        mode = "0400";
      };
    };
   };
  };
}
