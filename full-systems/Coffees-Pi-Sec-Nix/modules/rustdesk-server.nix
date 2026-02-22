{
  services.rustdesk-server = {
     enable = true;
     openFirewall = true;
     signal = {
       enable = true;
       relayHosts = ["10.10.1.124"];
     };
     relay = {
       enable = true;
     };
   };
}
