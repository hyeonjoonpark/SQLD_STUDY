### DDL(Data Definition Language)

DDL 종류
|명령어|설명|
|-|-|
|CREATE|데이터베이스 객체 생성|
|ALTER|생성된 객체의 구조 변경|
|DROP|객체 삭제|
|TRUNCATE|테이블의 모든 행 삭제, 테이블 초기화|

DDL 대상
|대상|설명|
|-|-|
|TABLE|데이터를 저장하는 기본 저장 단위|
|VIEW|테이블로부터 유도한 가상 테이블|
|INDEX|검색속도 향상|

제약조건의 종류
|종류|
|------------------|
|기본키 (Primary Key)|
|고유키 (Unique Key)|
|외래키 (Foreign Key)|
|NOT NULL|
|CHECK|

ALTER : 테이블 등의 구조를 변경하는 명령어
|종료|설명|예문|
|---|---|---|
|ADD|테이블에 새로운 컬럼 추가<br>테이블에 제약조건 추가|ALTER TABLE <테이블명>  ADD (<컬럼명> <자료형> <제약조건>); <br> ALTER TABLE <테이블명> ADD (<제약조건명> <제약조건> <컬럼명>);|
|MODIFY|컬럼의 데이터 타입 변경|ALTER TABLE <테이블명> MODIFY (<컬럼명> <자료형> <제약조건>);|
|RENAME|테이블명 변경<br>컬럼명 변경|ALTER TABLE <테이블명> RENAME TO <변경 후 테이블명>;<br> ALTER TABLE <테이블명> RENAME COLUMN <변경 전 컬럼명> TO <변경 후 컬럼명>;|
|DROP|테이블 컬럼 삭제<br>컬럼명 변경|ALTER TABLE <테이블명> DROP COLUMN <컬럼명>;<br> ALTER TABLE <테이블명> DROP CONSTRAINT <제약조건명>;|

DROP : 테이블을 삭제하는 명령어
|SQL 문|
|-|
|DROP TABLE <테이블명> [CASCADE CONSTRAINT];|

TRUNCATE : 테이블은 삭제되지 않지만 테이블에 존재하는 모든 행 제거하는 명령어
|SQL문|
|-|
|TRUNCATE TABLE <테이블명>;|