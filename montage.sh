#!/bin/bash
montage `ls dump/*-Image.jpg|sort|tail -n 50|sort -r|tr '\n' ' '` -geometry 256x256+2+2 -tile 2 -quality 75 ./montage.jpg
