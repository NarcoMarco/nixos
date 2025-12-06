{ config, pkgs, ... }:

{
  services = {
  	dbus.enable = true;
	picom.enable = true;
	openssh.enable = true;
        spice-vdagentd.enable = true;

	upower.enable = true;
	power-profiles-daemon.enable = true;

	xserver = {
		enable = true;
		xkb.layout = "us";
                xkb.options = "grp:alt_shift_toggle, caps:swapescape";

	};

	displayManager = {
		sddm = {
		  enable = true;
		  package = pkgs.kdePackages.sddm;
          theme = "${import ./sddm-theme.nix { inherit pkgs; }}";
		  extraPackages = with pkgs.kdePackages; [
		    qtmultimedia
		  ];
		};
	};

	fprintd = {
	  enable = true; 
	};
  };
}
