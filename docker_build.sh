#!/bin/bash

TAG=$1

conda_ism_core_path=$(find . -type f -name "alethic-ism-core*.tar.gz")
conda_ism_core_path=$(basename $conda_ism_core_path)

conda_ism_db_path=$(find . -type f -name "alethic-ism-db*.tar.gz")
conda_ism_db_path=$(basename $conda_ism_db_path)

docker build \
 --progress=plain -t $TAG \
 --build-arg CONDA_ISM_CORE_PATH=$conda_ism_core_path \
 --build-arg CONDA_ISM_DB_PATH=$conda_ism_db_path \
 --no-cache .

