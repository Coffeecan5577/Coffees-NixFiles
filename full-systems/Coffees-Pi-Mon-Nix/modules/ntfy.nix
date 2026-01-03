{ ... }:

{
  services.ntfy-sh = {
    enable = true;
    settings = {
     listen-http = ":8005";
     base-url = "http://ntfy.coffees-firelink";
    };
  };
}
