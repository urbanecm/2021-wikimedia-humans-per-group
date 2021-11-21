#!/bin/bash

source conda-activate-stacked 2021-04-07T23.21.00_urbanecm

cd '/home/urbanecm/Documents/steward/2021-wikimedia-humans-per-group'
rm -f data/*.json
jupyter nbconvert --to html --execute humans_by_group.ipynb
