{ config, lib, pkgs, pkgs-unstable, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system/modules
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";
}
