FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml setup.cfg /app/
RUN pip install --upgrade pip \
    && pip install .

COPY src /app/src
COPY tests /app/tests

CMD ["pytest", "tests/"]
