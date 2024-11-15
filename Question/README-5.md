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

### COALESCE(인자1, 인자2, ...)
COALESCE 함수는 처음으로 NULL이 아닌 인자를 반환

정답: 1 + 2 + 3 = `6`