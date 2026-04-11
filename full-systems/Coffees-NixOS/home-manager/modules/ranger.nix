{ pkgs, ... }:
{
  programs.ranger = {
    enable = true;
    mappings = {
      e = "edit";

      ec = "compress";
      ex = "extract";

      b = "fzm";
    };

    settings = {
      preview_images = true;
      preview_images_method = "ueberzug";
      draw_borders = true;
    };

    extraConfig = ''
      default_linemode devicons2
    '';

    plugins = [
      {
        name = "ranger-archives";
        src = pkgs.fetchFromGitHub {
          owner = "maximtrp";
          repo = "ranger-archives";
          rev = "0b1cfa9a77412c3b51da5b1b213c672227f9fbb4";
          hash = "sha256-HEJ+8KlG++PK0vVpEYptbyuPZAKllX5PeyaTBKcf+8M=";
        };
      }
      {
        name = "ranger-devicons2";
        src = pkgs.fetchFromGitHub {
          owner = "cdump";
          repo = "ranger-devicons2";
          rev = "94bdcc19218681debb252475fd9d11cfd274d9b1";
          hash = "sha256-aJCIoDfzmOnzMLlbOe+dy6129n5Dc4OrefhHnPsgI8k=";
        };
      }
      {
        name = "ranger_tmux";
        src = pkgs.fetchFromGitHub {
          owner = "joouha";
          repo = "ranger_tmux";
          rev = "05ba5ddf2ce5659a90aa0ada70eb1078470d972a";
          hash = "sha256-KCBOPwhG4U/k2a/Dp/+fZeetFz/PW9424zi3NlLsDj0=";
        };
      }
    ];
  };
}
