
# ex:
# >> sh read_text_file_and_do_something.sh find_text_from_this_file.txt

# 讀取command的第一個arg
filename=$1
input="$filename"

# The -r option in the bash code you provided is used to read the input line from the file in raw mode.
# This means that the backslash (\) character will not be interpreted as an escape character
while IFS= read -r line
do
  echo "$line"
  grep -rin "$line" | grep ".java"
  echo ""
done < "$input"
