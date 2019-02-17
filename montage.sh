#!/bin/bash
montage `ls morphexx/*-Image.jpg|sort|tail -n 50|sort -r|tr '\n' ' '` -geometry 128x128+2+2 -tile 4 -quality 75 ./montage.jpg
