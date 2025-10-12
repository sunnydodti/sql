## NULL

`NULL` indicates absense of value or that the data is missing

- null cannot be compared to itself - `NULL = NULL` is always false
- for sorting sqlite considers null to small than any other value
- `NULLS FIRST` & `NULLS LAST` - sqlite 3.30.3
    - options to handle nulls in order by clause
- distinct - will consider null as duplicates and return 1 distinct null 
- when a logical operation depends on null for the result - the answer is null
- and
    - null and true is null
    - null and false is false
- or 
    - null or true is true
    - null or false is null
- between - if any input to between is null - result is null