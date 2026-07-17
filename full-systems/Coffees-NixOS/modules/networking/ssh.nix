{
  # Enable the OpenSSH service for SSH access to this machine
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "coffeecan" ];
     };
  };
  
  # Start the ssh-agent program
  programs.ssh.startAgent = true;
  
}
