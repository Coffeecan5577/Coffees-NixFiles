{
  # Enable the OpenSSH service for SSH access to this machine
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = true;
      PermitRootLogin = "no";
      AllowUsers = [ "coffeecan" ];
     };
  };
}
