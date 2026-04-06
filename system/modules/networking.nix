{ config, pkgs, ... }:

{
  networking = {
    hostName = "conixodero";
    networkmanager.enable = true;
    enableIPv6 = true;
    firewall.enable = false;
  };
}
