## Spire Server

Docker image for a competitive tf2 server configured for spire.

```
docker pull icewind1991/docker-spire-server
```

## Enviroment Options

| Option            | Description                    | Default          |
| ----------------- | ------------------------------ | :--------------- |
| NAME              | The name for the server        | Spire Server     |
| PASSWORD          | The connect password           | password         |
| RCON_PASSWORD     | The rcon password              | rcon             |
| WEBRCON\_PASSWORD | The webrcon password           | $RCON\_PASSWORD  |
| CONFIG            | The server config to execute   | etf2l_6v6_5cp    |
| MAP               | The map to start the server on | cp_badlands      |