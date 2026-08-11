{ config, pkgs, pkgs-unstable, ... }:
let
  initFile = builtins.readFile ../../config/nvim/init.lua;
in
{
  programs.neovim = {
    enable = true;

    defaultEditor = true;
		# package = pkgs-unstable.neovim-unwrapped;

    extraPackages = with pkgs; [
	  # Runtime dependencies
	  fzf
	  ripgrep
	  gnumake
	  gcc
	  luajit
		# pkgs-unstable.tree-sitter

	  # Language Servers
	  lua-language-server
	  nil
	  nixd
	  pyright
	  ltex-ls
	  yaml-language-server
	  bash-language-server
	  jdt-language-server
		java-language-server
		kdePackages.qtdeclarative

		nodejs
		typescript
		typescript-language-server

	  # Formatters
	  nixpkgs-fmt
	  stylua
	];

    extraLuaPackages = luaPkgs: with luaPkgs; [ magick ];

	  # extraLuaConfig = initFile;
		initLua = initFile;

  };

	xdg.desktopEntries.nvim-terminal = {
		name = "Neovim";
		exec = "kitty -e nvim %F"; # replace kitty with your terminal
		terminal = false;
		mimeType = [
			"text/plain"
			"text/x-java"
		];
	};

	xdg.mimeApps.defaultApplications = {
		"text/plain" = [ "nvim-terminal.desktop" ];
		"text/x-java" = [ "nvim-terminal.desktop" ];
	};

	home.packages = [
	  pkgs.kdePackages.qtdeclarative
		pkgs.tree-sitter
	];

}
