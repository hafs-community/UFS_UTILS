#!/bin/bash

#---------------------------------------------------------------------------
# Set directory names and file names for orog data.
#---------------------------------------------------------------------------

if [ ${CTAR} == 'C48' ] ; then
  OCNRES='500'
elif [ ${CTAR} == 'C96' ]; then
  OCNRES='500'
elif [ ${CTAR} == 'C192' ]; then
  OCNRES='050'
elif [ ${CTAR} == 'C384' ]; then
  OCNRES='025'
elif [ ${CTAR} == 'C768' ]; then
  OCNRES='025'
elif [ ${CTAR} == 'C1152' ]; then
  OCNRES='025'
else
  OCNRES='025'
fi

ORO_DIR="${CTAR}"
ORO_NAME="${CTAR}.mx${OCNRES}_oro_data"
