#! /bin/bash

[ -z $1 ] && { echo "usage: $0 <pos file in csv format>"; exit 1; }
gsed -i 's/Ref,/Designator,/' $1
gsed -i 's/PosX,/Mid X,/' $1
gsed -i 's/PosY,/Mid Y,/' $1
gsed -i 's/Side/Layer/' $1
gsed -i 's/Rot/Rotation/' $1
