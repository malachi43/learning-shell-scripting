#!/bin/bash

#use variables declared in this file in the current script at runtime.
source working_with_colours/colour.sh

#to get the number of cpu cores in a machine

check_cores () {

#this counts the number of times the name text appears in the field, this gives us the number of cores because each CPU has a name value e.g  model name : Intel(R) Core(TM) i5-3437U CPU @ 1.90GHz
CPU_CORES=$( grep -c name /proc/cpuinfo )
echo $CPU_CORES

}

#store the function return value in the core variable.
cores=$(check_cores)
echo -e "${GREEN}This machine has ${RESET}${YELLOW}$cores${RESET} ${GREEN}cores.${RESET}"