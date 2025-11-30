{ pkgs, ... }: {
  services.immich = {
    enable = true;
    port = 2284;
    host = "0.0.0.0";
    openFirewall = true;
    # package = pkgs.unstable.immich;
  };

  # Restic backup for Immich
  services.restic.backups.immich = {
    user = "root";
    repository = "/mnt/Windows/backup/immich";
    initialize = true;
    passwordFile = "/var/secrets/restic/immich-password";
    paths = [
      "/var/lib/immich"
    ];
    # Exclude temporary files and caches
    exclude = [
      "/var/lib/immich/tmp"
      "/var/lib/immich/cache"
      "*.tmp"
      "*.log"
    ];
    extraBackupArgs = [
      "--skip-if-unchanged"
    ];
    timerConfig = {
      OnCalendar = "14:24";
      Persistent = true;
    };
    # Prune old backups (keep last 7 daily, 4 weekly, 12 monthly)
    pruneOpts = [
      "--keep-daily 7"
      "--keep-weekly 4"
      "--keep-monthly 12"
    ];
  };

  # Restic backup for PKM
  services.restic.backups.pkm = {
    user = "root";
    repository = "/mnt/Windows/backup/PKM";
    initialize = true;
    passwordFile = "/var/secrets/restic/immich-password";
    paths = [
      "/home/don/Documents/PKM"
    ];
    extraBackupArgs = [
      "--skip-if-unchanged"
    ];
    timerConfig = {
      OnCalendar = "14:12";
      Persistent = true;
    };
    # Prune old backups (keep last 7 daily, 4 weekly, 12 monthly)
    pruneOpts = [
      "--keep-daily 7"
      "--keep-weekly 4"
      "--keep-monthly 12"
    ];
  };
}
