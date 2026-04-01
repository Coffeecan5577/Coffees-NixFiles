{ pkgs, config, ... }:

{
  # Enable Display Manager
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "niri-session";
        user    = "greeter";
      };
    };
  };

  users.users.greeter = {
    isNormalUser = false;
    description  = "greetd greeter user";
    extraGroups  = [ "video" "audio" ];
    linger        = true;
  };

  environment.systemPackages = with pkgs; [
    tuigreet
  ];
}
