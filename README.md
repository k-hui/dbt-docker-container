# dbt-docker-container

DBT docker container with Python FastAPI

## Requirements

- MacOS
- Docker Desktop (https://www.docker.com/products/docker-desktop/)
- Python 3.9+ (https://www.python.org/downloads/)
- Install dbt with pip (https://docs.getdbt.com/docs/get-started/pip-install)
- PyCharm community [Recommend] (https://www.jetbrains.com/pycharm/download/#section=mac)
- Visual Studio Code [optional] (https://code.visualstudio.com/)

## Getting Started

### Initialize Python Environment

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### Step by Step Development

#### Setup server and database in container

```bash
# setup containers
docker-compose up -d
# remove contaners
docker-compose down
```

#### Install dbt-core & database adapter (postgres)

```bash
pip install dbt-postgres
```

#### Initialize dbt project

```bash
# initialize dbt project
dbt init example
# clone the profiles.yml to local project
cp ~/.dbt/profiles.yml ./example
# debug
dbt debug --project-dir example --profiles-dir example
# test dbt run
dbt run --project-dir example --profiles-dir example
```

#### Install FastAPI

- https://fastapi.tiangolo.com/tutorial/

```bash
pip install fastapi
pip install "uvicorn[standard]"
```

#### Start local server in host (not docker container)

```bash
sh run-start.sh
```

#### Testing

```bash
sh run-dbt-debug.sh
sh run-dbt-run.sh
```
