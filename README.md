# 🌍 Wayland Crow Translator

Небольшой написанный на коленке скрипт для перевода выделенного текста, содержимого буфера обмена или замены выделенного текста с использованием `crow-translate`.
Личо я создал для себя, ну и потом почему бы и не выложить. Не видел ничего то подобного. Простой и удобный, чё тут ещё разглагольствовать.
Полезен для wayland тайлингговых мендежеров, лично я сижу на Sway и там же использую. На Hyprland тоже наверное будет работать## Возможности

- Перевод выделенного текста
- Перевод текста из буфера обмена
- Замена выделенного текста на его перевод
- Копирование переведённого текста
- Системные уведомления о результатах
- Поддержка русского ↔️ английского (легко настроить на другие языки)

---

## Команды

### Основной файл: `wayland-crow-translater.sh`

| Команда | Описание |
|---------|---------|
| `wayland-crow-translater.sh` | Переводит выделенный текст |
| `wayland-crow-translater.sh -y` | Переводит текст из буфера обмена |
| `wayland-crow-translater.sh -c` | Переводит выделенный текст и копирует результат |
| `wayland-crow-translater.sh -r` | Переводит выделенный текст и заменяет его |
| `wayland-crow-translater.sh -y -c` | Переводит из буфера обмена и копирует |
| `wayland-crow-translater.sh -r -c` | Переводит и заменяет, потом копирует |

>  Для перевода текста из Vim/Neovim сначала скопируйте текст (команда `y`), затем используйте флаг `-y` для перевода из буфера обмена.

---

## Установка и требования

Для работы скрипта убедитесь, что установлены следующие пакеты:

- **crow-translate** — консольный движок перевода
- **wl-clipboard** — утилиты для работы с буфером обмена Wayland (`wl-copy`, `wl-paste`)
- **wtype** — эмулятор нажатий клавиш (требуется для функции замены текста `-r`)
- **libnotify** — отправка системных уведомлений (`notify-send`)

### Установка зависимостей

```bash
# Для Arch/Manjaro
sudo pacman -S crow-translate wl-clipboard wtype libnotify

# Для Debian/Ubuntu
sudo apt install crow-translate wl-clipboard wtype libnotify-bin

# Для Fedora
sudo dnf install crow-translate wl-clipboard wtype libnotify
```
### Установка скрипта
(здесь пример для установки его в домашнюю директорию)
1. Скачивайте через `git clone https://github.com/eliseypng/wayland-crow-translator.git` или просто скачайте его (ну емё это один файл)
2. Делаете испольняемым `chmod +x ~/.wayland-crow-translator/wayland-crow-translator.sh`
3. Ну и добавляете в конфиг вашего окружения/тайл менеджера хз

### Конфигурация Sway 

Добавьте следующие строки в ваш конфигурационный файл Sway (обычно ~/.config/sway/config):
```bash
# Основные команды перевода
bindsym --to-code $mod+t exec ~/wayland-crow-translator/wayland-translater-crow.sh
bindsym --to-code $mod+Shift+t exec "~/wayland-crow-translator/wayland-translater-crow.sh -y"
bindsym --to-code $mod+Control+t exec "~/wayland-crow-translator/wayland-translater-crow.sh -c"
bindsym --to-code $mod+Shift+Control+t exec "~/wayland-crow-translator/wayland-translater-crow.sh -c -y"

# Команды замены текста
bindsym --to-code $mod+Alt+t exec "~/superttranslator/wayland-translater-crow.sh -r"
bindsym --to-code $mod+Shift+Alt+t exec "~/superttranslator/wayland-translater-crow.sh -r -y"
```
