�������� �������� � .txt ����.

.txt �������� � .log ���� ����������� todolist ���������� �� GitHub.
������� �� ������ ���������� � ��.

1. ���������� ������������ ������ � �������.
	adb devices
2. ���������� .apk ���� ����������� todolist �� ������� � ���������� �����  ADB
	adb install D:\ANDROID\001_ToDoList-master\001_ToDoList-master\app\build\outputs\apk\debug\app-debug.apk

3. ������� ����� ���������� todolist � ������� Android
	adb shell "pm list packages -f | grep todolist"
	adb shell pm list packages -f | findstr todolist
	
 4. ������� �������� ����������� ���������� todolist � ����� ����������� �� ��������� � ����� �������.
	adb shell screencap /storage/emulated/0/DCIM/bleat.png & adb pull /storage/emulated/0/DCIM/bleat.png  C:\Users\Solo\Desktop\QA_study\HomeWork\Mobile_Testing\dz_1_ADB
 5. ������� � ������� ���� ���������� todolist
	adb logcat | findstr todolist
 6. ����������� ���� ���������� todolist �� ���������.
	adb logcat | findstr todolist > C:\Users\Solo\Desktop\QA_study\HomeWork\Mobile_Testing\dz_1_ADB/todolist.log
 7. ������� ���������� todolist � �������� ����� ADB
	adb shell pm list packages | findstr todolist (������ ������ �������� ���������� � ������� Android)
	adb uninstall com.android.todolist (������� ���������� � ��������)
