{ inputs, ... }:
{
  programs.hyprpanel = {
    enable = true;

    settings = {
      layout = {
        bar.layouts = {
	  "0" = {
	    left = [
	      "dashboard"
	      "workspaces"
	      "windowtitle"
	      "cpu"
	      "cputemp"
	    ];
	    middle = [
	      "media"
	    ];
	    right = [
	      "volume"
	      "network"
	      "bluetooth"
	      "battery"
	      "systray"
	      "clock"
	      "notifications"
	    ];
	  };
	};
      };

      wallpaper = {
        image = "/home/marco/.cache/current_wallpaper.png";
	pywal = false;
	enable = false;
      };

      bar = {
        launcher.autoDetectIcon = false;

	customModules = { 
	  updates.pollingInterval = 1440000;
	  weather.unit = "metric";
	};

	autoHide = "never";

        workspaces = {
	  show_icons = false;
	  show_numbered = true;
	  workspaceMask = false;
	  showWsIcons = false;
	  showApplicationIcons = false;
	  applicationIconOncePerWorkspace = true;
	  workspaces = 5;
	  showAllActive = false;
	  numbered_active_indicator = "underline";
	};

	clock.format = "%a %b %d  %H:%M";

      };

      menus.clock = {
        time = {
	  military = true;
	  hideSeconds = false;
	};
	weather = {
	  unit = "metric";
	  location = "Canberra";
	  key = "7f45b953e43747cd92632208250901";
	};

      };

      theme = {
	bar = {
          transparent = true;
	  menus.monochrome = false;
	  buttons = {
	    monochrome = false;
	    style = "default";
	    enableBorders = false;
	    workspaces.smartHighlight = false;
	    background_opacity = 0;
	    background_hover_opacity = 60;
	  };

	};

        font = {
          name = "JetBrainsMono Nerd Font";
          label = "JetBrainsMono Nerd Font Mono";
          style = "normal";
          size = "1rem";
        };

        matugen.enable = true;

        matugen_settings = {
          mode = "dark";
          sceme_type = "tonal-spot";
          variation = "standard_1";
          contrast = 0;
        };
      };
    };
  };
}
