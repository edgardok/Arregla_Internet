@echo off
:menu
cls
title   @edgardo_Krause programando con @nipodbarrios "EL OGRO" :-) Yeah!!!!
color 27
echo.
echo.
echo.
echo            ==============================================
echo            =                                            =
echo            =   Bienvenido a prueba de red KRAUSE 0.1    =
echo            =                                            =
echo            ==============================================
echo            =                                            =
echo            =             Menu:                          =
echo            =                                            =
echo            = Presione la tecla para iniciar la accion:  =
echo            =                                            =
echo            =  1.Inicia el programa automaticamente.     =
echo            =                                            =
echo            =  2.Activa y Desactiva la placa de red.     =
echo            =                                            =
echo            =  3.Prueba la placa de red.                 =
echo            =                                            =
echo            =  4.Prueba la conexion a 192.168.0.1        =
echo            =                                            =
echo            =  5.Prueba la conexion a 192.168.1.1        =
echo            =                                            =
echo            =  6.Prueba la conexion a Internet.          =
echo            =                                            =
echo            =  7. Salir del Programa sin hacer nada.     =
echo            =                                            =
echo            ==============================================

set Choice=
set /p Choice=""

if '%Choice%'=='1' goto 1:
if '%Choice%'=='2' goto 2:
if '%Choice%'=='3' goto 3:
if '%Choice%'=='4' goto 4:
if '%Choice%'=='5' goto 5:
if '%Choice%'=='6' goto 6:
if '%Choice%'=='7' goto 7:


1:
cls
color 4f
Rem ________________________________________________________________
echo.
echo                        **********************
echo                        *                    *
echo                        *  DESACTIVANDO RED  *
echo                        *                    *
echo                        **********************
echo.
Rem _________________________________________________________________
ipconfig /release
Rem _________________________________________________________________





Rem_________________________________________________________________
cls
color 27
Rem_________________________________________________________________
echo.
echo.
echo                         *******************
echo                         *                 *
echo                         *  ACTIVANDO RED  *
echo                         *                 *
echo                         *******************
echo.
rem_________________________________________________________________
ipconfig /renew
rem_________________________________________________________________


Rem_________________________________________________________________







:2
cls
color 4f
Rem ________________________________________________________________
echo.
echo                        **********************
echo                        *                    *
echo                        *  DESACTIVANDO RED  *
echo                        *                    *
echo                        **********************
echo.
Rem _________________________________________________________________
ipconfig /release
Rem _________________________________________________________________





Rem_________________________________________________________________
cls
color 27
Rem_________________________________________________________________
echo.
echo.
echo                         *******************
echo                         *                 *
echo                         *  ACTIVANDO RED  *
echo                         *                 *
echo                         *******************
echo.
rem_________________________________________________________________
ipconfig /renew
rem_________________________________________________________________


Rem_________________________________________________________________


:3
cls
color 70
rem_________________________________________________________________
echo.
echo                 ##############################
echo                 #                            #
echo                 #  PROBANDO LA PLACA DE RED  #
echo                 #                            #
echo                 ##############################
echo.
Rem ________________________________________________________________

SET placadered=localhost
 
:INICIO
IF EXIST respuesta.tmp DEL respuesta.tmp >nul
 
PING %DIRECCIONREMOTA% > respuesta.tmp
FIND /C /I "perdidos = 0" respuesta.tmp >nul
GOTO CASO%ERRORLEVEL%
 
:CASO1
REM ***conexion fallida***

ECHO %date% %time%.  NO ESTA HABILITADA LA PLACA DE RED O NO FUNCIONA.

GOTO menu
 
:CASO0
REM ***conexion OK***
ECHO %date% %time%.  Conexion joya.
GOTO INICIO  



REM ________________________________________________________________

:4
cls
echo.
echo 			
echo.
echo 			192.168.0.1
echo.
ping 192.168.0.1



REM _________________________________________________________________

:5
cls
echo.
echo 		192.168.1.1
echo.
ping 192.168.1.1



REM _______________________________________________________________

:6
cls
echo.
echo 		PROBANDO LLEGAR A WWW.GOOGLE.COM
echo.
ping www.google.com

REM __________________________________________________________________

:7
cls
echo.
color 2f
echo 			UN saludo desde donde este =) ... LOS QUIERO MUCHO =D
echo.
echo			 CHAU!!! UN ABRAZO O BESO ... LO QUE QUIERAN :).
echo 				para terminar apreten una tecla ...
pause >nul
