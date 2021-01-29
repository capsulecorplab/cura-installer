#!/usr/bin/env bash

# Cura
if [ ! ~/Ultimaker_Cura-4.8.0.AppImage ]; then
    curl -L "https://storage.googleapis.com/software.ultimaker.com/cura/Ultimaker_Cura-4.8.0.AppImage" -o ~/Ultimaker_Cura-4.8.0.AppImage
fi
