{ pkgs, ... }: {
  services.immich = {
    enable = true;
    port = 2284;
    host = "0.0.0.0";
    openFirewall = true;
    # package = pkgs.unstable.immich;
  };

  # services.restic.backups.test = {
  #   user = "immich";
  #   repository = "~/Documents/testbk";
  #   initialize = true;
  #   paths = [
  #     "~/Documents/PKM_bk"
  #   ];
  #   # Scheduling
  #   timerConfig = {
  #     OnCalendar = "16:23";
  #     Persistent = true;
  #   };
  # };
}
