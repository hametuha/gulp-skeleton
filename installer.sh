#!/usr/bin/env bash

echo "Please select 1 option:"
echo "---------------"
echo "1. Simple"
echo "2. StoreFront Child"
echo "---------------"
echo -n "Your Choice:"

read INPUT

if  [ "1" = "$INPUT" ];  then
  wget -O gulpfile.js 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/simple/gulpfile.js'
  wget -O package.json 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/simple/package.json'
  wget -O .jshintrc 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/simple/.jshintrc'
  echo "Done";
elif  [ "2" = "$INPUT" ];  then
  wget -O gulpfile.js 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/storefront-child/gulpfile.js'
  wget -O package.json 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/storefront-child/package.json'
  wget -O .jshintrc 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/simple/.jshintrc'
  mkdir -p src/scss
  wget -O src/scss/style.scss 'https://raw.githubusercontent.com/hametuha/gulp-skeleton/master/storefront-child/src/scss/style.scss'
  echo "Done";  
else
  echo "Abort! $INPUT doesn't exist.";
fi

