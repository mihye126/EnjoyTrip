# Backend

생성일: 2023년 3월 28일 오후 4:28

# 구현 요약

## 업무 분담

| 업무 상세 | 담당자 |
| --- | --- |
| 메인페이지 | 배미혜 |
| 지역별 관광지 정보 수집 | 배미혜 |
| 관광지, 숙박, 음식점 조회 | 배미혜 |
| 문화시설, 공연, 여행코스, 쇼핑조회 | 배미혜 |
| 회원 주도의 hotplace 등록 | 배미혜 |
| 회원 관리 | 박소민 |
| 로그인 관리 | 박소민 |
| 공지사항 | 박소민 |
| 공유게시판 | 배미혜 |

## 요구사항 구현

| 순번 | 요구사항명 | 구현여부 |
| --- | --- | --- |
| F01 | 지역별 관광지 정보 수집 | O |
| F02 | 관광지, 숙박, 음식점 조회 | O |
| F03 | 문화시설, 공연, 여행코스, 쇼핑조회 | O |
| F04 | 여행계획경로설정 | X |
| F05 | 회원 주도의 hotplace 등록 | O |
| F06 | 관광지 관련 뉴스 정보 크롤링 | X |
| F07 | 회원 관리 | O |
| F08 | 로그인 관리 | O |
| F09 | 공지사항 | O |
| F10 | 공유게시판 | O |

## 구현페이지

| 순번 | 구현 페이지 | 구현여부 | 연관 요구 사항 | url |
| --- | --- | --- | --- | --- |
| 1 | 메인 페이지 | O | F01 | /main |
| 2 | 지역별 관광지 검색 기능 구현 | O | F01/ F02/ F03 | /trip |
| 3 | 회원정보 등록, 수정, 삭제, 조회 기능 구현 | O | F07 | /account |
| 4 | 로그인 / 로그아웃 기능 구현 | O | F08 | /account |
| 5 | 회원 주도의 hotplace 등록 | O | F05, F10 | /hotPlace |
| 6 | 공지사항 등록, 수정, 삭제, 조회 기능 구현 | O | F09 | /notice |
| 7 | 페이지 에러처리 | O | 기타 | /notFound |

## UML

### Class Diagram

- Attraction
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled.png)
    
- User
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%201.png)
    
- HotPlace
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%202.png)
    
- Notice
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%203.png)
    

# 구현 상세

## 메인 페이지

| 기능 번호 | 기능요약 |
| --- | --- |
| 1 | navigation을 이용해서 다른 페이지로의 접근 |
| 2 | 로그인 여부에따른 header 렌더링 변화 |
| 3 | search.jsp 를 include하여 메인페이지에서도 사용자가 검색을 할 수 있도록  |
| 4 | 자주 찾는 관광지를 메인페이지에 노출시켜 사용자가 이미지 클릭시 해당지역의 관광지 정보로 넘어가도록 구성 |

### 1,2. navigation을 이용해서 다른 페이지로의 접근/ 로그인 여부에따른 header 렌더링 변화

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%204.png)

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%205.png)

### 3. `search.jsp` 를 include하여 메인페이지에서도 사용자가 검색을 할 수 있도록

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%206.png)

`search.jsp` 를 include하여 메인페이지에서도 사용자가 검색을 할 수 있도록 구현

1. 자주 찾는 관광지를 메인페이지에 노출시켜 사용자가 이미지 클릭시 해당지역의 관광지 정보로 넘어가도록 구성

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%207.png)

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%208.png)

첫번째 이미지 클릭시 결과

## Trip(Attaction)

| 기능 번호 | 기능요약 |
| --- | --- |
| 1 | F01. 지역별 관광지 정보 수집 |
| 2 | F02. 관광지, 숙박, 음식점 조회 |
| 3 | F03. 문화시설, 공연, 여행코스, 쇼핑조회 |
| 4 | 관광지 정보목록 pagenation  |
| 5 | 관광지 상세 정보 조회 |
| 6 | 관광지 좌표에 따른 카카오 맵 API 렌더링 |

### 1. F01. 지역별 관광지 정보 수집

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%209.png)

### 2. F02. 관광지, 숙박, 음식점 조회

1. 관광지 조회
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2010.png)
    
2. 숙박 조회
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2011.png)
    
3. 음식점 조회
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2012.png)
    

### 3. F03. 문화시설, 공연, 여행코스, 쇼핑조회

1. 문화 시설 
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2013.png)
    
2. 공연
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2014.png)
    
3. 여행코스
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2015.png)
    
4. 쇼핑
    
    ![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2016.png)
    

### 4. 관광지 정보목록 pagenation

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2017.png)

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2018.png)

### 5,6 관광지 상세 정보 조회/ 관광지 좌표에 따른 카카오 맵 API 렌더링

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2019.png)

## User

기존 회원 데이터

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2020.png)

### 1. 회원가입

회원가입 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2021.png)

- 이미 존재하는 아이디로 가입하는 경우

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2022.png)

- 회원가입 성공된 경우

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2023.png)

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2024.png)

- 회원가입한 데이터 정상적으로 추가됨.

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2025.png)

### 2. 사용자 정보 조회

조회 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2026.png)

### 3. 사용자 정보 수정

기존 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2027.png)

사용자 정보 수정 후 화면 (이하이 → 이헬로)

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2028.png)

- 사용자 정보 데이터 수정 완료

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2029.png)

### 4. 사용자 탈퇴

사용자 탈퇴 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2030.png)

- 탈퇴 후 확인 창

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2031.png)

- 탈퇴 후 ‘홍길동’ 데이터 삭제 완료

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2032.png)

## Login

### 1. 로그인

로그인화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2033.png)

- 로그인 성공

로그인된 사용자 정보가 적용된 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2034.png)

- 존재하지 않은 아이디로 로그인 시도하거나, 비밀번호가 틀린 경우

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2035.png)

### 2. 비밀번호 찾기

비밀번호 수정 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2036.png)

- 존재하지 않은 아이디를 넣은 경우

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2037.png)

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2038.png)

- 새 비밀번호와 비밀번호 확인이 틀린 경우

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2039.png)

- 비밀번호 수정 완료

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2040.png)

비밀번호 데이터 수정됨 (aa123 → ad123)

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2041.png)

## HotPlace

| 기능 번호 | 기능요약 |
| --- | --- |
| 1 | F05 회원 주도의 hotplace 등록 |
| 2 | F10 hotplace 공유게시판 |
| 3 | hotplace 등록시 주소에 따른 카카오 api 렌더링 |
| 4 | hotplace 상세조회 |
| 5 | 게시판 등록한 user만 삭제가능 |

### 1. F05 회원 주도의 hotplace 등록

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2042.png)

### 2. F10 hotplace 공유게시판

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2043.png)

### 3. hotplace 등록시 주소에 따른 카카오 api 렌더링

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2044.png)

### 4. hotplace 상세조회

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2045.png)

### 5. 게시판 등록한 user만 삭제가능

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2046.png)

## Notice

| 기능 번호 | 기능요약 |
| --- | --- |
| 1 | 공지사항 등록, 삭제, 조회 기능 구현 |
| 2 | 일반 유저가 공지사항을 등록, 삭제 불가하도록 |
| 3 | 운영자의 경우 등록, 삭제 가능 |

### 1. 공지사항 등록, 삭제, 조회 기능 구현

공지사항 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2047.png)

### 2. 일반 유저가 공지사항을 등록, 삭제, 수정 불가하도록

> 게시글 조회
> 
- 일반 유저에게는 글쓰기 버튼과 글 삭제 버튼이 보이지 않음

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2048.png)

### 3. 운영자의 경우 등록, 수정, 삭제 가능

- 공지사항 목록 화면

운영자에게만 글쓰기 버튼과 글 삭제 버튼이 보임

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2047.png)

> 게시글 등록
> 
- 글 작성 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2049.png)

- 작성 후 저장 완료

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2050.png)

- 작성한 글 데이터 저장됨

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2051.png)

> 게시글 삭제
> 
- ‘게시글2’ 삭제

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2052.png)

- 삭제 후 화면

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2053.png)

- ‘게시글2’ 데이터 삭제됨

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2054.png)

## NotFound

잘못된 페이지로 접근시에 에러 페이지 호출

![Untitled](Backend%20d756c3c2701b465f8652d187ab50b5da/Untitled%2055.png)