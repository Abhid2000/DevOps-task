FROM python:3.9

WORKDIR src

COPY . /src

RUN pip install -r requirements.txt

COPY ./requirements.txt /src/requirements.txt

CMD ["uvicorn", "app.main:app", "--host","0.0.0.0","--port","8000"]
