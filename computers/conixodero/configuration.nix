{ config, lib, pkgs, pkgs-unstable, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system/shared/default.nix
		../../system/conixodero/default.nix
  ];

  nixpkgs.config.allowUnfree = true;
	nixpkgs.config.permittedInsecurePackages = [
		"electron-39.8.10"
	];

  system.stateVersion = "26.05";
}
