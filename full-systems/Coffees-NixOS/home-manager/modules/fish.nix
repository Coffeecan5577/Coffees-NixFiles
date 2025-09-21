{ config, ...}: {

programs.fish = {
    enable = true;
    shellAliases = {
    
      # Nix-specific aliases
      rebuild-Nix = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles/full-systems/Coffees-NixOS#Coffees-NixOS";
      rebuild-Nix-Home = "home-manager switch --file ~/nixos-dotfiles/full-systems/Coffees-NixOS/home-manager/home.nix";
      update-Nix-Flake = "sudo nix flake update";
      config-Nix-Home = "sudo nano ~/nixos-dotfiles/full-systems/Coffees-NixOS/home-manager/home.nix";
      config-Nix-Flake = "sudo nano ~/nixos-dotfiles/full-systems/Coffees-NixOS/flake.nix";
      cleanup-Nix = "sudo nix-collect-garbage -d";
      rebuild-Nix-Boot = "sudo nixos-rebuild boot";
  
      # General commmand aliases
      ls = "eza -al --color=always --group-directories-first --icons"; # Preferred listing
      la = "eza -a --color=always --group-directories-first --icons"; # all files and directories
      ll = "eza -l --color=always --group-directories-first --icons"; # long format
      lt = "eza -aT --color=always --group-directories-first --icons"; # tree listing
      # l. = "eza -ald --color=always --group-directories-first --icons .*"; # show only dotfiles

      # Setting df -h to show free disk space on our drives:
      df = "df -hx squashfs -x tmpfs -x devtmpfs";

      # Force the amount of output of the mount command to be listed in columns:
      lsmount = "mount | column -t";
 
      # display my external ip address:
      extip = "curl icanhazip.com";

      # Display the top 5 processes using the most RAM:
      mem5 = "ps auxf | sort -nr -k 4 | head -5 | column -t";
    
      # Display the top 5 processes using the most CPU resources:
      cpu5 = "ps auxf | sort -nr -k 3 | head -5 | column -t";

      # Prompt the user before overwriting an existing file using the move command
      mv = "mv -i";

      # Prompt the user before overwriting an existing file using the copy command
      cp = "cp -i";

      # Prompt the user before removing any files using the remove command
      rm = "rm -i";

      # Setup our cat command to use bat instead
      cat = "bat";

      # Use the erdtree command to list icons, disk usage, specify directory levels, and show icons all in a human readable format
      erdtree = "erd --human --icons --long";
    };
   interactiveShellInit = ''
   # Enable custom shell for oh-my-posh (hopefully)
   ~/Downloads/Custom_Shells/oh-my-posh/oh-my-posh init fish --config $HOME/.cache/oh-my-posh/themes/gruvbox.omp.json | source
     '';
  };
}
