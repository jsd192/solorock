#!/bin/bash
#
# Comprobando si esta instaldo el comando mpv


if [ "$(which mpv )" = "/usr/bin/mpv"   ]; then
echo -e "SE COMPRUEBA QUE EL COMANDO MPV SÍ ESTÁ INSTALDO, 
         SE PROCEDE CON LA INSTALCIÓN "

icono=$PWD/solorock.svg
ejecutable=$PWD/solo-rock.sh
cat > ~/.local/share/applications/solo-rock.desktop << EOF
[Desktop Entry]
Type=Application
Categories=GNOME;GTK;AudioVideo;Audio;Player;
Name=Solo Rock
Comment=Solo Rock
Icon=$icono
Exec=$ejecutable
MimeType=image/jpeg;image/png;image/svg;
Terminal=true
EOF

else
	echo -e "NO TIENES INSTALADO EL COMANDO MPV, PORFAVOR INSTALAR
                 EL COMANDO MPV Y LUEGO VOLVER A EJECUTAR ESTE SCRIPT"
fi

