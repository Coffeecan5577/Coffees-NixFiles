{ ... }:

{
  services.ntfy-sh = {
    enable = true;
    group = "users";
    user = "coffeecan";
    settings = {
     listen-http = ":8005";
     base-url = "https://ntfy.coffees-firelink";
    };
  };
}
