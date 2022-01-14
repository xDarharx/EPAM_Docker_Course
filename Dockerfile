FROM python:3.6-alpine
WORKDIR /app
ENV FLASK_APP app.py
ENV db_user stepan2
ENV db_pass stepanstepan
ENV db_host 192.168.10.66
RUN apk add --no-cache mariadb-dev build-base
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install flask datetime requests mariadb
ADD https://raw.githubusercontent.com/Stepan-Khramov/EPAM_Diploma_App/main/app.py ./app.py
CMD ["flask", "run", "--host=0.0.0.0"]