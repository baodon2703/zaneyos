
{ ... }: {
  services.couchdb = {
    enable = true;
    # TODO: secret
    adminPass = "admin";
    adminUser = "admin";
    bindAddress = "0.0.0.0";
  };
}
