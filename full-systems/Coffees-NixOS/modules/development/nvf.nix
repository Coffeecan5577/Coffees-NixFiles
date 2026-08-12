{
  flake.modules.nixos.development-nvf = { pkgs, lib, ... }: {
    programs.nvf = {
      enable = true;
      enableManpages = true;
      # Settings need to go under the settings attribute set

      settings = {
        vim = {
          # Enabling autopairs
          autopairs = {
            nvim-autopairs.enable = true;
          };

          # Enabling neo-tree file tree for file previews in NVF
          filetree = {
            neo-tree = {
              enable = true;
            };
          };

          # Theme Configuration settings
          theme = {
            enable = true;
            name = "gruvbox";
            style = "light";
          };

          # Enabling syntax highlighting
          syntaxHighlighting = true;

          # Enabling some git functions
          git = {
            gitsigns.enable = true;
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
            nix = {
              enable = true;
              format.enable = true;
              format.type = [ "alejandra" ];
              lsp.servers = [ "nixd" ];
            };
            python.enable = true;
            terraform.enable = true;
          };
                                        
          # Enabling various UI settings
          ui = {
            colorful-menu-nvim.enable = true;
          };

          # Enabling colored UI modes
          ui.modes-nvim = {
            enable = true;
          };

          # Utility and quality of life plugins
          utility = {
            oil-nvim.enable = true;
            oil-nvim.gitStatus.enable = true;
            snacks-nvim.enable = true;
          };

          # Visual-based plugins
          visuals = {
            blink-indent.enable = true;
            cinnamon-nvim.enable = true;
            rainbow-delimiters.enable = true;
          };
        };
      };
    };
  };
}
