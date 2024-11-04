-- TABLE
----------
-- COMM
----------
-- NULL
----------
-- 500
----------

-- 함수의 실행결과가 다른 것
SELECT NVL(COMM, 100)
SELECT NULLIF(COMM, 100)
SELECT COALESCE(COMM, 100)
SELECT ISNULL(COMM, 100)
-- NVL(인자1, 인자2) : 인자1이 NULL이면 인자2를 반환
-- NULLIF(인자1, 인자2) : 인자1과 인자2가 같으면 NULL을 반환, 같지 않으면 인자1
-- COALESCE(인자1, 인자2, ...) : 인자1부터 NULL이 아닌 인자를 찾아서 반환, NULL이면 마지막 인자를 반환
-- ISNULL(인자1, 인자2) : 인자1이 NULL이면 인자2를 반환