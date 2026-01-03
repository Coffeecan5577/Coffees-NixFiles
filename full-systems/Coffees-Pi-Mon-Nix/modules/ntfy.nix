{ ... }:

{
  services.ntfy-sh = {
    enable = true;
    # group = "coffeecan";
    # user = "coffeecan";
    settings = {
     listen-http = ":8005";
     base-url = "http://ntfy.coffees-firelink";
    };
  };
}
