#!/bin/bash

# define variables
SOURCE="../data/processed_data/v1.0/archive/imgs_part_*"
PART_PREFIX="imgs_part_"

# concatenate the parts
cat $SOURCE > ../data/processed_data/v1.0/imgs/restored_archive.tar.gz

# cleanup splits after the tar.gz file creation
rm ${PART_PREFIX}*

# extract the tar.gz archive
tar -xzvf ../data/processed_data/v1.0/imgs/restored_archive.tar.gz -C ../data/processed_data/v1.0/imgs/

rm ../data/processed_data/v1.0/imgs/restored_archive.tar.gz