vcl 4.1;

backend default {
    .host = "0.0.0.0";
    .port = "8080";
}

sub vcl_recv {
    return(pass);
}
