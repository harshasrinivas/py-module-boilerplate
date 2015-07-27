#! /bin/sh

sed -i 's/<app>/'$1'/g' cli_boilerplate/setup.py
sed -i 's/<app>/'$1'/g' cli_boilerplate/README.md
sed -i 's/<app>/'$1'/g' cli_boilerplate/README.rst
cat cli_boilerplate/setup.py | sed -e "s/author='Harsha Srinivas',/author='"$2"',/" >> cli_boilerplate/setup.py
cat cli_boilerplate/setup.py | sed -e "s/author_email='95harsha95@gmail.com',/author_email='"$3"',/" >> cli_boilerplate/setup.py
sed -i '/url/c\\turl="'$4'"' cli_boilerplate/setup.py
mv cli_boilerplate/app/ cli_boilerplate/$1
