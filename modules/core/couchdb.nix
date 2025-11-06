
{ pkgs, ... }: {
  services.couchdb = {
    enable = true;
    # TODO: secret
    adminPass = "admin";
    adminUser = "admin";
    # Allow to listen on all interfaces
    bindAddress = "0.0.0.0";
  };
}
