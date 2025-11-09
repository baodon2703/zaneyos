{ config, pkgs, username, ... }:
let
  niriDot = "/home/${username}/zaneyos/dotfiles/niri";
  waybarDot = "/home/${username}/zaneyos/dotfiles/waybar";
in
{
	xdg.configFile."niri".source = config.lib.file.mkOutOfStoreSymlink niriDot;
	xdg.configFile."waybar".source = config.lib.file.mkOutOfStoreSymlink waybarDot;

  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
  };
}
