{ ... }:

{
  imports = [
    ./hardware.nix
    ./hyprland.nix
    ./networking.nix
    ./packages.nix
    ./polkit.nix
    ./programs.nix
    ./services.nix
    ./virtualisation.nix
  ];
}
