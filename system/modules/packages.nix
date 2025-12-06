{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    btop
	fprintd
    git
    gnumake
    lm_sensors
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtsvg
    kdePackages.qt5compat
	kdePackages.qtmultimedia
    lua51Packages.lua
    fastfetch
    gsettings-desktop-schemas
    neovim
    tldr
    tokyonight-gtk-theme
    tree
    unzip
    pkg-config
    power-profiles-daemon
    wget
    xfce.thunar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    zip
    zoxide
  ];
}
