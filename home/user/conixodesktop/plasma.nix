{ inputs, pkgs, ... }:
{
	home.packages = with pkgs; [
		(catppuccin-kde.override { flavour = [ "mocha" ]; accents = [ "lavender" ];})
	];

	programs.plasma = {
		enable = true;
		workspace = {
			colorScheme = "CatppuccinMochaLavender";
			theme = "breeze-dark";
			windowDecorations = {
				library = "org.kde.breeze";
				theme = "Breeze";
			};
			iconTheme = "kora";
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
				screen = "all";
				widgets = [
					{
						kickoff = {
							icon = "nix-snowflake-white";
						};
					}
					{
						iconTasks = {
							launchers = [
								"preferred://browser"
								"applications:vesktop.desktop"
								"applications:systemsettings.desktop"
								"preferred://filemanager"
								"applications:kitty.desktop"
							];
						};
					}
					"org.kde.plasma.marginseparator"
					{
						systemTray.items = {
							shown = [
								"org.kde.plasma.bluetooth"
								"org.kde.plasma.networkmanagement"
								"org.kde.plasma.volume"
								"org.kde.plasma.notifications"
							];
						};
					}
					{
						digitalClock = {
							time.format = "24h";
						};
					}
				];
				hiding = "dodgewindows";
			}
		];
	};
}
