#!/bin/bash

printf "Reiniciando IoT Edge (%s)\n\n" "$(date)"

sudo iotedgectl restart

printf "\nIoT Edge reiniciado (%s)\n\n" "$(date)"

printf "####################################################################################################\n\n"
