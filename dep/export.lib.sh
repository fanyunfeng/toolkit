#!/bin/bash

exportdir=./lib

echo --$exportdir

function usage(){
  local self=`basename $1`
  echo "${self} [-d save/lib/dir] filename"
  echo "  export dynamic library into special directory."
  exit 1
}

while getopts "d:h" arg  
do  
  case $arg in  
    d)
      exportdir=${OPTARG}
      ;;
    h)  
      usage $0
      ;;
    ?)  
      ;;  
  esac  
done  

let sn=$OPTIND-1
shift $sn

program=$1

for I in `ldd $program | grep '=>' | grep 'not found' -v | cut -d " " -f 3` ; do
  x=`echo -n $I | sed -e 's/\.so.*/.so\*/g'`

  rsync -av $x $exportdir

  filename=`basename $I`

  if [ ! -e ${exportdir}/${filename} ] ; then
    echo $I $filename
    rm ${exportdir}/$filename
    cp -f $I ${exportdir}
  fi
done

