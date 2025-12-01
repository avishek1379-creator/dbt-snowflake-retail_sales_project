{% snapshot customers_snapshot %}
  {{
      config(
        target_schema='DW',
        unique_key='customer_id',
        strategy='check',
        check_cols=['customer_name', 'email', 'country']
      )
  }}

  SELECT * FROM {{ ref('stg_customers') }}

{% endsnapshot %}
