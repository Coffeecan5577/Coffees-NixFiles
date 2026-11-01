{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    inputs.zen-browser.packages.${stdenv.hostPlatform.system}.twilight
    inputs.claude-desktop-nix.packages.x86_64-linux.default
  ];
}
