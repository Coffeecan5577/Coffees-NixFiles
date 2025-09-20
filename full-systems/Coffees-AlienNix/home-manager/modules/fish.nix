{ config, ...}: {

programs.fish = {
    enable = true;
    shellAliases = {
      rebuild-Nix = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles/full-systems/Coffees-AlienNix#Coffees-AlienNix";
      rebuild-Nix-Home = "home-manager switch --file ~/nixos-dotfiles/full-systems/Coffees-AlienNix/home-manager/home.nix";
      update-Nix-Flake = "sudo nix flake update";
      config-Nix-Home = "sudo nano ~/nixos-dotfiles/full-systems/Coffees-AlienNix/home-manager/home.nix";
      config-Nix-Flake = "sudo nano ~/nixos-dotfiles/full-systems/Coffees-AlienNix/flake.nix";
      cleanup-Nix = "sudo nix-collect-garbage -d";
      rebuild-Nix-Boot = "sudo nixos-rebuild boot";
    };
   interactiveShellInit = ''
   # Enable custom shell for oh-my-posh (hopefully)
   ~/Downloads/Custom_Shells/oh-my-posh/oh-my-posh init fish --config $HOME/.cache/oh-my-posh/themes/gruvbox.omp.json | source
     '';
  };
}
