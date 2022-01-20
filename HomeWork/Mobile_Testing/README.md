Сценарий напишите в .txt файл.

.txt сценарий и .log файл прииложения todolist выгружайте на GitHub.
Ссылкку на гитхаб присылайте в лс.

1. Отобразить подключённый девайс в консоли.
	adb devices
2. Установить .apk файл приложениия todolist на телефон с компьютера через  ADB
	adb install D:\ANDROID\001_ToDoList-master\001_ToDoList-master\app\build\outputs\apk\debug\app-debug.apk

3. Вывести адрес приложения todolist в системе Android
	adb shell "pm list packages -f | grep todolist"
	adb shell pm list packages -f | findstr todolist
	
 4. Сделать скриншот запущенного приложения todolist и сразу скопировать на компьютер в одной команде.
	adb shell screencap /storage/emulated/0/DCIM/bleat.png & adb pull /storage/emulated/0/DCIM/bleat.png  C:\Users\Solo\Desktop\QA_study\HomeWork\Mobile_Testing\dz_1_ADB
 5. Вывести в консоль логи приложения todolist
	adb logcat | findstr todolist
 6. Скопировать логи приложения todolist на компьютер.
	adb logcat | findstr todolist > C:\Users\Solo\Desktop\QA_study\HomeWork\Mobile_Testing\dz_1_ADB/todolist.log
 7. Удалить приложение todolist с телефона через ADB
	adb shell pm list packages | findstr todolist (узнать полное название приложения в системе Android)
	adb uninstall com.android.todolist (удаляем приложение с телефона)
