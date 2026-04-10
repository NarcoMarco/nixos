{ config, pkgs, ... }:

{
  hardware = {
    bluetooth.enable = true;

    graphics.enable = true;
    nvidia.open = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];
}
