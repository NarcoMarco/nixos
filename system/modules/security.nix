{ pkgs, ... }:

{
  security.protectKernelImage = false;
  security.polkit.enable = true;
  security.pam.services.hyprlock = {};
  security.pam.services.hyprlock.fprintAuth = true;
}
