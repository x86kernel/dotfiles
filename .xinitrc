export LANG=en_US.UTF-8

export XIM=fcitx
export XIM_ARGS=
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export QT4_IM_MODULE="fcitx"

export ANDROID_HOME=/opt/android-sdk
export ANDROID_SDK_ROOT=~/opt/android-sdk
export ANDROID_AVD_HOME=~/.android/avd


[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec ~/.config/i3/bin/keyboard.sh &
exec ~/.config/i3/bin/monitor.sh &
exec xbindkeys &
exec i3
