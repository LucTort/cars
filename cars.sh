#! /bin/bash
#cars.sh
#Lucas Torti

echo ""
echo "Hello, and welcome to The Super Car Sorter (c) 2019 LucTort Inc."

echo "Please enter a command, or type help for a list of commands:"

inputCommand=99

while ((inputCommand != 3))
do

	if [ $((inputCommand)) -eq 99 ]
	then
	echo "Enter command: "
fi
	read inputCommand

case $inputCommand in
	1)
		echo "Please enter year:"
		read year
		echo "Please enter make:"
		read make
		echo "Please enter model: "
		read model

		carData="$year:$make:$model"
		echo "Your car data is $carData"

		echo "$carData" >> My_old_cars

		echo ""
		;;
	2)
		sort My_old_cars > My_old_cars_output
		file=$(<My_old_cars_output)
		echo "$file"
		;;
		3) 
			echo "Thank you for using The Super Car Sorter (c) 2019 LucTort Inc. We hope you have a wonderful day."
			echo ""
			;;

		*)
		echo "List of commands:"
		echo "1 - Allows user to add car to list"
		echo "2 - Lists the entered cars"
		echo "3 - Closes the program"
		echo ""
		echo "Enter command: "
		;;
esac
done



