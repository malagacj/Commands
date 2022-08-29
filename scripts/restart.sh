#! /bin/bash

# Variables definition
ENV="env"
root_folder=`dirname $(dirname $(realpath $0))`

if [ "$1" == "" ]
then
	env_folder=`dirname $root_folder`
	environ=""
else
	env_folder=$root_folder
	environ="$1"
fi


# Functions
removing_old () {
	rm -rf $env_folder/$ENV
}

usable_virtualenv_creation () {
	cd $env_folder
	python3 -m venv $ENV
	echo "" >> $ENV/bin/activate
	echo ". $root_folder/scripts/funcs.sh" >> $ENV/bin/activate
	echo "export_vars $root_folder" >> $ENV/bin/activate
	. $ENV/bin/activate
	pip install --upgrade pip setuptools pkg-resources
}

dependencies_installation () {
	cd $root_folder
	pip install -r requirements.txt
	if [ "$environ" != "" ]
	then
		pip install gunicorn
	fi
}

summary () {
	cat <<- _EOF_
	The virtual Environment has been created in .$ENV
	Timestamp: $(date)
	_EOF_
}


removing_old
usable_virtualenv_creation
dependencies_installation
summary
