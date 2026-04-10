{config, pkgs, ...}:
{
	programs.waybar = {
	  enable = true;

		style = builtins.readFile ../../config/waybar/style.css;

		settings.main = {
			# "layer": "top", // Waybar at top layer
			# "position": "bottom", // Waybar position (top|bottom|left|right)
			height = 40; # Waybar height (to be removed for auto height)
			# "width": 1280, // Waybar width
			spacing = 5; # Gaps between modules (4px)
			# Choose the order of the modules
			modules-left = [
					"custom/os_button"
					"hyprland/workspaces"
					"hyprland/window"
					"group/system"
			];
			modules-center = [
				"mpris"
			];
			modules-right = [
				"tray"
				"group/status"
				"clock"
				"custom/notification"
			];

			# Module Config

			# Left Modules
			"custom/os_button" = {
				format = "";
				on-click = "rofi -show drun";
			};
			"hyprland/workspaces" = {
				format = "{name}";
				show-special = true;
				sort-by = "id";
			};
			"hyprland/window" = {
				format = "{initialTitle}";
				icon = true;
				icon-size = 24;
				rewrite = {
					"" = "Desktop";
					"kitty" = "Kitty";
					"vesktop" = "Vesktop";
				};
			};
			
			"group/system" = {
				orientation = "horizontal";
				modules = [
					"cpu"
					"temperature"
					"memory"
					"disk#root"
					"disk#home"
				];
			};

			"cpu" = {
				format = " {usage}%";
				format-alt = " {avg_frequency}GHz";
			};

			"temperature" = {
				format = "󰔏{temperatureC}°C";
			};

			"memory" = {
				format = " {percentage}%";
				format-alt = " {used}GiB";
			};

			"disk#root" = {
				format = " {percentage_used}%";
				format-alt = " {specific_used:0.2f}GB/{specific_total:0.2f}GB";
				unit = "GB";
				path = "/";
			};

			"disk#home" = {
				format = "󱂵 {percentage_used}%";
				format-alt = "󱂵 {specific_used:0.2f}GB/{specific_total:0.2f}GB";
				unit = "GB";
				path = "/home";
			};

			# Centre Modules
			"mpris" = {
				format = "{status_icon} | {artist} - {title}";
				format-none = "test";
				artist-len = 20;
				title-len = 30;
				status-icons = {
					"paused" = "󰐊";
					"playing" = "⏸";
					"stopped" = "󰝛";
				};
			};

			# Right Modules
			"tray" = {
				icon-size = 20;
				spacing = 10;
			};
			"group/status" = {
				orientation = "horizontal";
				modules = [
					"hyprland/language"
					"backlight"
					"pulseaudio"
					"battery"
					"power-profiles-daemon"
				];
			};
			"hyprland/language" = {
				format = "{}";
				format-en = "🇦🇺";
				format-de = "🇩🇪";
				on-scroll-down = "";
				on-scroll-up = "";
			};
			"backlight" = {
				format = "󰃠 {percent}%";
				on-scroll-up = "";
				on-scroll-down = "";
				tooltip = false;
			};
			"pulseaudio" = {
				format = "{icon} {volume}%";
				format-muted = "󰝟 {volume}%";
				format-icons = ["󰕿" "󰖀" "󰕾"];
				on-scroll-up = "";
				on-scroll-down = "";
				on-click = "pavucontrol -t 3";
			};
			"power-profiles-daemon" = {
				format = "{icon}";
				tooltip-format = "{profile}";
				tooltip = true;
				format-icons = {
					"default" = "";
					"performance" = "";
					"balanced" = "󰌵";
					"power-saver" = "";
				};
			};
			"battery" = {
				interval = 10;
				format = "{icon} {capacity}%";
				format-alt = "{icon} {time} {power}W";
				format-time = "{H}:{m}";
				format-icons = {
					"default" = ["󰂃" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹"];
					"charging" = ["󰂄"];
				};
				tooltip = false;
				states = {
					"warning" = 30;
					"critical" = 15;
				};
				on-scroll-down = "";
				on-scroll-up = "";
			};
			"clock" = {
				format = "{:%H:%M}";
				format-alt = "{:%a %d %b %H:%M}";
				tooltip = false;
			};
			"custom/notification" = {
				tooltip = true;
				format = "{icon}";
				format-icons = {
					"notification" = "󱅫";
					"none" = "󰂜";
					"dnd-notification" = "󰂠";
					"dnd-none" = "󰪓";
					"inhibited-notification" = "󰂛";
					"inhibited-none" = "󰪑";
					"dnd-inhibited-notification" = "󰂛";
					"dnd-inhibited-none" = "󰪑";
				};
				return-type = "json";
				exec-if = "which swaync-client";
				exec = "swaync-client -swb";
				on-click = "swaync-client -t -sw";
				on-click-right = "swaync-client -d -sw";
				escape = true;
			};
		};
	};
}
