## Spire Server

Docker image for a competitive tf2 server configured for spire.

```
docker pull spiretf/docker-spire-server
```

## Enviroment Options

| Option            | Description                                 | Default          |
| ----------------- | ------------------------------------------- | :--------------- |
| NAME              | The name for the server                     | Spire Server     |
| PASSWORD          | The connect password                        | password         |
| RCON_PASSWORD     | The rcon password                           | rcon             |
| WEBRCON\_PASSWORD | The webrcon password                        | $RCON\_PASSWORD  |
| CONFIG_LEAGUE     | The league to execute server configs for    | etf2l            |
| CONFIG_MODE       | The game mode to execute server configs for | 6v6              |
| MAP               | The map to start the server on              | cp_badlands      |
| LOGSTF_APIKEY     | Api key for logs.tf                         |                  |
| DEMOSTF_APIKEY    | Api key for demos.tf                        |                  |
| TV_NAME           | Name of the STV specator bot                | $NAME TV         |
