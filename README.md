# dbt-docker-container

DBT docker container with Python FastAPI

## Requirements

- MacOS
- Docker Desktop (https://www.docker.com/products/docker-desktop/)
- Python 3.9+ (https://www.python.org/downloads/)
- Install dbt with pip (https://docs.getdbt.com/docs/get-started/pip-install)
- Visual Studio Code (optional)

## Getting Started

### Initialize Python Environment

```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### Step by Step Development

#### Setup database in container

```
docker-compose up -d
```

#### Install dbt-core & database adapter (postgres)

```
pip install dbt-postgres
```

#### Initialize dbt project

```
dbt init
```

#### Install FastAPI

- https://fastapi.tiangolo.com/tutorial/

```
pip install fastapi
pip install "uvicorn[standard]"
```
