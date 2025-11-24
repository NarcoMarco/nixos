{ inputs, ... }:
{
  programs.firefox = {
    enable = true;
  };

  programs.home-manager.enable = true;
}
