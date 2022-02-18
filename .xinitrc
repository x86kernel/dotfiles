export LANG=en_US.UTF-8

export XIM=nimf
export XIM_ARGS=
export XMODIFIERS="@im=nimf"
export GTK_IM_MODULE="nimf"
export QT_IM_MODULE="nimf"
export QT4_IM_MODULE="nimf"
export QT5_IM_MODULE="nimf"
export QT6_IM_MODULE="nimf"

export ANDROID_HOME=/opt/android-sdk
export ANDROID_SDK_ROOT=~/opt/android-sdk
export ANDROID_AVD_HOME=~/.android/avd

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

nimf
exec ~/.config/i3/bin/keyboard.sh &
#exec ~/.config/i3/bin/monitor.sh &
exec xbindkeys &
exec i3
