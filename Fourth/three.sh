#!bin/bash

sym="$(wc -c alice.txt | awk '{print $1}')"
words="$(wc -w alice.txt | awk '{print $1}')"
first="$(grep -m 1 -E '[Кк]оролев[а-я]' alice.txt)"
all_guest="$(grep -oE "Соня|Алиса|Шляпа|Заяц" alice.txt | sort | uniq)"
echo "Количество букв: " $sym
echo "Число слов " $words
echo "Первое упоминание Королевы: " $first
echo "Все участники чаепития: " $all_guest
