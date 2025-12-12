#!/bin/bash

# تشغيل Tunnel لتوجيه كل الطلبات إلى Backend
cloudflared tunnel run my-tunnel --url http://mepboq.runasp.net
