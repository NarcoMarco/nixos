{ config, pkgs, ... }:

{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    # xdgOpenUsePortal = false;
    extraPortals = [
      pkgs.xdg-desktop-portal-hyprland
      pkgs.xdg-desktop-portal-gtk
    ];
		config = {
			preferred = {
				default = ["gtk"];
			};
		};
  };

	# environment.pathsToLink = [ "/share/xdg-desktop-portal" "/share/applications" ];

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };

    hyprland = {
      enable = true;

      xwayland = {
        enable = true;
      };

      portalPackage = pkgs.xdg-desktop-portal-hyprland;
    };

    zsh.enable = true;
    mtr.enable = true;

    dconf.enable = true;

		nm-applet.enable = true;

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/marco/git-repos/mine/nixos/";
    };
  };

}
