{ pkgs, ... }: {
  imports = [
    ./hardware.nix
    ./host-packages.nix
  ];

  # Keep niri available at system level for ly display manager to detect it
  programs.niri.package = pkgs.niri;

  # Ensure niri session is available to display manager
  services.displayManager.sessionPackages = [ pkgs.niri ];
}
