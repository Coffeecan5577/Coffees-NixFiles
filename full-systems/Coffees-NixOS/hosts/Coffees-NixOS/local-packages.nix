{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    inputs.nixmate.packages.${stdenv.hostPlatform.system}.default
    inputs.zen-browser.packages.${stdenv.hostPlatform.system}.twilight
  ];
}
