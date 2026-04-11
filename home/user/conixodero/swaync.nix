{config, pkgs, ...}:
{
	services = {
		swaync = {
			enable = true;

			style = builtins.readFile ../../config/swaync/style.css;

			settings = {
				positionX = "right";
				positionY = "top";
				layer = "overlay";
				control-center-layer = "overlay";
				control-center-width = 400;
				control-center-margin-top = 0;
				control-center-margin-bottom = 0;
				control-center-margin-left = 0;
				control-center-margin-right = 0;
				notification-window-width = 400;
				notification-icon-size = 60;
				notification-body-image-height = 180;
				notification-body-image-width = 180;
				notification-inline-replies = true;
				notification-2fa-action = true;
				notification-grouping = false;
				timeout = 5;
				timeout-low = 2;
				timeout-critical = 0;
				fit-to-screen = true;
				keyboard-shortcuts = true;
				image-visibility = "when-available";
				transition-time = 200;
				hide-on-clear = false;
				hide-on-action = true;
				widgets = [
					"title"
					"mpris"
					"notifications"
				];
				widget-config = {
					title = {
						text = "Notification Center";
						clear-all-button = true;
						button-text = "󰆴";
					};
					label = {
						max-lines = 1;
						text = "Notification Center!";
					};
					mpris = {
						image-size = 64;
						image-radius = 0;
						blacklist = [
							"playerctld"
						];
					};
				};
			};
		};
	};
}
