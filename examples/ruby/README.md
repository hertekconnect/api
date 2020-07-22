# Ruby examples

These ruby examples show how you can interact with the Hertek Connect API

# Usage

```
$ export CONNECT_API_USERNAME=john.doe@example.com
$ export CONNECT_API_PASSWORD=secret
$ ruby authentication.rb

{"token":"7cf40facb388825725f1b5cb","validUntil":"2020-07-22T12:48:37.663172Z"}

$ export CONNECT_API_TOKEN=7cf40facb388825725f1b5cb
$ ruby installations.rb

[
    { // Installation data },
]
