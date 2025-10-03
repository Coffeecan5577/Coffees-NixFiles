{
  services.nfs.server.enable = true;
  services.nfs.server.exports = ''
    /media/Homelab-Drive			10.10.1.123(rw,fsid=0,no_subtree_check)
    /media/Homelab-Drive/Coffees-Homelab	10.10.1.123(rw,nohide,insecure,no_subtree_check)
  '';
}
