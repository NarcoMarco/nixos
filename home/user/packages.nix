{ pkgs, pkgs-unstable, ...}:

{
  home.packages = [
    pkgs.gcc
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pip
      python-pkgs.requests
    ]))

    pkgs.obsidian
    pkgs.vlc
    pkgs.catppuccin
    pkgs.catppuccin-cursors.mochaLavender
    pkgs.catppuccin-fcitx5
    pkgs.catppuccin-gtk
    pkgs.catppuccin-qt5ct
    pkgs.papirus-folders
    pkgs.dconf-editor
    pkgs.catimg
    pkgs.waypaper
    pkgs.matugen
    pkgs.libadwaita
  ];
}
