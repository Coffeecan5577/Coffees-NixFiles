{
  flake.modules.homeManager.applications-keepassxc = {
    programs.keepassxc.settings = {
      Browser.Enabled = true;
      GUI = {
        AdvancedSettings = true;
        ApplicationTheme = "light";
        HidePasswords = true;
      };
    };
  };
}
