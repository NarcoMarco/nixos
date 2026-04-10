{ config, pkgs, inputs, ... }:
{
	programs.spicetify = 
	  let
		  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
		in
		{
		  enable = true;
			
			enabledExtensions = with spicePkgs.extensions; [
				shuffle
				songStats
				volumePercentage
				queueTime
				spicyLyrics

				
				({
						# The source of the extension
						# make sure you're using the correct branch
						# It could also be a sub-directory of the repo
						src = pkgs.fetchFromGitHub {
							owner = "ohitstom";
							repo = "spicetify-extensions";
							rev = "0dc291fc26410499f1ee273a2cd3744148e62b7c";
							hash = "sha256-GVlfji0n9LX1xi7l4gG6Tboo4o554auYplM8CW08tFQ=";
						} + /quickQueue;
						# The actual file name of the extension usually ends with .js

						name = "quickQueue.js";
				})
			];

			enabledCustomApps = with spicePkgs.apps; [
			  marketplace
			];

			theme = spicePkgs.themes.catppuccin;
			colorScheme = "mocha";
		};
}
