# private aliases
alias ls='ls -CFG'
alias gg='g++ -std=c++0x -O2'
alias kc='kotlinc -include-runtime -d _main.jar'
alias kr='java -jar _main.jar'
alias bb='cd /Users/babo/build/'
alias ip='ipython'
alias ts='ts-node'
alias grep='ag -s'
alias logcat='adb logcat -v threadtime'
alias adbclear='adb shell pm clear me.togather.wave.dev'
alias adbdel='adb uninstall com.azarlive.android.dev'
alias adbrun='adb shell am start -n com.azarlive.android.dev/com.azarlive.android.LoginActivity'
alias refresh='./gradlew build --refresh-dependencies'
alias pro='~/Library/Android/sdk/tools/proguard/bin/proguardgui.sh'
alias depenclear='./gradlew build --refresh-dependencies'
alias my_serve="python3 -m http.server"
alias dk="docker"
alias dstop="docker stop $(docker ps -a -q)"
alias dbash="docker exec -it container_name /bin/bash"
#alias gogo='adb shell pm -s '
alias ss='./a.out < input.txt'

# move to dir (short cut)
alias kk='cd /Users/babo/build/azar-android/app/src/main/java/com/azarlive/android'
alias res='cd /Users/babo/build/azar-android/app/src/main/res'

export LANG="C.UTF-8"
export LANGUAGE="C.UTF-8"

if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ];then
    INPUTRC=/etc/inputrc
fi

export SVN_EDITOR=/usr/bin/vim
export GIT_EDITOR=/usr/bin/vim
export GOPATH=$HOME/build/go
