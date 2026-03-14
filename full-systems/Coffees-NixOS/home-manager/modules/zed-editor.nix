{
  programs.zed-editor = {
    enable = true;
    # themes = {"Gruvbox Dark"}; 
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
        mode = "dark";
        light = "Gruvbox Light";
        dark = "Gruvbox Dark";
      };
      terminal = {
        font_family = "Monaspace Neon"; # Replace back with Monaspace Neon if pixel-code does not look right
        font_size = 18;
        line_height = "standard";
      };
    };
  };
}
