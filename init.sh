#!/usr/bin/env bash

git clone https://github.com/clean-docker/Magento2.git $1 && cd $1;

if [ "$(uname)" == "Darwin" ]; then
  git checkout mac \
  && sed -i '' -e "s/<project_name>/$1/g" docker-compose.yml \
  && sed -i '' -e "s/<project_name>/$1/g" docker-compose-dev.yml \
  && sed -i '' -e "s/<project_name>/$1/g" docker-sync.yml
else
  sed -i '' -e "s/<project_name>/$1/g" docker-compose.yml
fi

echo '=================== Done =================='
echo ''
echo '>> You can start using the command ./start'
echo '>> Inside of your new folder '$1
echo ''
echo '=================== Done =================='
