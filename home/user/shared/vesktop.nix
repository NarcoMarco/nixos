{ config, pkgs, ... }:
{
  programs.vesktop = {
	  enable = true;
		settings = {
		  enableSplashScreen = false;
		};
	};
}
