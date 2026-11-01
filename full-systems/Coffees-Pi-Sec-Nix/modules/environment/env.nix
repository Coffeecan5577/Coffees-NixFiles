{
  flake.modules.nixos.environment-env = {   
  environment.sessionVariables = rec {
    EDITOR = "nvim";
    MANPAGER = "nvim -c +Man!";
    PAGER = "nvim -c +Man!";
    };
  };
}

