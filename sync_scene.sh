#!/bin/bash

# Definir el nombre de la escena (cambia esto si usas otro nombre)
SCENE_PATH="Assets/Scenes/Game_Example1.unity"

# Verificar si la escena ha cambiado
git status | grep "$SCENE_PATH" > /dev/null

if [ $? -eq 0 ]; then
    echo " Guardando y subiendo cambios en la escena..."
    
    # Agregar y hacer commit de la escena
    git add "$SCENE_PATH"
    git commit -m "Actualización de escena con nuevos elementos"
    git push origin main  # Cambia 'main' si usas otra rama

    echo " Cambios subidos a GitHub."
else
    echo " No hay cambios en la escena para subir."
fi
