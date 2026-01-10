{
  programs.zed-editor = {
    enable = true;
    themes = {"Gruvbox Dark"};
    extensions = [
      "colored-zed-icons-theme"
      "nix" 
      "pylsp"
      "python-refactoring"  
      "python-requirements"  
      "python-snippets"
      "tmux"
    ];
  };
}
