{ pkgs, ... }:

{  
  nixpkgs.config.allowUnfree = true;

  services.ollama = {
    enable = true;
    loadModels = [ "deepseek-r1:8b"  "nomic-embed-text" ];
    acceleration = "rocm";
  };

  services.n8n = {
    enable = true;
  };

  services.open-webui = {
    enable = true;
    port = 8888;
    host = "127.0.0.1";
  };
}
