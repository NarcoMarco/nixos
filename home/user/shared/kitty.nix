{ config, ... }:
{
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font Mono";
      size = 12;
    };

    settings = {
      cursor_shape = "beam";
      background_opacity = 0.85;
      enabled_layouts = "horizontal";
    };
  };
}
