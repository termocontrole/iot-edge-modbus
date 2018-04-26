#!/bin/bash

printf "Iniciando hard reset no IoT Edge (%s)\n" "$(date)"

printf "\nParando IoT Edge Runtime ...\n\n"
sudo iotedgectl stop

printf "\nLimpando containers docker ...\n\n"
docker system prune -f

printf "\nLimpando volumes docker ...\n\n"
docker volume prune -f

printf "\nIniciando IoT Edge Runtime ...\n\n"
sudo iotedgectl start

printf "\nHard reset no IoT Edge finalizado (%s)\n\n" "$(date)"

printf "####################################################################################################\n\n"
