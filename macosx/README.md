### Homebrew 설치
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
```

### pip 설치
```
sudo easy_install pip
```

### ipython 설치
```
pip install ipython
```

### iterm2 와 zsh
https://www.iterm2.com/ <br>
https://nolboo.github.io/blog/2015/08/21/oh-my-zsh/

### 맥 일반키보드에서 한/영키, 한자키, Ctrl 키 사용하기(키맵핑)
http://jhrun.tistory.com/80
http://liverex.net/2475

### 화면 캡쳐
- 전체 : shift + command + 3
- 영역 : shift + command + 4
- 창 : shift + command + 4 + space

### 맥 단축키 쉽게 기억하기
http://macnews.tistory.com/564

### .bash_profile 설정
리눅스와는 달리 .bashrc 대신 .bash_profile 에 설정값을 써야 한다. <br>
셀에서 한글이 안 나온다면 다음 줄을 추가한다.
```
export LANG="ko_KR.UTF-8"
export LANGUAGE="C.UTF-8"
```
