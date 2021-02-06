# compress tar/gz 
tar -zcvf new_file.tar.gz source.sh

# decompress tar/gz to destination
tar -zxvf file.tar -C dest/

# compress bz2
bzip2 -zkv dump.sql 

# decompress bz2
bzip2 -dkv dump.sql 