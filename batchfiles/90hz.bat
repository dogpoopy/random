adb shell pm grant com.android.shell android.permission.WRITE_SECURE_SETTINGS
adb shell settings put system peak_refresh_rate 90
adb shell settings put system user_refresh_rate 90
adb shell settings put secure miui_refresh_rate 90
adb shell settings put secure user_refresh_rate 90
