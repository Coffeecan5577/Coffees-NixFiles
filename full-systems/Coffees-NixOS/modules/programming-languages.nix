{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    (python314.withPackages(ps: with ps; [ pygobject3 gobject-introspection pyqt6-sip]))
    uv
    lua
    nil
    nixd
  ];
}
