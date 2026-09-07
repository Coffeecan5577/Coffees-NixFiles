{
  flake.modules.nixos.applications-traefik = {pkgs, ...}:{
   services.traefik = {                           
     enable = true;
    staticConfigOptions = {
       entrypoints = {
         web = {
           address = ":80";
           asdefault = true;
           http.redirections.entrypoint = {
             to = "websecure";
             scheme = "https";
           };
         };
        
         websecure = {
           address = ":443";
           asdefault = true;
           http.tls.certresolver = "letsencrypt";
         };
       };                       
       api.dashboard = true;
     };
    };
   };
 }
