{
  # Nix Package Management and auto-optimizations
  nix.settings = {
  auto-optimize-store = true; 
  };
 
  gc = {
    automatic = "true";
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
}
