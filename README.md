# OWASP Tester

Docker compose based OWASP mod_security test setup.

Based off my [iptables-tester](https://github.com/markeganfuller/iptables-tester)

## Requirements

* docker-compose
* tmux

## Usage

```no-highlight
docker compose build  # First time only
./owasp-tester
```

This will open a tmux window with 3 panes:

* Pane 0: Output of docker compose
* Pane 1: Tail of apache logs
* Pane 2: Shell in container
