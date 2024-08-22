# snakemake

스네이크메이크(snakemake)

- 스네이크메이크는 워크플로우 관리 시스템으로, 파이썬 기반으로 작성되었습니다.

[haje01](https://github.com/haje01/haje01.github.io/blob/master/_posts/2020-04-21-snakemake-tutorial.md) 님의 실습자료를 기반으로 윈도우 환경에 맞게 코드를 변경하였습니다.

- 실습자료: https://haje01.github.io/2020/04/21/snakemake-tutorial.html
- 공식 튜토리얼: https://snakemake.readthedocs.io/en/stable/getting_started/installation.html
- 공식 튜토리얼 슬라이드: https://slides.com/johanneskoester/snakemake-tutorial

## 환경

- windows 10
- python 3.8.10

```
참고한 실습자료는 리눅스 환경에서 진행되었으나, 윈도우 환경에 맞게 코드를 변경하였습니다.
```

## 스네이크메이크 설치

```bash
pip install snakemake
```

- snakemake version == 7.32.4
- PuLP version == 2.3.0
  - PuLP의 경우, 다른 버전을 설치하면 에러가 발생할 수 있음

## GraphViz 윈도우 패키지 choco로 설치

- 참고자료: [Windows용 패키지 매니저 chocolatey 설치 하기](https://velog.io/@shinyejin0212/chocolatey-Windows%EC%9A%A9-%ED%8C%A8%ED%82%A4%EC%A7%80-%EB%A7%A4%EB%8B%88%EC%A0%80-chocolatey-%EC%84%A4%EC%B9%98-%ED%95%98%EA%B8%B0)

**cmd 관리자 권한으로 실행**

- powershell에서 실행하면 오류 발생함

```bash
choco install Graphviz
```

## 스네이크메이크 실행

- 기본 명령어

```bash
snakemake -j
```

- 특정 타겟 실행

```bash
snakemake temp/wc_A.txt -j
```

- DAG 그래프 생성

```bash
snakemake --dag | dot -Tpng > dag.png
```
