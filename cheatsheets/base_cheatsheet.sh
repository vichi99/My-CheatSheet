
# count of finded word in file
grep -o -i word file.txt | wc -l 

# count lines in file
cat file.txt | wc -l

# kill process by port
kill $(lsof -t -i:9001)

# kill process by pod
sudo kill -9 PID

# find word in file or folder
grep -rIn magic_word ~/folder

# find directory
find . -type d -name "folder_name" 

# find file
find . -type f -name "file_name" 