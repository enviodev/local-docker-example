#!/bin/sh

export TUI_OFF=${TUI_OFF} # should use TUI (set to true by default in docker compose)

# the migrate step below is only required if hasura is being used
echo "running indexer migrations..."
pnpm envio local db-migrate up

echo "starting indexer..."
pnpm envio start
