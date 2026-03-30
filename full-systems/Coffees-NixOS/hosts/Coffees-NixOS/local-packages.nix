{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    inputs.nixmate.packages.${system}.default
  ];
}
