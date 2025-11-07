{ inputs, ... }:

{
  nixpkgs.overlays = [
    (final: prev:
      let
        unstable-pkgs = import inputs.nixpkgs-unstable {
          inherit (prev) system;
          config.allowUnfree = true;
          # config.allowUnsupportedSystem = true;
        };
      in
      {
        # inherit (unstable-pkgs) ollama kdePackages sddm;
        unstable = unstable-pkgs;
      })
  ];
}
