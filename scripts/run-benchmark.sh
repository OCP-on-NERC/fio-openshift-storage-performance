#!/bin/sh
set -ue
cd /disk/target
echo "Running jobs in fio-jobs.yaml in " $(pwd)":"
fio --output disk-output.json --output-format=json,normal --runtime=60 /fio-jobs/fio-jobs.fio
cd /pvc/target
echo "Running jobs in fio-jobs.yaml in " $(pwd)":"
fio --output pv-output.json --output-format=json,normal --runtime=60 /fio-jobs/fio-jobs.fio
echo "Tests finished."
