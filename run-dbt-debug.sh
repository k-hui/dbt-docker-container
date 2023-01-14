curl -X POST \
    -H "Content-Type: application/json" \
    -d '{"cmd":"dbt debug --project-dir example --profiles-dir example"}' \
    http://localhost:8000/dbt
