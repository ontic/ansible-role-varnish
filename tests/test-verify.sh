#!/bin/bash
# Copyright (c) Ontic. (http://www.ontic.com.au). All rights reserved.
# See the COPYING file bundled with this package for license details.

# Verify the installed location.
docker exec --tty ${container_id} env TERM=xterm which varnishd
# Verify the installed version.
docker exec --tty ${container_id} env TERM=xterm varnishd -V
# Verify Varnish is accessible through port 80.
docker exec --tty ${container_id} env TERM=xterm curl -sI localhost:80 | grep -q "Via: .* varnish"