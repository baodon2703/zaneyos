{ config, pkgs, username, ... }:
let
  externalSource = "/home/${username}/zaneyos/dotfiles/niri";
in
{
	xdg.configFile."niri".source = config.lib.file.mkOutOfStoreSymlink externalSource;
}
