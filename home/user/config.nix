let configDir = ../config;
in
{
  home.file = {
    # ".config/nvim".source = "${configDir}/nvim";
    ".config/wallpapers".source = "${configDir}/wallpapers";
    # ".config/kitty".source = "${configDir}/kitty";
    #".config/hypr".source = "${configDir}/hypr";
    ".config/btop".source = "${configDir}/btop";
  };
}
