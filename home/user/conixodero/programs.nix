{ inputs, pkgs, ... }:
{
	xdg.portal.enable = true;

  programs.firefox = {
    enable = true;
  };

	programs.thunderbird = {
		enable = true;
		profiles.marco = {
			isDefault = true;
		};
	};

  # programs.zen-browser.enable = true;

  programs.home-manager.enable = true;
	
	programs.quickshell = {
		enable = true;
	};
}
