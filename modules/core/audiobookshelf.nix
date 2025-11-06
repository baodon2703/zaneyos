{ username, ... }: {
  services.audiobookshelf = {
    enable = true;
    openFirewall = true;
    host = "0.0.0.0";
    user = "${username}";
    port = 13378;
  };
}
