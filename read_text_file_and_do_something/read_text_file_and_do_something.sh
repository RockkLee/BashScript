
# ex:
# >> sh read_text_file_and_do_something find_text_from_this_file.txt

# 讀取command的第一個arg
filename=$1

input="$filename"
while IFS= read -r line
do
  echo "$line"
  grep -rin "$line" | grep ".java"
  echo ""
done < "$input"
