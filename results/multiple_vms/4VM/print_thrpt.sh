#!/bin/bash

i=1
ec=4

while [[ i -le $ec ]]
do
cat vm"$i"/4_vm_expt_data_18th_april/throughput_32768buffer_400conc_64B_expr_7.txt | grep "Average Throughput"
let i=i+1
done
