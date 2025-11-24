{ config, pkgs, ... }:
{
  gtk = {
    enable = true;

    # cursorTheme = {
    #   name = "Catppuccin-Mocha-Lavender";
    #   package = pkgs.catppuccin-cursors.mochaLavender;
    # };

    font.name = "JetBrainsMono Nerd Font";
    
    theme = {
      # name = "Catppuccin-Mocha-Lavender-dark";
      # package = pkgs.catppuccin-gtk.override {
      #   size = "compact";
      #   accents = ["lavender"];
      #   variant = "mocha";
      # };
      name = "Tokyonight-Dark";
      package = pkgs.tokyonight-gtk-theme;
    };

    # iconTheme = {
    #   name = "Papirus-Dark";
    #   package = pkgs.papirus-folders;
    # };

    gtk3.extraConfig = {
	#      settings = ''
	#        gtk-application-prefer-dark-theme = 1;
	# '';
	gtk-application-prefer-dark-theme = 1;
    };

    gtk4.extraConfig = {
      settings = ''
        gtk-application-prefer-dark-theme = 1;
	'';
    };

  };

  home.sessionVariables.GTK_THEME = "Tokyonight-Dark";
}
