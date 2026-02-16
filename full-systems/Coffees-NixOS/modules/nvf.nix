{ pkgs, lib, ... }:
{
  programs.nvf = {
    enable = true;

    # Settings need to go under the settings attribute set
    settings = {
      vim = {
       
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
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        # Enabling language support
        languages = {
          enableTreesitter = true;
          nix.enable = true;
          go.enable = true;
          python.enable = true;
        };
      };
    };
  };
}
