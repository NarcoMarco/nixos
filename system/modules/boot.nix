{ config, pkgs, lib, ... }:

{
  boot = {
    kernelParams = ["nohibernate" "ipv6.disable=1"];
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
      timeout = 300;
    };
  };
}
