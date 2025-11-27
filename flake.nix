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

	# zen browser community flake
	zen-browser = {
	  url = "github:0xc000022070/zen-browser-flake";
	  inputs = {
	    nixpkgs.follows = "nixpkgs";
	    home-manager.follows = "home-manager";
	  };
	};

	# mikuboot
	mikuboot = {
	  url = "gitlab:evysgarden/mikuboot";
	  inputs.nixpkgs.follows = "";
	};

  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, hyprland, catppuccin, zen-browser, mikuboot, ... }@inputs:
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
	    mikuboot.nixosModules.default

	    home-manager.nixosModules.home-manager {
	      home-manager.useGlobalPkgs = true;
	      home-manager.useUserPackages = true;

	      home-manager.users.marco = {
	        imports = [
	          ./home/default.nix
	          catppuccin.homeModules.catppuccin
	    	  zen-browser.homeModules.default
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
