{ pkgs, lib, ... }:
{
  programs.nvf = {
    enable = true;
    enableManpages = true;

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
