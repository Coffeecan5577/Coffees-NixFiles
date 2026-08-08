{
  flake.modules.homeManager.development-zed-editor = {
    programs.zed-editor = {
      enable = true;
      extensions = [
        "colored-zed-icons-theme"
        "nix"
        "pylsp"
        "python-refactoring"
        "python-requirements"
        "python-snippets"
        "tmux"
      ];
      userSettings = {
        languages = {
          Nix = {
            language_servers = [ "nixd" "!nil" ];
          };
        };
        lsp = {
          nixd = {
            initialization_options = {
              formatting = {
                command = [ "alejandra" "--quiet" "--" ];
              };
            };
          };
        };
        buffer_font_family = "Pixel Code"; #Segoe UI was the font family listed here
        icon_theme = "Colored Zed Icons Theme Dark";
        base_keymap = "VSCode";
        colorize_brackets = true;
        telemetry = {
          diagnostics = true;
          metrics = true;
        };
        ui_font_family = "Liberation Sans"; #Liberation Sans was the original font used here
        ui_font_size = 20;
        buffer_font_size = 18;
        theme = {
          mode = "light";
          light = "Gruvbox Light";
          dark = "Gruvbox Dark";
        };
        terminal = {
          font_family = "JetBrains Mono"; # Replace back with Monaspace Neon if pixel-code does not look right
          font_size = 18;
          line_height = "standard";
        };
      };
    };
  };
}
