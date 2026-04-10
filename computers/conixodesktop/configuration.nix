{ config, lib, pkgs, pkgs-unstable, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system/shared/default.nix
		../../system/conixodesktop/default.nix
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}
