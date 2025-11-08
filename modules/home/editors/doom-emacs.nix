{ pkgs, ... }:

let
  doom-icon = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/jeetelongname/doom-banners/master/splashes/doom/doom-emacs-color2.svg";
    sha256 = "1xxi5ra1z8njsqaqiaq96wyn1sc967l42kvjzbji1zrjj8za6bgq";
  };
in
{
  home.packages = with pkgs; [
    emacs-pgtk
    git
    ripgrep
    # LSP servers
    clang-tools # C/C++ LSP
    nil # Nix LSP
  ];

  # Add the bin directory to the PATH
  home.sessionPath = [
    "$XDG_CONFIG_HOME/.emacs.d/bin"
  ];

  # Create a desktop file
  xdg.desktopEntries.doom-emacs = {
    name = "Doom Emacs";
    comment = "A configuration framework for GNU Emacs";
    exec = "emacs";
    icon = doom-icon;
    terminal = false;
    type = "Application";
    categories = [ "Development" "TextEditor" ];
  };
}
