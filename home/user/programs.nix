{ inputs, ... }:
{
  programs.firefox = {
    enable = true;
  };

  programs.zen-browser.enable = true;

  programs.home-manager.enable = true;
}
