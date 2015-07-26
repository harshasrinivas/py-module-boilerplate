#! /bin/sh

sed -i 's/<app>/'$1'/g' cli_boilerplate/setup.py
sed -i 's/<app>/'$1'/g' cli_boilerplate/README.md
sed -i 's/<app>/'$1'/g' cli_boilerplate/README.rst
mv cli_boilerplate/app/ $1
