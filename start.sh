#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"

if ! command -v python3 >/dev/null 2>&1; then
  echo "Ошибка: python3 не найден. Установи Python 3 и запусти снова." >&2
  exit 1
fi

echo "Запускаю сайт..."
echo "Открой в браузере: http://localhost:${PORT}"
echo "Для остановки нажми Ctrl+C"

python3 -m http.server "${PORT}"
