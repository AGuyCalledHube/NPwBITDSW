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
        echo "--date, -d: wyświetla dzisiejszą datę"
        echo "--logs, -l [liczba]: tworzy [liczba] plików logx.txt, gdzie x to numer pliku od 1 do [liczba] (domyślnie 100)"
        echo "--help, -h: wyświetla dostępne opcje"
		echo "--init: klonuje repozytorim do katalogu, z którego został uruchomiony skrypt oraz ustawia ścieżkę w zmiennej środowiskowej."
		echo "--error, -e [liczba]: tworzy [liczba] plików errorx.txt w katalogu errorx, gdzie x to numer pliku od 1 do [liczba] (domyślnie 100)"
		read -p "Press Enter to exit..."
        ;;
esac