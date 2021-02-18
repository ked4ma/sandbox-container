# Sandbox Container
## What's this
This repository is collections of Dockerfile for sandbox of each programming language.

## Available Languages (Environments)
- golang (1.9.2)
- kotlin (1.1.61)
- node   (8.x)
- python (3.6.3) with tensorflow module
- mysql  (5.6, 5.7)
- jupyter
- ffmpeg

## How to use
### list
show list of available language

```
$ make list
>>> [prepared ENVs are followings]
>>> - go
>>> - kotlin
```

### build
build target env container

```
$ make build TARGET=<language>
```

### run
run target env container

```
$ make run TARGET=<language>
```
