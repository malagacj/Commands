#! /bin/bash

# Variables definition
env="env"
root_folder=$(dirname $(dirname $(realpath $0)))

cd $root_folder

if [ ! -d static ]; then
  mkdir static
fi

cd static


# Bootstrap 5
filename=Bootstrap5
rm -rf $filename

wget -O $filename.zip https://github.com/twbs/bootstrap/archive/v5.2.0.zip
unzip -d $filename $filename.zip; rm $filename.zip
old_filename=`ls $filename`
mv $filename/$old_filename/* $filename
rm -rf $filename/$old_filename


# Bootstrap 5
filename=Bootstrap5-examples
rm -rf $filename

wget -O $filename.zip https://github.com/twbs/bootstrap/releases/download/v5.2.0/bootstrap-5.2.0-examples.zip
unzip -d $filename $filename.zip; rm $filename.zip
old_filename=`ls $filename`
mv $filename/$old_filename/* $filename
rm -rf $filename/$old_filename

# FontAwesome
filename=fontawesome
rm -rf $filename

wget -O $filename.zip https://use.fontawesome.com/releases/v5.14.0/fontawesome-free-5.14.0-web.zip
unzip -d $filename $filename.zip; rm $filename.zip
old_filename=`ls $filename`
mv $filename/$old_filename/* $filename
rm -rf $filename/$old_filename
