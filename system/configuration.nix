{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}
