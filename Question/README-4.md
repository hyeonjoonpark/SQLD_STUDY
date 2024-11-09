# 아래의 계층형 SQL에서 리프데이터이면 1, 그렇지 않으면 0을 출력하고 싶을 때 사용하는 키워드로 알맞은 것은?

```sql
SELECT LEVEL,
       EMPNO,
       MGR,
       __________ AS 리프노드여부
FROM SCOTT.EMP
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR;
```

정답 : `CONNECT_BYISLEAF`