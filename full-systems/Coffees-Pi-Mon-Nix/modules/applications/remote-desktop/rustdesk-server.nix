{
  services.rustdesk-server = {
    enable = true;
    openFirewall = true;
    signal = {
      enable = true;
      relayHosts = ["10.10.1.123"];
    };
    relay = {
      enable = true;
    };
  };
}
