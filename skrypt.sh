#!/bin/bash

case "$1" in
    --date)
		#!/bin/bash
		formatted_date=$(date "+%Y-%m-%d")
		# Print the formatted date
		echo "The date is: $formatted_date"
		read -p "Press Enter to exit..."
        ;;
esac