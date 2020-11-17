# instagram-montage
Script that builds an instagram montage, using
ImageMagick and Python's instagram-scraper
package, scripted in bash.

instagram-scraper dependency is installed on
Debian systems (including Ubuntu) using:

  (sudo) pip install instagram-scraper

ImageMagick is installed using

  sudo apt install imagemagick

BUGS

  Running this script a second time with a higher maximum of downloads does
  nothing, and that's a bug in instagram-scraper.

