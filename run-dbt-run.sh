#/bin/bash
curl -X POST \
    -H "Content-Type: application/json" \
    -d '{"cmd":"dbt run --project-dir example --profiles-dir example"}' \
    http://localhost:8000/dbt
