{pkgs, ...}:

{
  programs.steam = {
    enable = true;
  };

 # Enabling gamemode option
 programs.gamemode = {
    enable = true;
    custom = {
      start = "${pkgs.libnotify}/bin/notify-send 'GameMode started'";
      end = "${pkgs.libnotify}/bin/notify-send 'GameMode ended'";
    };
  };
}
