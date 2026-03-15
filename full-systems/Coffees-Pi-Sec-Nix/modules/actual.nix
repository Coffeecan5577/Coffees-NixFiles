{ pkgs, ...}:
{
  services.actual= {
     enable = true;
     openFirewall = true;
     package = pkgs.actual-server;

     settings = {
       port = 5006;
       https = {
         key = "/home/coffeecan/.local/share/mkcert/key.pem";
         cert = "/home/coffeecan/.local/share/mkcert/cert.pem";
       };
     };
   };
}
