{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    font-awesome
#     jetbrains-mono
		noto-fonts-cjk-sans
		noto-fonts-cjk-serif

    nerd-fonts.jetbrains-mono
  ];
}
