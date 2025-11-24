{ config, pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    brightnessctl
    playerctl
    wireplumber
    hyprpaper
    kitty
    libnotify
    mako
    qt5.qtwayland
    qt6.qtwayland
    hypridle
    hyprlock
    wlogout
    wl-clipboard
    rofi
    swww
    pywal
  ];
}
