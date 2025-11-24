{ config, pkgs, ...}:

{
  programs = {
    zsh = {
      enable = true;

      autosuggestion.enable = true;

      initContent = ''
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
	source ~/.p10k.zsh
	clear
	#fastfetch
	/home/marco/git-repos/mine/nixos/home/config/fastfetch/random.sh | fastfetch --file-raw -
	
	#wal -i /ai.jpg -q
	cat ~/.cache/wal/sequences
	'';

      shellAliases = {
        image="kitty icat";
      };

      oh-my-zsh = {
        enable = true;
	plugins = [
	  "git"
	  "history"
	  "wd"
	];
      };

      sessionVariables = {
        NH_FLAKE = "/home/marco/git-repos/mine/nixos";
      };

    };
  };
}
