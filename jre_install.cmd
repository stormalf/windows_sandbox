sleep 20
mkdir "c:\Program Files\Java"
mkdir "c:\Program Files\Java\jdk1.8.0_191"
mkdir "c:\Program Files\Java\jre1.8.0_261"
REM xcopy /Y /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\jdk1.8.0_191 "c:\Program Files\java\jdk1.8.0_191"
xcopy /Y /E c:\users\WDAGutilityAccount\Desktop\SANDBOX\jre1.8.0_261 "c:\Program Files\java\jre1.8.0_261"
setx PATH "%PATH%;c:\Program Files\java\jre1.8.0_261\bin" /m
set PATH="%PATH%;c:\Program Files\java\jre1.8.0_261\bin" 
msg "%username%" jre installed! 