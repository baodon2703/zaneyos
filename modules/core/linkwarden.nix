{ pkgs, inputs, ... }: {
  # Import linkwarden service module from unstable
  imports = [
    "${inputs.nixpkgs-unstable}/nixos/modules/services/web-apps/linkwarden.nix"
  ];

  services.linkwarden = {
    enable = true;
    port = 3000;
    host = "0.0.0.0";
    package = pkgs.unstable.linkwarden;
    secretFiles.NEXTAUTH_SECRET = "/var/secrets/linkwarden/nextauth_secret";
    secretFiles.CUSTOM_OPENAI_BASE_URL = "/var/secrets/linkwarden/custom_openai_base_url";
    secretFiles.OPENAI_MODEL = "/var/secrets/linkwarden/openai_model";
    secretFiles.OPENAI_API_KEY = "/var/secrets/linkwarden/openai_api_key";
    enableRegistration = true; # Allow user registrations
  };
}

