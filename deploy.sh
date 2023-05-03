#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

# сборка 
npm run build

# переход в каталог сборки
cd dist

# инициализация репозитория и загрузка кода в GitHub
git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/R071N/portfolio-vue.git master:gh-pages

cd -