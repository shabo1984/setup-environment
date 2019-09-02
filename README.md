# setup-environment
This will setup C and Python envirnment

./setup-gcc.sh
./setup-python.sh


Example for maintaining versions for a project
$ cd project1/

$ pyenv which python
/usr/bin/python

$ pyenv install 3.6.8

$ pyenv virtualenv 3.6.8 project1

...

$ pyenv local project1

$ python -V
/home/realpython/.pyenv/versions/project1/bin/python
