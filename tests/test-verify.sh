#!/bin/bash

# Verify the installed version of Varnish.
docker exec --tty ${container_id} env TERM=xterm varnishd -V

# Verify Varnish is accessible through port 80.
docker exec --tty ${container_id} env TERM=xterm curl -sI localhost:80 | grep -q "Via: .* varnish"