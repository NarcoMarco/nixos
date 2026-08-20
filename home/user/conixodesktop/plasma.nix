{ inputs, pkgs, pkgs-unstable, ... }:
{
	home.packages = with pkgs; [
		(catppuccin-kde.override { flavour = [ "mocha" ]; accents = [ "lavender" ];})
	];

	programs.plasma = {
		enable = true;
		workspace = {
			lookAndFeel = "org.magpie.exairdark.desktop";
			wallpaper = "/home/marco/git-repos/mine/nixos/home/config/wallpapers/windows-7-official-3840x2160-13944.jpg";
			colorScheme = "ExposeAirDark";
			theme = "Se7enAeroStyle";
			windowDecorations = {
				library = "org.kde.kwin.aurorae.v2";
				theme = "__aurorae__svg__exposeairdark";
			};
			iconTheme = "Windows-7";
			cursor = {
				theme = "miku-cursor-linux";
				size = 32;
			};
		};

		# Fix ~/.gtkrc-2.0
		configFile.kded5rc = {
			 "Module-gtkconfig"."autoload" = false;
		};

		panels = [
			{
				location = "bottom";
				height = 40;
				screen = "all";
				widgets = [
					{
						kickoff = {
							# icon = "nix-snowflake-white";
						};
					}
					{
						iconTasks = {
							launchers = [
								"preferred://browser"
								"applications:vesktop.desktop"
								"applications:com.github.th_ch.youtube_music.desktop"
								"applications:steam.desktop"
								"applications:systemsettings.desktop"
								"preferred://filemanager"
								"applications:kitty.desktop"
							];
						};
					}
					"org.kde.plasma.marginseparator"
					{
						systemTray.items = {
							hidden = [
								"org.kde.plasma.volume"
								"blueman"
								"org.kde.plasma.bluetooth"
								"org.kde.plasma.brightness"
								"org.kde.plasma.cameraindicator"
								"org.kde.plasma.devicenotifier"
								"org.kde.plasma.kscreen"
								"org.kde.plasma.keyboardlayout"
								"org.kde.plasma.keyboardindicator"
								"org.kde.plasma.networkmanagement"
								"org.kde.plasma.battery"
								"org.kde.plasma.clipboard"
								"org.kde.plasma.inputmethod"
								"org.kde.plasma.mediacontroller"
								"org.kde.plasma.notifications"
								"org.kde.plasma.weather"
							];
						};
					}
					"org.kde.plasma.networkmanagement"
					"org.kde.plasma.bluetooth"
					"org.kde.plasma.volume"
					"org.kde.plasma.keyboardlayout"
					"org.kde.plasma.notifications"
					{
						digitalClock = {
							time.format = "24h";
						};
					}
				];
				hiding = "none";
			}
		];
	};
}
