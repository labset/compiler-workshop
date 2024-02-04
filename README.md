# compiler-workshop

## requirements

- git
- Java 21 , and Ant
  - I recommend using SDKMAN for this

## Task 0 : setup environment and IDE

<details>
<summary>locally</summary>
- clone the repo

```bash
git clone --recursive https://github.com/labset/compiler-workshopt.git
```

- build jtreg

```bash
cd compiler-workshop/jtreg
time bash make/build.sh
```

- configure and build jdk

```bash
cd compiler-workshop/jdk
time bash configure --enable-debug --with-jtreg=../jtreg/build/images/jtreg
time make jdk
```
</details>

<details>
<summary>using docker</summary>
- clone the repo

```bash
git clone --recursive https://github.com/labset/compiler-workshopt.git
```

- run docker

```bash
docker compose up -d
```

- open docker terminal session

```bash
docker exec -it compiler-workshop-session-1 bash
```

- build jtreg

```bash
cd /sources/compiler-workshop/jtreg
time bash make/build.sh --jdk /opt/java/openjdk
```

- configure and build jdk

```bash
cd /sources/compiler-workshop/jdk
time bash configure --enable-debug --with-jtreg=../jtreg/build/images/jtreg
time make jdk
```
</details>