FROM python:3.7-alpine
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY mysite /code/
COPY polls /code/
COPY static /code/
COPY db.sqlite3 /code/
COPY Dockerfile /code/
COPY manage.py /code/

CMD ["python3", "manage.py", "runserver"]
