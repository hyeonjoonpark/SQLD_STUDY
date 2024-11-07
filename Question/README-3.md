# 다음 SQL 실행결과 중 다른 하나는?
\<EXAM\>
|이름|성적|
|-|-|
|홍길동|98|
|박길동|60|
|최길동|72|
|김길동|80|
|이길동|80|

1. 
```sql
SELECT 성적
FROM EXAM
ORDER BY 성적 DESC
FETCH FIRST 3 ROWS ONLY;
```
실행결과
|이름|성적|
|-|-|
|홍길동|98|
|김길동|80|
|이길동|80|

성적 순으로 정렬하여 3개의 행만 반환

---

2. 
```sql
SELECT TOP(2) WITH TIES 성적
FROM EXAM
ORDER BY 성적 DESC;
```

실행결과
|이름|성적|
|-|-|
|홍길동|98|
|김길동|80|
|이길동|80|

WITH TIES를 사용하면 같은 순위를 묶어서 출력
따라서 TOP(2)이지만 세개가 출력됨

---

3. 
```sql
SELECT 성적
FROM (SELECT 성적, RANK() OVER(ORDER BY 성적 DESC) AS RN
      FROM EXAM)
WHERE RN <= 2;
```
실행결과
|이름|성적|
|-|-|
|홍길동|98|
|김길동|80|
|이길동|80|

RANK() 는 공동순위가 있을때 동시 반환

---

4. 
```sql
SELECT 성적
FROM (SELECT 성적, ROWNUM AS RN
      FROM EXAM
      ORDER BY 성적 DESC)
WHERE RN <= 3
```
실행결과
|이름|성적|
|-|-|
|홍길동|98|
|박길동|60|
|최길동|72|

SELECT 절에 ROWNUM을 사용하면 정렬이 되지 않아 위 예시 같튼 경우 정렬이 되지 않은 상태로 입력 순서대로 3개 출력이 된다