{
  flake.modules.homeManager.development-git = {  
    programs.git = {
      enable = true;
      settings.user = {
        name = "Coffeecan5577";
        email = "coffeecan@tutamail.com";
      };
    };
  };
}
