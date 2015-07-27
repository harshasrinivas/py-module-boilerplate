#! /bin/sh

if [ -z "$1" ]
then
	echo "Package Name required"
else
	sed -i 's/<app>/'$1'/g' cli_boilerplate/setup.py
	sed -i 's/<app>/'$1'/g' cli_boilerplate/README.md
	sed -i 's/<app>/'$1'/g' cli_boilerplate/README.rst
	if [ -z "$2" ]
	then
		:
	else
		sed -i '/author=/c\\tauthor="'$2'",' cli_boilerplate/setup.py
		if [ -z "$3" ]
		then
			:
		else
			sed -i '/author_email=/c\\tauthor_email="'$3'",' cli_boilerplate/setup.py
			if [ -z "$4" ]
			then
				:
			else
				sed -i '/url/c\\turl="'$4'",' cli_boilerplate/setup.py
			fi
		fi
	fi
fi
mv cli_boilerplate/app/ cli_boilerplate/$1
