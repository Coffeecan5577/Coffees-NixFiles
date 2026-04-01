{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    git
    inputs.nixmate.packages.${system}.default
  ];
}
