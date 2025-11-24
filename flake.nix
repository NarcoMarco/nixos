{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    catppuccin.url = "github:catppuccin/nix/release-25.05";

  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, hyprland, catppuccin, ... }@inputs:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
  in
  {

    nixosConfigurations.conixodero = lib.nixosSystem {
      inherit system;
      modules = [
        ./system/configuration.nix

	home-manager.nixosModules.home-manager {
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;

	  home-manager.users.marco = {
	    imports = [
	      ./home/default.nix
	      catppuccin.homeModules.catppuccin
	    ];
	  };
	}
      ];

      specialArgs = {
        inherit pkgs-unstable;
	inherit inputs;
      };
    };
  };
}
