{ config, pkgs, ... }:
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

	  # Formatters
	  nixpkgs-fmt
	  stylua
	];

    extraLuaPackages = luaPkgs: with luaPkgs; [ magick ];
  };
}
