{ config, pkgs, ... }:
{
	virtualisation = {
		waydroid.enable = true;
		vmware.host.enable = true;
	};
}
