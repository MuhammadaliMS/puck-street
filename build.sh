#!/bin/sh
# Wrap game.html (artifact body) into a standalone index.html
cd "$(dirname "$0")"
FAV="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 32 32'%3E%3Crect width='32' height='32' rx='8' fill='%23cfe6f1'/%3E%3Cpath d='M6 25L21 6' stroke='%23d9a566' stroke-width='3' stroke-linecap='round'/%3E%3Cpath d='M5 26h8' stroke='%231d1a17' stroke-width='3' stroke-linecap='round'/%3E%3Ccircle cx='22' cy='22' r='5' fill='%23f58a2a' stroke='%231d1a17' stroke-width='1.6'/%3E%3C/svg%3E"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="description" content="A clay 3D 2v2 street ball hockey game in the browser: stickhandle, pass and slapshot on a Toronto suburb street, a Montreal winter lane and a Helsinki ice courtyard, each with its own rule twist.">\n'
  printf '<meta property="og:title" content="Puck Street">\n<meta property="og:description" content="2v2 street ball hockey in clay. Two small nets, no goalies, first to 7.">\n'
  printf '<meta name="theme-color" content="#cfe6f1">\n<link rel="icon" href="%s">\n' "$FAV"
  cat game.html
  printf '\n</html>\n'
} > index.html
