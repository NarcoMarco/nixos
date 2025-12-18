{ config, pkgs, ...}:
{
  programs.ashell = {
	  enable = true;
		settings = {
		  modules = {
			  left = [
					[
					  "AppLauncher"
				    "Workspaces"
					]
					"WindowTitle"
				];
				center = [
				  "MediaPlayer"
				];
				right = [
					"SystemInfo"
					[
					  "KeyboardLayout"
					  "Tray"
					  "Privacy"
					  "Settings"
				    "Clock"
					]
				];
			};

			app_launcher_cmd = "rofi -show drun";

			window_title = {
			  mode = "Title";
				truncate_title_after_length = 35;
			};

			media_player = {
				max_title_length = 75;
			};

		  enable_esc_key = true;

			keyboard_layout.labels = {
			  "English (US)" = "EN";
				"German" = "DE";
			};

			settings = {
      	lock_cmd = "hyprlock";
      	audio_sinks_more_cmd = "pavucontrol -t 3";
      	audio_sources_more_cmd = "pavucontrol -t 4";
			};

			appearance = {
			  font_name = "JetBrainsMono Nerd Font";
			  scale_factor = 1.15;

				success_color = "#b4befe";
				text_color = "#b4befe";

				workspace_colors = [
					"#b4befe"
				];
			};

			appearance.primary_color = {
			  base = "#b4befe";
				text = "#b4befe";
			};

			appearance.danger_color = {
			  base = "#b4befe";
				weak = "#b4befe";
			};
			
			appearance.background_color = {
			  base = "#1e1e2e";
				weak = "#313244";
				strong = "#45475a";
			};

			appearance.secondary_color = {
			  base = "#11111b";
				strong = "#1b1b25";
			};
		};
	};
}
