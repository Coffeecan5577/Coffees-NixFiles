{
  fileSystems."/mnt/Nix-Storage" = {
  device = "/dev/sda";   # Replace with your actual device
  fsType = "btrfs";       # Change according to your filesystem type
 
  # Define which users can do what with the mounted drive:
  options = [ "coffeecan" "rw" ]; 
  };
 
}
