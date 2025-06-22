#!/bin/bash 

#check number is not greater than 100 or not 

NUMBER=$1

if [ $NUMBER -gt 100 ]
then 
   echo "$NUMBER is greater than 100"
else
   echo "$NUMBER is not greater than 100"
fi