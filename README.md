# setup-environment
This will setup C and Python envirnment

./setup-gcc.sh
./setup-python.sh


Example for maintaining versions for a project
$ cd project1/

$ pyenv which python
/usr/bin/python

$ pyenv install <prefered_version>

e.g. $ pyenv install 3.6.8

$ pyenv virtualenv <prefered_version> <project_name>

e.g. $ pyenv virtualenv 3.6.8 project1

...

$ pyenv local project1

(project1) $ python -V

Python 3.6.8

(project1) $ cd .. 

//Now you're out of your working environment

$ python -V

Python 2.7

