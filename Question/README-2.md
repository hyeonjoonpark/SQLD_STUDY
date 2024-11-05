# 다음 SQL 실행결과로 가장 알맞은 것은?

\<TAB1\>
|NAME|SAL|DNAME|
|-|-|-|
|홍길동|300|아시아지부|
|박길동|400|아시아지부|
|최길동|500|아시아지부|
|김길동|450|남유럽지부|
|이길동|550|남유럽지부|

```sql
SELECT DNAME
       FIRST_VALUE(NAME) OVER(PARTITION BY DNAME ORDER BY SAL) AS VALUE1,
       LAST_VALUE(NAME) OVER(PARTITION BY DNAME ORDER BY SAL) AS VALUE2
FROM TAB1;
```
*PARTITION BY와 ORDER BY만 나와 있으면 처음부터 현재까지만 연산범위*

\<RESULT\>
|DNAME|VALUE1|VALUE2|
|-|-|-|
|아시아지부|홍길동|홍길동|
|아시아지부|홍길동|박길동|
|아시아지부|홍길동|최길동|
|남유럽지부|김길동|김길동|
|남유럽지부|김길동|이길동|