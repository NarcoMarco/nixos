{ config, pkgs, lib, ... }:

{
  boot = {
    kernelParams = [ "quiet" "splash" "vt.global_cursor_default=0" ];
    tmp.cleanOnBoot = true;
    supportedFilesystems = ["ntfs"];
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };
      grub = {
        device = "nodev";
        efiSupport = true;
        enable = true;
        useOSProber = true;
      };
      timeout = 15;
    };
    
		plymouth = {
			enable = true;
			themePackages = [ pkgs.mikuboot ];
			theme = "mikuboot";
		};
  };
}
