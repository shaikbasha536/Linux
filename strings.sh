#!/bin/bash
echo "Enter filename"
read file_name
echo "Entered filename is ${file_name}"
echo "Enter pattern to search"
read pattern
echo "Entered pattern is ${pattern}
grep '${pattern} ${file_name}'
