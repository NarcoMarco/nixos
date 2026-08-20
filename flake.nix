{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    catppuccin.url = "github:catppuccin/nix/release-26.05";

		# zen browser community flake
		# zen-browser = {
		# 	url = "github:0xc000022070/zen-browser-flake";
		# 	inputs = {
		# 		nixpkgs.follows = "nixpkgs";
		# 		home-manager.follows = "home-manager";
		# 	};
		# };

		# mikuboot
		mikuboot = {
			url = "gitlab:evysgarden/mikuboot";
			inputs.nixpkgs.follows = "";
		};

		spicetify-nix = {
			url = "github:Gerg-L/spicetify-nix";
		};

		plasma-manager = {
			url = "github:nix-community/plasma-manager";
			inputs.nixpkgs.follows = "nixpkgs";
			inputs.home-manager.follows = "home-manager";
		};

		globalprotect-openconnect.url = "github:yuezk/GlobalProtect-openconnect";

  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, globalprotect-openconnect, hyprland, catppuccin, mikuboot, spicetify-nix, plasma-manager, ... }@inputs:
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
  in
  {

    nixosConfigurations = {
			conixodero = lib.nixosSystem {
				inherit system;
				modules = [
					./computers/conixodero/configuration.nix
					mikuboot.nixosModules.default
					catppuccin.nixosModules.catppuccin
					{
						environment.systemPackages = [
							globalprotect-openconnect.packages.${system}.default
						];
					}

					home-manager.nixosModules.home-manager {
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;
						home-manager.extraSpecialArgs = {
							inherit pkgs-unstable;
						};

						home-manager.users.marco = {
							_module.args = {
								inputs = inputs;
							};
							imports = [
								./home/user/shared/default.nix
								./home/user/conixodero/default.nix
								catppuccin.homeModules.catppuccin
								# zen-browser.homeModules.default
								spicetify-nix.homeManagerModules.default
							];
						};
					}
				];

				specialArgs = {
					inherit pkgs-unstable;
					inherit inputs;
				};
			};

			conixodesktop = lib.nixosSystem {
				inherit system;
				modules = [
					./computers/conixodesktop/configuration.nix
					mikuboot.nixosModules.default
					catppuccin.nixosModules.catppuccin

					home-manager.nixosModules.home-manager {
						home-manager.useGlobalPkgs = true;
						home-manager.useUserPackages = true;

						home-manager.sharedModules = [
							plasma-manager.homeModules.plasma-manager
						];

						home-manager.extraSpecialArgs = {
							inherit pkgs-unstable;
						};

						home-manager.users.marco = {
							_module.args = {
								inputs = inputs;
							};
							imports = [
								./home/user/shared/default.nix
								./home/user/conixodesktop/default.nix
								catppuccin.homeModules.catppuccin
								# zen-browser.homeModules.default
								spicetify-nix.homeManagerModules.default
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
  };
}
