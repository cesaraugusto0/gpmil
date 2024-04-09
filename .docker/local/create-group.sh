#!/usr/bin/env bash

HOME=/root/

echo 'alias art="php artisan"' >> $HOME/.bashrc
echo 'alias tinker="php artisan tinker"' >> $HOME/.bashrc
echo 'alias pat="art test"' >> $HOME/.bashrc
echo 'alias pac="pat --coverage"' >> $HOME/.bashrc
echo 'alias patf="pat --filter"' >> $HOME/.bashrc
echo 'alias pacf="pac --filter"' >> $HOME/.bashrc

if [ ! -z "$WWWGROUP" ]; then
    groupadd --force -g $WWWGROUP sail
    useradd -ms /bin/bash --no-user-group -g $WWWGROUP -u 1337 sail

    HOME=/home/sail
fi

echo 'alias art="php artisan"' >> $HOME/.bashrc
echo 'alias tinker="php artisan tinker"' >> $HOME/.bashrc
echo 'alias pat="art test"' >> $HOME/.bashrc
echo 'alias pac="pat --coverage"' >> $HOME/.bashrc
echo 'alias patf="pat --filter"' >> $HOME/.bashrc
echo 'alias pacf="pac --filter"' >> $HOME/.bashrc