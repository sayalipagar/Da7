#!/bin/bash
read -p "Enter the no to find factors: " number

declare a primeFactors
counter=0
primeFactorsof=$number

for ((count=2; count<=$number; count++ ))
do
  while (($number%$count == 0))
   do
    primeFactors[((counter++))]=$count
    number=$((number/count))
done
  done
echo "Prime factors of $primeFactorsof is ${primeFactors[@]}"
