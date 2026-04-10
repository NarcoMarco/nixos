{ config, pkgs, ... }:

{
  networking = {
    hostName = "conixodero";
    networkmanager = {
			enable = true;
			plugins = with pkgs; [
				networkmanager-openvpn
			];
		};
    enableIPv6 = true;
    firewall.enable = false;
  };
}
