{ pkgs, ...}:
{
  services.actual= {
     enable = true;
     openFirewall = true;
     package = pkgs.actual-server;

     settings = {
       port = 5006;
     };

   };
}
