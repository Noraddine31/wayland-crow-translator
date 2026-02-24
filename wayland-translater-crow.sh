#!/bin/bash
# Пробуем взять из primary (выделение), если пусто — из clipboard (Ctrl+C)
while getopts "ycr" opt; do
    case $opt in
        y) USE_CLIPBOARD=true ;;
        c) COPY_RESULT=true ;;
        r) REPLACE_TEXT=true ;; # Новый флаг для замены
    esac
done
if [ "$USE_CLIPBOARD" = true ]; then
    TEXT=$(wl-paste)
else
    TEXT=$(wl-paste --primary)
fi
if [ -z "$TEXT" ]; then
    TEXT=$(wl-paste)
fi
if [ -n "$TEXT" ]; then
    # Считаем количество русских букв в тексте
    # [а-яА-ЯёЁ] - ищет кириллицу
    RU_COUNT=$(echo "$TEXT" | grep -o '[а-яА-ЯёЁ]' | wc -l)

    if [ "$RU_COUNT" -gt 0 ]; then
        # Если есть русские буквы, переводим на английский
        TARGET_LANG="en"
    else
        # Если русских букв нет (только латиница), переводим на русский
        TARGET_LANG="ru"
    fi
    TRANSLATION=$(crow -t $TARGET_LANG "$TEXT" --brief)
    notify-send "Перевод" "$TRANSLATION"
    if [ "$COPY_RESULT" = true ]; then
        echo -n "$TRANSLATION" | wl-copy
    fi
    # Если нужно заменить текст на месте
    if [ "$REPLACE_TEXT" = true ]; then
        # 1. Копируем перевод в основной буфер
        echo -n "$TRANSLATION" | wl-copy
        
        # 2. Даем небольшую паузу, чтобы фокус не потерялся
        sleep 0.2
        
        # 3. Эмулируем удаление выделенного и вставку
        # Убедитесь, что wtype установлен (sudo pacman -S wtype или apt install wtype)
        wtype -k BackSpace
        wtype -M ctrl -k v -m ctrl
    fi
fi
