{ pkgs, ... }: {
  services.immich = {
    enable = true;
    port = 2283;
    host = "0.0.0.0";
    mediaLocation = "/home/don/Documents/Photos-Immich";
    openFirewall = true;
  };

  # This adds the system-managed 'immich' user to the 'don' group
  # to grant it access to the mediaLocation in /home/don.
  users.users.immich.extraGroups = [ "don" ];
}
