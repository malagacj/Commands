export_vars () {
  path="."
  if [[ $1 != "" ]];
  then
    path=$1
  fi

  cd $path
  for var in `cat .env *.env | grep -v "#"`;
  do
    export $var
    echo $var
  done
  cd -
}
