{ pkgs, ... }: {
  services.immich = {
    enable = true;
    port = 2284;
    host = "0.0.0.0";
    openFirewall = true;
    # package = pkgs.unstable.immich;
  };
}
