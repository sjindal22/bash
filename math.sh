#!/bin/bash

NUMBER=5

echo "====Using let===="
let RESULT=NUMBER+5
echo "Result using let is: $RESULT"

echo "====Using (( ))===="
RESULT=$(( NUMBER + 5 ))
echo "Result using (( ))  is: $RESULT"

echo "====Using expr===="
RESULT=$(expr $NUMBER + 5)
echo "Result using ``  is: $RESULT"

echo "====Using []===="
RESULT=$[ NUMBER + 5 ]
echo "Result using [] is: $RESULT"

echo "====Using bc===="
RESULT=`echo "$NUMBER * 1.9" | bc`
echo "Result using bc is: $RESULT"
