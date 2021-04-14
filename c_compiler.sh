declare -l NAME=$1 || NAME=$1

src=https://raw.githubusercontent.com/4ly-a/shellscript_library/master/space_word.sh

wget -q ${src}

. ./space_word.sh

clear

gcc -c $NAME.c -o $NAME.o 

space 2

gcc main.c $NAME.o -lm -o main || gcc main.c -o main

space 2

(./main && clear) && ./main 

space 3

echo "| .. Press enter to close .. |" 

space 1

read a
		
		rm $NAME.o 
		rm main
		rm space_word.sh 

clear


