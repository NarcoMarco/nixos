{ config, pkgs, ... }:

let configDir = ../../config;
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

  home.pointerCursor = 
    let 
      getFrom = url: hash: name: {
          gtk.enable = true;
          x11.enable = true;
					hyprcursor.enable = true;
          name = name;
          size = 24;
          package = 
            pkgs.runCommand "moveUp" {} ''
              mkdir -p $out/share/icons
              ln -s ${pkgs.fetchzip {
                url = url;
                hash = hash;
              }} $out/share/icons/${name}
          '';
        };
    in
      getFrom 
        "https://github.com/supermariofps/hatsune-miku-windows-linux-cursors/releases/download/1.2.6/miku-cursor-linux.tar.xz"
        "sha256-qxWhzTDzjMxK7NWzpMV9EMuF5rg9gnO8AZlc1J8CRjY="
        "miku-cursor-linux";
}
