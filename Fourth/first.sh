#!bin/bash

read -p "Введите имя файла для резервного копирования: " file
read -p "Укажите время запуска скрипта: " time
read -p "Выберите способ копирования: 1.tar	2.dd	3.git " select

case $select in
	tar | 1)
		read -p "Введите название архива: " direct
		echo "tar -cf $direct.tar $file" | at $time
                ;;
	dd | 2)
		read -p "Чтобы копировать файл, введите его имя. Чтобы перенести на носитель, то введите в формате '/path/to/usb-flash': " name_copy
		echo "dd if=$file of=$name_copy bs=5M" | at $time
		;;
	git | 3)
		read -p "Введите название репозитория: " direct
		echo "git remote rm origin"
		echo "git add $file"
		echo "git remote add origin https://github.com/Arefev596/$direct.git"
		echo "git branch -M main"
		echo "git push -u origin main" | at $time
		;;
	*)
		echo "Вы ввели неправильный способ копирования! Повторите заново."
		exit 1
		;;
esac
