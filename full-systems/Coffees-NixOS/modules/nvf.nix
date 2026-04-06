{ pkgs, lib, ... }:
{
  programs.nvf = {
    enable = true;
    enableManpages = true;

    # Settings need to go under the settings attribute set
    settings = {
      vim = {
        
        # Set custom key repeat rate for nvim key presses (lower numbers mean a faster rate. Set to 1000 by default)
        timeoutlen = 250;

        # Theme Configuration settings
        theme = {
          enable = true;
          name = "gruvbox";
          style = "dark";
        };

        # Enabling LSP support for programming languages
        lsp = {
          enable = true;
        };

        # Enabling plugins
        autocomplete.nvim-cmp.enable = true;
        binds = {
          cheatsheet.enable = true;
          hardtime-nvim.enable = true;
        };
        clipboard = {
          enable = true;
          providers.wl-copy.enable = true;
        };
        comments = {
          comment-nvim.enable = true;
        };
        statusline.lualine.enable = true;
        telescope.enable = true;
        

        # Enabling language support
        languages = {
          enableTreesitter = true;
          go.enable = true;
          nix.enable = true;
          python.enable = true;
          terraform.enable = true;
        };
       
        # Enabling colored UI modes
        ui.modes-nvim = {
          enable = true;
        };
      };
    };
  };
}
