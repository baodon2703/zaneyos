{ pkgs, ... }: {
  services.sunshine = {
    enable = true;
    autoStart = true;
    capSysAdmin = true;
    openFirewall = true;
    # Enable nvenc support
    package = pkgs.sunshine.override {
      cudaSupport = true;
    };
  };
}
