#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
GRAY='\033[0;37m'
CYAN='\033[0;36m'

printf "\n${GREEN}Updating ATMC.App.SealerInspection...${GRAY}"
cd ATMC.App.SealerInspection/
./push.sh &

printf "\n${GREEN}Updating ATMC.App.RailInspection...${GRAY}"
cd ../ATMC.App.RailInspection/
./push.sh &

printf "\n${GREEN}Updating ATMC.App.YaskawaFDS...${GRAY}"
cd ../ATMC.App.YaskawaFDS/
./push.sh &

printf "\n${GREEN}Updating ATMC.App.FixedCamSealerInspection...${GRAY}"
cd ../ATMC.App.FixedCamSealerInspection/
./push.sh &

printf "\n${GREEN}Updating ATMC.App.RoofSealerInspection...${GRAY}"
cd ../ATMC.App.RoofSealerInspection/
./push.sh &

printf "\n${GREEN}Updating ATMC.App.Multiview3DAlign...${GRAY}"
cd ../ATMC.App.Multiview3DAlign/
./push.sh &

read -p "Please wait ultil all processes are completed..."

exit

