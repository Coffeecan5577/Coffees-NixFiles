{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
     inputs.metropolis.packages.${system}.default
  ];
}
