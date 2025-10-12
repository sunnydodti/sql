## NULL

`NULL` indicates absense of value or that the data is missing

- null cannot be compared to itself - `NULL = NULL` is always false
- for sorting sqlite considers null to small than any other value
- `NULLS FIRST` & `NULLS LAST` - sqlite 3.30.3
    - options to handle nulls in order by clause 