{
  # Enable the OpenSSH service for SSH access to this machine
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = true;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "coffeecan" ];
     };
  };
}
