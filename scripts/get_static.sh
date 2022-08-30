#! /bin/bash

# Variables definition
env="env"
root_folder=$(dirname $(dirname $(realpath $0)))
project_name=`basename $root_folder`

cd $root_folder

if [ ! -d $project_name/static ]; then
  mkdir $project_name/static
fi

cd $project_name/static


function get_static_zip {
  filename=$1
  url=$2

  rm -rf $filename
  
  wget -O $filename.zip https://github.com/twbs/bootstrap/archive/v5.2.0.zip
  unzip -d $filename $filename.zip; rm $filename.zip
  old_filename=`ls $filename`
  mv $filename/$old_filename/* $filename
  rm -rf $filename/$old_filename
}

# Bootstrap5
filename=Bootstrap5
url=https://github.com/twbs/bootstrap/archive/v5.2.0.zip
get_static_zip $filename $url

# Bootstrap5-examples
filename=Bootstrap5-examples
url=https://github.com/twbs/bootstrap/releases/download/v5.2.0/bootstrap-5.2.0-examples.zip
get_static_zip $filename $url

# FontAwesome
filename=fontawesome
url=https://use.fontawesome.com/releases/v5.14.0/fontawesome-free-5.14.0-web.zip
get_static_zip $filename $url
