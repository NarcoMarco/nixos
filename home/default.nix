{ config, pkgs, ... }:

{
  imports = [
    ./user
  ];

  home.username = "marco";
  home.homeDirectory = "/home/marco";
  home.stateVersion = "25.11";

}
