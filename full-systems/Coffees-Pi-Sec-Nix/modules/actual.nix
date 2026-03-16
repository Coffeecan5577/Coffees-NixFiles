{ pkgs, ...}:
{
  services.actual= {
     enable = true;
     openFirewall = true;
     package = pkgs.actual-server;

     settings = {
       port = 5006;
       https = {
         key = "/home/coffeecan/.local/share/mkcert/actual-server.key";
         cert = "/home/coffeecan/.local/share/mkcert/actual-server.crt";
       };
     };
   };
}
