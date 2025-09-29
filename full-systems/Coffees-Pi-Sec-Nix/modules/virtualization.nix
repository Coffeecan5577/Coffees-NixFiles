{ pkgs, ... }:

{
  # Enable Podman
  virtualisation.podman = {
    enable = true;

    # Create a `docker` alias for podman, to use it as a drop-in replacement
    dockerCompat = true;
    dockerSocket.enable = true;

    # Required for containers under podman-compose to be able to talk to each other.
    defaultNetwork.settings.dns_enabled = true;
  };
  environment.variables.DBX_CONTAINER_MANAGER = "podman";
  users.extraGroups.podman.members = [ "coffeecan" ];

  environment.systemPackages = with pkgs; [
    nvidia-docker
    nerdctl

    # firecracker
    # firectl
    # flintlock

    qemu
    lima

    podman-compose
    podman-tui

    docker-compose
    # lazydocker
    # docker-credential-helpers
  ];
}
