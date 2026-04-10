{ ... }:

{
  imports = [
		./catppuccin.nix
		./config.nix
		./git.nix
		./gtk.nix
		./kitty.nix
		./neovim.nix
		./rofi.nix
		./services.nix
		./shell.nix
		./spicetify.nix
		./vesktop.nix
  ];

  home.username = "marco";
  home.homeDirectory = "/home/marco";
  home.stateVersion = "25.11";
}
