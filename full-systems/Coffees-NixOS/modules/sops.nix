{
  sops = {
    defaultSopsFile = "~/Coffees-NixFiles/full-systems/Coffees-NixOS/secrets/secrets.yaml";
    defaultSopsFormat = "yaml";

    age.sshKeyPaths = [ "~/.ssh/Coffees-Pi-Sec-Key" ];
    age.keyFile = "~/.config/sops/age/Pi-Sec-Age-Key.txt";
    secrets."example-key" = { };
  };
}
