{
  programs.ghostty = 
  {
    enable = true;
    settings = 
      {
        theme = "Gruvbox Dark";
        font-size = 16;
        
        # Set windows transparency value and blur background
        background-opacity = 0.8;
        
        # Background blur value can be set to a non-negative integer, true or false
        background-blur = 5;
      };
  };
}
