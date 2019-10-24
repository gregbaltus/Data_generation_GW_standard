#!/bin/bash

validation=1
condition=0
init=0
nbr_max=300
number=$1

echo "The number of file create by run of data_generation_selfsuffisant.py is '$nbr_max'"


while [ "$condition" -ne "$validation" ]; do
	#Si number < nbr_max
        if [ "$number" -lt "$nbr_max" ]; then
		echo " "
		echo "####################################"
		echo "# it stay '$number' file to create #"
		echo "####################################"
		echo " "
		python3 data_generation_selfsuffisant.py --nbr_file $number --nbr_initial_file $init
		condition=1

        else
		echo " "
		echo "####################################"
		echo "# It stay '$number' file to create #"
		echo "####################################"
		echo "# We creat the '$nbr_max' next #"
		echo "####################################"
		echo " "
		python3 data_generation_selfsuffisant.py --nbr_file $nbr_max --nbr_initial_file $init
		number=$(($number-$nbr_max))
		init=$(($init+$nbr_max))

        fi

done

