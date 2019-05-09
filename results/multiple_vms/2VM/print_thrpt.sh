#!/bin/bash

i=1
ec=2

while [[ i -le $ec ]]
do
cat vm"$i"/2_vm_expt_data_18th_april/throughput_32768buffer_800conc_64B_expr_5.txt | grep "Average Throughput"
let i=i+1
done
