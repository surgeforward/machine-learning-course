#!/bin/bash

curl -s -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

version=3.5.2

if [ "-f ~/src/.python-version" -a -s "~/src/.python-version" ]; then
    version=$(cat "~/src/python-version")
else
    echo $version > ~/src/.python-version
fi

pyenv install $version

cd src

pip install --upgrade pip

pip install numpy
pip install scipy
pip install scikit-learn
pip install matplotlib
pip install pandas
pip install quandl