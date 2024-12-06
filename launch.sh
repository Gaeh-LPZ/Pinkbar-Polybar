#!/usr/bin/env sh
# Terminar instancias previas de la Polybar
killall -q polybar

# Esperar hasta que todos los procesos de Polybar hayan sido terminados
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Iniciar Polybar
polybar example &
