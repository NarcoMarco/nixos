{ config, pkgs, ... }:

{
  programs = {
		nix-ld.enable = true;
		nix-ld.libraries = with pkgs; [
			stdenv.cc.cc.lib
			zlib
			libGL
			glib
			libxcb
			libx11
			libxext
			libxrender
			libsm
			libice
			zstd
			openssl
			curl
			bzip2
			libxml2
			xz
		];

    steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
    };

    zsh.enable = true;
    mtr.enable = true;

    dconf.enable = true;

# 		nm-applet.enable = true;

    nh = {
      enable = true;
      clean.enable = true;
      clean.extraArgs = "--keep-since 4d --keep 3";
      flake = "/home/marco/git-repos/mine/nixos/";
    };
  };

}
