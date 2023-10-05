-- Linting this will result in no failures.
-- Change the bar reference to 'my_table' and see linting failures.

seLect * from {{ ref('bar') }}
