# nginx-vhost_php7.3_openproject_jenkins_docker-image
> [nginx-vhost-php7.3] 에서 제공하는 솔루션에 OpenProject, Jenkins를 결합한 솔루션

## 서비스 특징
 
> [OpenProject] : 프로젝트 관리 프로세스(PMI)를 지원 하는 오픈 소스 프로젝트 관리 소프트웨어

> [Jenkins] : CI 툴 중 하나로 CI (Continuous Integration)는 개발자가 공유 버전 제어 저장소에서 
  팀의 코드를 컴파일 할 수 있도록함으로써 빌드주기 비 효율성을 줄이기 위한 프로세스

> nginx/php7.3 기반의 가상 호스팅, OpenProject, Jenkins를 개별 서버로 사용할 수 있고 
  단일 nginx에 통합하여 사용할 수 있음

> 예) test.com 도메인을 통해 a.test.com/ b.test/com 으로 가상 호스팅을 운영하고 
      open.test.com으로 오픈프로젝트를 운영,
      jen.test.com으로 jenkins를 운영할 수 있음

## 사용 방법

1. OpenProject 사용시 이벤트를 메일로 보내기 위해 메일 계정 정보를 필수로 요구함

```
본인은 mailgun을 사용함

compose/nginx_openproject 폴더의 docker-compose.yml 파일에 다음과 같은 항목이 있으며  
주석에 맞게 정보를 변경해야 함

environment:
      EMAIL_DELIVERY_METHOD: smtp
      SMTP_ADDRESS: smtp.mailgun.org #해당 위치 정보 입력 mailgun 사용시 동일하게 유지
      SMTP_PORT: 587
      SMTP_DOMAIN: "test.com" #해당 위치 정보 입력
      SMTP_AUTHENTICATION: login
      SMTP_ENABLE_STARTTLS_AUTO: "true"
      SMTP_USER_NAME: "test@test.com" #계정 정보
      SMTP_PASSWORD: "1234567890067655abcdefgh" #key 정보
```







## 사용 예제

스크린 샷과 코드 예제를 통해 사용 방법을 자세히 설명합니다.
- 업데이트 예정

## 개발 환경 설정

만약 Docker 설치와 Docker-compose 설치가 되어 있지 않다면 다음 사항을 확인함

> docker 설치 참고 사이트 [docker-install]  
> docker-compose는 apt-get을 통해 설치가 가능한 것으로 확인됨

## 업데이트 내역

* 0.1.0 : 안정화 버전 완료  

* 차후 업데이트 계획 : 
  - 젠킨스를 full-service의 단일 nginx와 결합하여 도메인으로 접근 사용
  - OpenObject와 젠킨스의 DB를 volumes로 연동하여 컨테이너의 문제 발생시 보안 대책 제공
  - OpenObject와 젠킨스의 DB를 외부에서 운영할 수 있도록 기존 docker-image 변경
 
## 신규 repository 계획
 - git-server, docker-image의 독립 서버들을 결합하여 신규 repository로 제공 예정  
 - 독립서버, aws, gcp 기반에 대한 각각의 쿠버네티스 기능을 탑제하여 신규 repository로 제공 예정  
    

## 멤버

임도현 Owner S/W, H/W, 개발자/기획자, bluebamus@gmail.com

<!-- Markdown link & img dfn's -->
[nginx-vhost-php7.3]: https://github.com/bluebamus/nginx-vhost-php7.3
[OpenProject]: http://wiki.webnori.com/display/pms/Open+Project+7
[Jenkins]: https://jjeongil.tistory.com/810
