# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    correct_set_up.sh                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nboisde <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/10 14:30:33 by nboisde           #+#    #+#              #
#    Updated: 2020/09/12 16:33:14 by pbrochar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# A Shell Script to Check and Print everything before testing...
echo "Welcome in nboisde shell script to check Repository Faster.\n"
echo "Starting Process"
sleep 1
find .
norminette -R CheckForbiddenSourceHeader ./ex*/*.c
sleep 2
echo "executing the compilation"
sleep 0.5
gcc -Wall -Werror -Wextra -c ./ex*/*.c
find .*/*.o
sleep 1
cat ./ex*/*.c
#find ./ex*/*.c > tmp.c
#awk '{print "#include \""$0"\""}' tmp.c >> tmp.c
#cat tmp.c | grep "^#" > main.c
#echo "\nint main(void)\n{\n}" >> main.c
#echo "main.c for tests -------------------\n"
#cat main.c
#rm tmp.c
rm ./*.o
ls -la
gcc -Wall -Werror -Wextra ./ex00/*.c
