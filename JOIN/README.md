# JOIN의 종류

\<TAB1\>
|COL1|COL2|KEY1|
|-|-|-|
|A|100|BB|
|B|200|CC|
|C|300|DD|
|NULL|400|EE|

\<TAB2\>
|COL1|COL2|KEY2|
|-|-|-|
|A|100|AA|
|B|200|BB|
|C|300|BB|
|NULL|400|EE|

### INNER JOIN
```sql
SELECT *
FROM TAB1 A INNERJOIN TAB2 B ON (A.KEY1 = B.KEY2)
```
INNER JOIN 이란? 값이 같은 것 끼리 연결
SQL 실행 결과 건수 : 3

|COL1|COL2|
|-|-|
|BB|BB|
|BB|BB|
|EE|EE|


### LEFT OUTER JOIN
```sql
SELECT *
FROM TAB1 A LEFT OUTER JOIN TAB2 B ON (A.KEY1 = B.KEY2)
```
LEFT OUTER JOIN 이란? 왼쪽 테이블 기준으로 없을 시 NULL로 표현
SQL 실행 결과 건수 : 5

|COL1|COL2|
|-|-|
|BB|BB|
|BB|BB|
|CC|NULL|
|DD|NULL|
|EE|EE|

### FULL OUTER JOIN
```sql
SELECT *
FROM TAB1 A FULL OUTER JOIN TAB2 B ON (A.KEY1 = B.KEY2)
```
FULL OUTER JOIN 이란? LEFT OUTER JOIN + RIGHT OUTER JOIN (중복된 값은 한번만 표현)
SQL 실행 결과 건수 : 6

|COL1|COL2|
|-|-|
|BB|BB|
|BB|BB|
|CC|NULL|
|DD|NULL|
|EE|EE|
|NULL|AA|

### CROSS JOIN
```sql
SELECT *
FROM TAB1 A CROSS JOIN TAB2 B
```
CROSS JOIN 이란? NULL 상관없이 모든 가능한 경우
SQL 실행 결과 건수 : 16

TAB1 컬럼 갯수 * TAB2 컬럼 갯수

### NATURAL JOIN
```sql
SELECT *
FROM TAB1 A NATURAL JOIN TAB2 B
```
NATURAL JOIN 이란? 컬럼의 이름이 같은 것 끼리
SQL 실행 결과 건수 : 3

NULL은 NULL과 같지 않음