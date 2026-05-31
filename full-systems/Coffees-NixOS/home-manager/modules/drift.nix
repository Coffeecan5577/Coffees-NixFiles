{
  programs.drift = {
    enable = true;

    settings = {
      engine = {
        fps = 60;
        cycle_seconds = 30;
        fade_seconds = 0.3;
        scenes = [
          "rain"
          "orrery"
        ];
        theme = "gruvbox";
        shuffle = true;
        hide_tmux_status = false;
      };

      scene.rain = {
        charset = "ｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉ0123456789";
        density = 0.4;
        speed = 1.0;
      };

      scene.orrery = {
        bodies = 8;
        trail_decay = 2.4;
      };
    };
  };
}
