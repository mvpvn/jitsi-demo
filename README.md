# jitsi-demo

Changelogs

/etc/prosody/conf.avail/[your-hostname].cfg.lua

authentication = "internal_hashed"

/etc/jitsi/meet/[your-hostname]-config.js

/etc/jitsi/jicofo/jicofo.conf

  authentication: {
    enabled: true
    type: XMPP
    login-url: "[your-hostname]"
 }

sudo prosodyctl register [username] [your-hostname] [password]

systemctl restart prosody
systemctl restart jicofo
systemctl restart jitsi-videobridge2