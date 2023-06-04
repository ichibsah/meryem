# Meryem

used (https://www.logoai.com/) to create logo

https://www.logoai.com/download?logo=748114


Python and Django

apt-get install python3-venv
virtualenv -p python3 .venv
python3 -m venv .venv
source ./.venv/bin/activate
python3 -m pip install django
python3 -m pip install pip
python3 -m pip install djlint
python3 -m pip install django-debug-toolbar
python3 -m pip install pytest-django
python3 -m pip install --upgrade django
python3 -m pip install --upgrade pip

django-admin startproject config . 
python3 manage.py startapp website 
python3 manage.py makemigrations
python3 manage.py migrate 
python3 manage.py createsuperuser
pip freeze > requirements.txt 
python3 manage.py runserver 0.0.0.0:8000


## troubleshooting
python manage.py makemigrations website --empty
python3 manage.py makemigrations
python3 manage.py migrate 





# Other tutorials
admin: 
https://developer.mozilla.org/en-US/docs/Learn/Server-side/Django/Admin_site

Python Django Dentist Website #4
(https://www.youtube.com/watch?v=cUaZ0ElJ760)

(https://dockerize.io/guides/python-django-guide)

(https://www.youtube.com/watch?v=nWBgg2QXtSA)

# start local smtp server - atviavate virtual env first
python -m smtpd -n -c DebuggingServer localhost:1025

Read other Stuffs:
django enviromental passsword
python dictionaries

# Production hosting online

pip install gunicorn
pip install django-heroku
pip install dj_database_url
pip install python-decouple
touch Procfile
