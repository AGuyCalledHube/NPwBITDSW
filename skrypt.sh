#!/bin/bash

case "$1" in
    --date|-d)
		#!/bin/bash
		formatted_date=$(date "+%Y-%m-%d")
		# Print the formatted date
		echo "The date is: $formatted_date"
		read -p "Press Enter to exit..."
        ;;
	--logs|-l)
        if [[ ! $2 =~ ^[0-9]+$ ]]; then
            echo "Nie podano liczby plików lub podana wartość nie jest liczbą całkowitą."
            exit 1
        fi
        
        for ((i=1; i<=$2; i++)); do
            echo "Nazwa pliku: log$i.txt" > log$i.txt
            echo "Nazwa skryptu: $0" > log$i.txt
            date +"%Y-%m-%d" > log$i.txt
        done
		read -p "Press Enter to exit..."
        ;;
	--help|-h)
        echo "Dostępne opcje:"
        echo "--date: wyświetla dzisiejszą datę"
        echo "--logs [liczba]: tworzy [liczba] plików logx.txt, gdzie x to numer pliku od 1 do [liczba]"
        echo "--help: wyświetla dostępne opcje"
		read -p "Press Enter to exit..."
        ;;
	--init
		git clone https://github.com/user/repo.githttps://github.com/AGuyCalledHube/NPwBITDSW.git
		export PATH=$PATH:$(pwd)/repo
		;;
esac