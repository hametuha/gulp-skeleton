#!/usr/bin/env bash

echo 'Please select 1 option:'
echo "---------------"
echo "1. Simple"
echo "---------------"
echo -n "Your Choice:"

read INPUT

if  [ "1" == $INPUT ];  then
  wget -O gulpfile.js 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/simple/gulpfile.js'
  wget -O package.json 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/simple/package.json'
  wget -O .jshintrc 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/simple/.jshintrc'
  echo "Done";
else
  echo "Abort! $INPUT doesn't exist.";
fi

