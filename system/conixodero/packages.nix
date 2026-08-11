{ config, pkgs, pkgs-unstable, ... }:

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
    thunar
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    zip
    zoxide

		waydroid-helper
		waydroid
		cage

		mesa

		beeper
		bitwarden-desktop
		openvpn
		# pkgs-unstable.ytmdesktop
		networkmanagerapplet
		gst_all_1.gst-plugins-base
  ];
}
