#!/bin/bash

# define variables
DIRECTORY_x100="../data/processed_data/v1.0/imgs/x100_small"
DIRECTORY_x300="../data/processed_data/v1.0/imgs/x300_medium"
SOURCE="../data/processed_data/v1.0/imgs"

DESTINATION="../data/processed_data/v1.0/archive/"
ARCHIVE="imgs.tar.gz"
PART_PREFIX="imgs_part_"
PART_SIZE="20M"

# create tar.gz archive
# tar -zcvf $ARCHIVE $DIRECTORY_x100 $DIRECTORY_x300
tar -zcvf $ARCHIVE $SOURCE

# split the archive into smaller parts
split -b $PART_SIZE $ARCHIVE $PART_PREFIX

# add and commit the parts to Git
# git add ${PART_PREFIX}*
# git commit -m "add split imgs parts"
# git push

# cleanup the tar.gz file
rm $ARCHIVE

mv imgs_part_* $DESTINATION