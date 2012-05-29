#!/bin/bash

VERSION=0.9
NAME=polymake-extended-formulations-${VERSION}

rm -rf ${NAME}
mkdir -p ${NAME}/apps
cp -r URI AUTHORS ChangeLog examples/ ${NAME}/
cp -r apps/polytope ${NAME}/apps/
tar czf ${NAME}.tar.gz ${NAME}
rm -rf ${NAME}
