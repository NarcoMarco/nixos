{ config, pkgs, ... }:

{
  documentation.nixos.enable = false;

  # nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      warn-dirty = false;
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
      substituters = ["https://nix-gaming.cachix.org"];
			trusted-users = [
				"marco"
			];
    };

    # gc = {
    #   automatic = true;
    #   dates = "weekly";
    #   options = "--delete-older-than 7d";
    # };
  };
}
