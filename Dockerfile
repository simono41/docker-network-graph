FROM python:3-alpine

WORKDIR /usr/src/app

COPY Pipfile Pipfile.lock ./

RUN pip install pipenv
RUN pipenv install --system --deploy

COPY docker-network-graph.py ./

ENTRYPOINT ["python", "docker-network-graph.py"]
