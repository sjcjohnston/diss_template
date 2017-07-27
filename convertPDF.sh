#!/bin/bash


path=`pwd`

figFolds=$( find -name figure )

echo $figFolds

for figDir in ${figFolds[@]}; do

#  echo $figDir

  pdfs=$( find -path "$figDir/*.pdf" )

  for pdf in ${pdfs[@]}; do

    #echo $pdf
    png=${pdf:0:${#pdf}-4}.png
    convert $pdf $png

  done
done



