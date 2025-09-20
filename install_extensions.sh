#!/bin/bash
# Установка дополнительных расширений для Stable Diffusion WebUI

cd "$(dirname "$0")/extensions"

# Клонируем расширения
git clone https://github.com/alexdragone/animate-diff.git
git clone https://github.com/KohakuBlueleaf/sd-webui-additional-networks.git
git clone https://github.com/deforum-art/sd-webui-deforum.git
git clone https://github.com/VideoCrafter/ModelScope-text2video.git sd-webui-modelscope-text2video

cd ..

# Фиксируем изменения в git
git add extensions/
git commit -m "Добавил расширения: AnimateDiff, LoRA, ModelScope text2video, Deforum"
git push origin main
