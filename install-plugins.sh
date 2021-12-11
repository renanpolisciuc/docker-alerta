#!/bin/bash

while read plugin version; do
  echo "Installing '${plugin}' (${version})"
  /venv/bin/pip install git+https://github.com/renanpolisciuc/alerta-contrib.git@${version}#subdirectory=${plugin}
done </app/plugins.txt
