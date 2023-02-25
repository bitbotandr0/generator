#!/bin/bash

# proyecto generador de contraseñas random para varios sitios + encriptacion de contrasena version 1.0

#primer mensaje por pantalla

echo "Bienvendido a genPASS , un generador de contraseñas seguras y aleatorias para tus sitios web más visitados" | awk '{for(i=1; i<=NF;i++) {printf "%s ", $i; system("sleep 0.4")} }'

sleep 1.5

clear

awk 'BEGIN{print "®Phantom X"}'

#variable
opc=0

# creamos un menu
while [[ $opc -le 5 ]]; do

echo -e "\e[36m1) GENERAR UN PASSWORD PARA FACEBOOK]\e[0m"
echo -e "\e[32m2) GENERAR UN PASSWORD PARA GOOGLE]\e[0m"
echo -e "\e[33m3) GENERAR UN PASSWORD PARA UN DISPOSITIVO]\e[0m"
echo -e "\e[35m4) GENERAR PASSWORD PARA TIKTOK]\e[0m"
echo -e "\e[31m5) SALIR]\e[0m"

read -p "digite su opcion , numero : "    opc

case $opc in

             1) clear

              echo "......generando contraseña"

              { echo "password para facebook generada el" ; date ; pwgen -s 40 1 ; } >> contras.txt


              echo "su contrasena para facebook se encuentra en el fichero contras.txt"

              ;;

             2) clear

              echo "......generando contrasena"

              { echo "password para google account generada el" ; date ; pwgen -s 35 1 ; } >> contras.txt


               echo "su contrasena para google tambien se encuentra en el fichero contras.txt"

               ;;


              3) clear

               echo "......generando contrasena"

               sleep 1

                { echo "password para dispositivo desconocido generada el" ; date ; pwgen -s 30 1 ; } >> contras.txt

                 echo " su contrasena tambien se guardo en el fichero contras.txt"

               ;;




             4) clear

               echo "....generando contraseña"

               sleep 1

               { echo "password para tiktok generada el" ; date ; pwgen -s 25 1 ; } >> contras.txt

                echo "su contraseña se guardo en el fichero contras.txt"

               ;;


             5) clear

                exit 1

               ;;

esac

done

