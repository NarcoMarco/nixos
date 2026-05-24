{ config, pkgs, ... }:

{
  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };

    zsh.enable = true;
    mtr.enable = true;

    dconf.enable = true;

		adb.enable = true;
# 		nm-applet.enable = true;

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/marco/git-repos/mine/nixos/";
    };
  };

}
