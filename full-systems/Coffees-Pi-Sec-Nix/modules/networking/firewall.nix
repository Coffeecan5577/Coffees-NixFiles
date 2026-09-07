{
  flake.modules.nixos.networking-firewall = {  
    # Open ports in the firewall.
    networking.firewall.enable = true;
    networking.firewall.allowedTCPPorts = [ 22 80 443 ];
    networking.firewall.allowedUDPPorts = [ 22000 21027 ];
    # Or disable the firewall altogether.
    # networking.firewall.enable = false;
  };
}
