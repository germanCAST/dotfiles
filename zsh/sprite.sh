#!/bin/bash
# Sprite viewer para kitty (GIFs random desde ~/sprites)

SPRITES_DIR="$HOME/sprites"
W=20   # ancho en columnas
H=5   # alto en filas

# Buscar todos los GIF en la carpeta
GIFS=($(find "$SPRITES_DIR" -maxdepth 1 -type f -iname '*.gif'))

# Si no hay GIFs, salir
if [ ${#GIFS[@]} -eq 0 ]; then
  echo "No se encontraron GIFs en $SPRITES_DIR"
  exit 1
fi

# Elegir uno al azar
RAND_GIF="${GIFS[RANDOM % ${#GIFS[@]}]}"

# Mostrar el sprite en kitty
kitty +kitten icat --place=${W}x${H}@0x0 "$RAND_GIF"

# Mover el prompt hacia abajo para que no quede tapado
for ((i=0; i<H; i++)); do
  echo
done

