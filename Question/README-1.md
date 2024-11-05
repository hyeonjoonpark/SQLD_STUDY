### 아래와 같은 테이블 데이터가 있다. 각 SQL에 대한 결과값은?
\<TAB1\>
|N1|V1|
|-|-|
|1|A|
|2| |
|3|B|
|4|C|

\<TAB2\>
|N1|V1|
|-|-|
|1|A|
|2| |
|3|B|

---

1. 
```sql
SELECT *
FROM TAB1
WHERE V1 IN (SELECT V1 FROM TAB2);
```
|N1|V1|
|-|-|
|1|A|
|3|B|

---

2. 
```sql
SELECT *
FROM TAB1
WHERE V1 NOT IN (SELECT V1 FROM TAB2);
```
|N1|V1|
|-|-|

---

3. 
```sql
SELECT *
FROM TAB1 A
WHERE EXISTS (SELECT 'X'
              FROM TAB2 B
              WHERE A.V1 = B.V1);
```
|N1|V1|
|-|-|
|1|A|
|3|B|

---

4. 
```sql
SELECT *
FROM TAB1 A
WHERE NOT EXISTS (SELECT 'X'
              FROM TAB2 B
              WHERE A.V1 = B.V1);
```
|N1|V1|
|-|-|
|2| |
|4|C|