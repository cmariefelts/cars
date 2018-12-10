#! /bin/bash
#cars.sh
#Caitlin Felts
CONTINUE = 1
while [ "$CONTINUE" -eq 1 ]
do
        clear
        echo "My Old Cars Inventory System"
        echo "----------------------------"
        echo "1. Enter a car (E)"
        echo "2. List the cars (L)"
        echo "3. Quit (Q)"
        read choice

        case $choice in
                "E")
                        echo "What is the year of the car?"
                        read YEAR
                        echo "What is the make of the car?"
                        read MAKE
                        echo "What is the model of the car?"
                        read MODEL
			echo "$YEAR:$MAKE:$MODEL" >> My_old_cars.txt;;
		"L")
			sort My_old_cars.txt;;
		"Q")
			echo "goodbye."
			CONTINUE = 0;;
	esac

done
