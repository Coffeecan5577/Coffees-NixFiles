{
  flake.modules.nixos.security-pki = {
    security.pki.certificates = ["/home/coffeecan/.local/share/mkcert/rootCA.pem"]; 
  };
}
