{ config, pkgs, ... }:

{
  documentation.nixos.enable = false;

  # nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      warn-dirty = false;
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;

			trusted-users = [
				"marco"
			];

      substituters = [
				"https://nix-gaming.cachix.org"
				"https://cache.nixos.org/"
				"https://nix-community.cachix.org"
				"https://comfyui.cachix.org"
				"https://cache.nixos-cuda.org"
			];
			trusted-public-keys = [
				"cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
				"comfyui.cachix.org-1:33mf9VzoIjzVbp0zwj+fT51HG0y31ZTK3nzYZAX0rec="
				"nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
				"cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
			];
    };

    # gc = {
    #   automatic = true;
    #   dates = "weekly";
    #   options = "--delete-older-than 7d";
    # };
  };
}
