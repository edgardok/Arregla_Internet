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

set /p var=Seleccione una opcion [1-7]: 

if '%var%'=="1" goto :uno
if '%var%'=="2" goto :dos
if '%var%'=="3" goto :tres
if '%var%'=="4" goto :cuatro
if '%var%'=="5" goto :cinco
if '%var%'=="6" goto :seis
if '%var%'=="7" goto :siete


:uno
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





Rem _________________________________________________________________
cls
color 27
Rem _________________________________________________________________
echo.
echo.
echo                         *******************
echo                         *                 *
echo                         *  ACTIVANDO RED  *
echo                         *                 *
echo                         *******************
echo.
rem _________________________________________________________________
ipconfig /renew
rem _________________________________________________________________


Rem _________________________________________________________________







:dos
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





Rem _________________________________________________________________
cls
color 27
Rem _________________________________________________________________
echo.
echo.
echo                         *******************
echo                         *                 *
echo                         *  ACTIVANDO RED  *
echo                         *                 *
echo                         *******************
echo.
rem _________________________________________________________________
ipconfig /renew
rem _________________________________________________________________


Rem _________________________________________________________________


:tres
cls
color 70
rem _________________________________________________________________
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

:cuatro
cls
echo.
echo 			
echo.
echo 			192.168.0.1
echo.
ping 192.168.0.1



REM _________________________________________________________________

:cinco
cls
echo.
echo 		192.168.1.1
echo.
ping 192.168.1.1



REM _______________________________________________________________

:seis
cls
echo.
echo 		PROBANDO LLEGAR A WWW.GOOGLE.COM
echo.
ping www.google.com

REM __________________________________________________________________

:siete
cls
echo.
color 2f
echo 			UN saludo desde donde este =) ... LOS QUIERO MUCHO =D
echo.
echo			 CHAU!!! UN ABRAZO O BESO ... LO QUE QUIERAN :).
echo 				para terminar apreten una tecla ...
pause >nul
