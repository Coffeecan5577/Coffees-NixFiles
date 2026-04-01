{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    inputs.nixmate.packages.${stdenv.hostPlatform.system}.default
  ];
}
