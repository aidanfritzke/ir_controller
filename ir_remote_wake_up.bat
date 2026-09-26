@echo off

REM MODE COMm [BAUD=b] [PARITY=p] [DATA=d] [STOP=s] [TO={ON|OFF}]
REM MODE COM3:9600,N,8,1
REM configure port, port#, baud rate, parity, data bits, stop bits, infinite time out processing (turning ON prevents script from freezing if the port does not respond)
MODE COM4 BAUD=76800 PARITY=N DATA=8 STOP=1 TO=ON >nul
REM use copy /B to send raw binary
copy /B "C:\Users\PC\projs\ir_controller\single\cmd_00.bin" COM4
timeout /t 3600 /nobreak
copy /B "C:\Users\PC\projs\ir_controller\single\cmd_00.bin" COM4