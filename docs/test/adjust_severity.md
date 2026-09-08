Via yml du modèle:

```yaml
models:
  - name: stg_orders
    columns:
      - name: order_id
        data_tests:
          - unique
                config:
                    severity: warn  # ou 'error'
                    store_failures: true
```

