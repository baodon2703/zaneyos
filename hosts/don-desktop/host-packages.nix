{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    nodejs
    sunshine
  ];
}
