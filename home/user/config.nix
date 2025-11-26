{ config, ... }:

let configDir = ../config;
in
{
  home.file = {
    ".config/nvim/lua" = { 
	  source = "${configDir}/nvim/lua";
	};

    ".config/nvim/lsp" = { 
	  source = "${configDir}/nvim/lsp";
	};

    ".config/wallpapers".source = "${configDir}/wallpapers/";
    ".config/waypaper".source = "${configDir}/waypaper/";
    # ".config/btop".source = "${configDir}/btop";
  };
}
