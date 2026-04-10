{ config, pkgs, ... }:
{
  services = {
  	dbus.enable = true;
		picom.enable = true;
		openssh.enable = true;
		spice-vdagentd.enable = true;
		gvfs.enable = true;
		tumbler.enable = true;

		blueman.enable = true;

		tailscale = {
			enable = true;
			authKeyFile = "/run/secrets/tailscale.secret";
			useRoutingFeatures = "client";
			extraSetFlags = [
				"--accept-routes"
			];
		};

		# desktopManager.gnome.enable = true;
		# gnome = {
		# 	core-apps.enable = true;
		# 	core-developer-tools.enable = true;
		# 	games.enable = true;
		# 	core-shell.enable = true;
		# };

		gnome.gnome-keyring.enable = true;

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

				# settings = {
				# 	General = {
				# 		DisplayServer = "wayland";
				# 		EnableHiDPI = true;
				# 	};
				# };

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
