# 다음 중 아래와 같은 데이터 상황에서 SQL 수행결과로 가장 적절한 것은

\<TAB1\>
|C1|C2|C3|
|-|-|-|
|1|2|3|
| |2|3|
| | |3|

```sql
SELECT SUM(COALESCE(C1, C2, C3))
FROM TAB1
```