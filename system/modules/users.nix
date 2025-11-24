{ config, pkgs, ... }:

{
  users.users.marco = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "qemu"
      "kvm"
      "libvirtd"
      "networkmanager"
    ];
  };
}
