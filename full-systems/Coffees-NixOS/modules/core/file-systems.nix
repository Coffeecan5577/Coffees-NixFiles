{
  fileSystems."/media/Nix-Storage" = {
    device = "/dev/disk/by-uuid/aad64d8f-1030-4de2-a09c-73ebabb5808f";
    fsType = "btrfs";

    # Define which users can do what with the mounted drive:
    options = [ "nofail" ];
  };

  fileSystems."/media/External-Drive" = {
    device = "/dev/disk/by-uuid/0ddfc82d-e2c8-4b98-b907-fa09bceedfd7";
    fsType = "btrfs";

    # Define which users can do what with the mounted drive:
    options = [
      "users"
      "nofail"
      "rw"
    ];
  };

  # fileSystems."/media/Second-External-Drive" = {
  # device = "dev/disk/by-uuid/13f05027-a1ef-4a20-ba01-6c6791cea1fb";
  # fsType = "btrfs";

    # options = [
      # "users"
      # "nofail"
      # "rw"
    # ];
  # };

  # fileSystems."/media/Ventoy-Drive" = {
  # device = "dev/disk/by-uuid/283C-5CD0";
  # fsType = "exfat";

  # options = [
  # "users"
  # "nofail"
  # "rw"
  # ];
  # };

  # fileSystems."/media/NTFS-Client-Drive" = {
    # device = "/dev/disk/by-uuid/98A442BDA4429E1E";
    # fsType = "ntfs-3g";

    # Define which users can do what with the mounted drive:
      # options = [
      # "users"
      # "nofail"
      # "rw"
    # ];
   # };
}
