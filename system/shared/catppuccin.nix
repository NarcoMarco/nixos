{ pkgs, config, ... }:
{
  catppuccin = {
    accent = "lavender";
    grub = {
      enable = true;
      flavor = "mocha";
    };
  };
}
