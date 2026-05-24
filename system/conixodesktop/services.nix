{ config, pkgs, pkgs-unstable, ... }:
{
  services = {
  	dbus.enable = true;
		picom.enable = true;
		openssh.enable = true;
		spice-vdagentd.enable = true;
		gvfs.enable = true;
		tumbler.enable = true;

		blueman.enable = true;

# 		gnome.gnome-keyring.enable = true;

		upower.enable = true;
		power-profiles-daemon.enable = true;

		wivrn = {
		  enable =  true;
			package = (pkgs.wivrn.override {cudaSupport = true;});
		};

		desktopManager.plasma6.enable = true;
		displayManager.sddm = {
		  enable = true;
		  wayland.enable = true;
		};

		fprintd = {
			enable = true;
		};
  };
}
