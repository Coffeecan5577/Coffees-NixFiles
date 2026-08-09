{
  flake.modules.homeManager.terminal-ghostty = {
    programs.ghostty = {
      enable = true;
      enableFishIntegration = true;

      settings = {
        theme = "Gruvbox Light";
        font-size = 16;

        # Set windows transparency value and blur background
        background-opacity = 0.9;

        # Background blur value can be set to a non-negative integer, true or false
        background-blur = 5;
        # Set custom cursor shader animation to be on all the time
        custom-shader-animation = "always";
        # Set custom cursor shader
        custom-shader = "~/.config/ghostty/shaders/cursor_warp.glsl";
      };
    };
  };
}
