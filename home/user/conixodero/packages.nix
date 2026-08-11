{ pkgs, pkgs-unstable, nixpkgs, ...}:

{
  home.packages = with pkgs; [
    pkgs.gcc
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pip
      python-pkgs.requests
    ]))

		bottles
		yad
    obsidian
    vlc
    catppuccin
    catppuccin-cursors.mochaLavender
    catppuccin-fcitx5
    catppuccin-gtk
    catppuccin-qt5ct
    papirus-folders
    dconf-editor
    catimg
    waypaper
    matugen
    imagemagick
    libadwaita
    luarocks
		grimblast
		# bitwarden-desktop
		#spotify
		#papirus-icon-theme
		kora-icon-theme
		localsend
		moonlight-qt
		calibre
		arduino-ide
		haskell.compiler.ghcHEAD
		cmatrix
		onlyoffice-desktopeditors
		pkgs-unstable.ytmdesktop
		prusa-slicer
		nextcloud-client
		vivaldi
		sl
		jdk25
		jetbrains.idea
		gpclient
  ];
}
