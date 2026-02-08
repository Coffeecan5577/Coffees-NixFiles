{ pkgs, lib, ... }:
{
  programs.nvf = {
    enable = true;

    # Settings need to go under the settings attribute set
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "gruvbox";
          style = "dark";
        };
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix.enable = true;
          go.enable = true;
          python.enable = true;
        };
      };
    };
  };
}
