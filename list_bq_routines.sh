#! /bin/bash

#### list all routines
# get list of datasets
dsets=$(bq ls --datasets=true "$project:$dataset" | awk '{print $1}' | tail +3)

# list routines
for dset in $dsets
do
    echo $dset
    bq ls --routines=true $dset
    echo ''
done
