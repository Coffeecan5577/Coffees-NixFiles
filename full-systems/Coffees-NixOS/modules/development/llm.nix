{
  flake.modules.nixos.development-llm = { pkgs, config, ... }: {
    nixpkgs.config.allowUnfree = true;
    services.ollama = {
      enable = true;
      loadModels = [ "deepseek-r1:8b" "nomic-embed-text" "qwen3-coder:30b" ];
      syncModels = true;
      package = pkgs.ollama-rocm;
    };
  };
}
