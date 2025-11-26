{ config, pkgs, ... }:
let
  initFile = builtins.readFile ../config/nvim/init.lua;
in
{
  programs.neovim = {
    enable = true;

    defaultEditor = true;

    extraPackages = with pkgs; [
	  # Runtime dependencies
	  fzf
	  ripgrep
	  gnumake
	  gcc
	  luajit

	  # Language Servers
	  lua-language-server
	  nil
	  nixd
	  pyright
	  ltex-ls
	  yaml-language-server
	  bash-language-server
	  jdt-language-server


	  # Formatters
	  nixpkgs-fmt
	  stylua
	];

    extraLuaPackages = luaPkgs: with luaPkgs; [ magick ];

	extraLuaConfig = initFile;
  };
}
