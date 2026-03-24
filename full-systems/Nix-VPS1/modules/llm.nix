{ pkgs, ... }:

{  
  nixpkgs.config.allowUnfree = true;

  services.ollama = {
    enable = true;
    loadModels = [ "deepseek-r1:8b"  "nomic-embed-text" "qwen3-coder:30b" ];
    acceleration = "rocm";
  };

  services.n8n = {
    enable = true;
  };
}
