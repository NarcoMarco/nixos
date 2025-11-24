{ config, pkgs, ... }:

{
  networking = {
    hostName = "conixodero";
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = false;
  };
}
