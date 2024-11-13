@echo off
color d
title Dox tool by Bella
echo Dox Tool by BoT_Bella
echo.
set /p ip="Enter IP Here: "
set /p look="Enter Lookup to lookup: "
echo Info:
echo.

:: Set Random Country Selection (Expanded Countries List, including Denmark)
set /a randCountry=%random% %% 11
if %randCountry%==0 set country=USA
if %randCountry%==1 set country=Canada
if %randCountry%==2 set country=Germany
if %randCountry%==3 set country=France
if %randCountry%==4 set country=Australia
if %randCountry%==5 set country=UK
if %randCountry%==6 set country=Brazil
if %randCountry%==7 set country=India
if %randCountry%==8 set country=Japan
if %randCountry%==9 set country=South Africa
if %randCountry%==10 set country=Denmark

:: Set Random Country Code (Expanded List)
set /a randCountryCode=%random% %% 11
if %randCountryCode%==0 set countryCode=US
if %randCountryCode%==1 set countryCode=CA
if %randCountryCode%==2 set countryCode=DE
if %randCountryCode%==3 set countryCode=FR
if %randCountryCode%==4 set countryCode=AU
if %randCountryCode%==5 set countryCode=GB
if %randCountryCode%==6 set countryCode=BR
if %randCountryCode%==7 set countryCode=IN
if %randCountryCode%==8 set countryCode=JP
if %randCountryCode%==9 set countryCode=ZA
if %randCountryCode%==10 set countryCode=DK

:: Set Random Region Information (Expanded)
set /a randRegion=%random% %% 12
if %randRegion%==0 set region=California
if %randRegion%==1 set region=Quebec
if %randRegion%==2 set region=Bavaria
if %randRegion%==3 set region=Queensland
if %randRegion%==4 set region=Ontario
if %randRegion%==5 set region=New York
if %randRegion%==6 set region=Hokkaido
if %randRegion%==7 set region=Gauteng
if %randRegion%==8 set region=Maharashtra
if %randRegion%==9 set region=Rhône-Alpes
if %randRegion%==10 set region=Jutland
if %randRegion%==11 set region=Zealand

:: Set Random Region Name
set /a randRegionName=%random% %% 5
if %randRegionName%==0 set regionName=West
if %randRegionName%==1 set regionName=East
if %randRegionName%==2 set regionName=Central
if %randRegionName%==3 set regionName=North
if %randRegionName%==4 set regionName=South

:: Set Random City Information (Expanded List)
set /a randCity=%random% %% 20
if %randCity%==0 set city=New York
if %randCity%==1 set city=Toronto
if %randCity%==2 set city=Berlin
if %randCity%==3 set city=Sydney
if %randCity%==4 set city=London
if %randCity%==5 set city=Paris
if %randCity%==6 set city=São Paulo
if %randCity%==7 set city=Tokyo
if %randCity%==8 set city=Cape Town
if %randCity%==9 set city=Copenhagen
if %randCity%==10 set city=Oslo
if %randCity%==11 set city=Stockholm
if %randCity%==12 set city=Helsinki
if %randCity%==13 set city=Madrid
if %randCity%==14 set city=Rome
if %randCity%==15 set city=Vienna
if %randCity%==16 set city=Amsterdam
if %randCity%==17 set city=Brussels
if %randCity%==18 set city=Zurich
if %randCity%==19 set city=Reykjavik

:: Set Random Zip Code (Random Numbers)
set /a randZip=%random% %% 10000
set zip=%randZip%

:: Set Random Latitude and Longitude (Random Numbers)
set /a randLatitude=%random% %% 90 + 10
set /a randLongitude=%random% %% 180 - 90
set Latitude=%randLatitude%
set Longitude=%randLongitude%

:: Set Random Timezone (Random Timezones)
set /a randTimezone=%random% %% 5
if %randTimezone%==0 set timezone=GMT-5
if %randTimezone%==1 set timezone=GMT+1
if %randTimezone%==2 set timezone=GMT+3
if %randTimezone%==3 set timezone=GMT-8
if %randTimezone%==4 set timezone=GMT+2

:: Set Random ISP and AS (Autonomous System)
set /a randISP=%random% %% 5
if %randISP%==0 set ISP=Comcast
if %randISP%==1 set ISP=AT&T
if %randISP%==2 set ISP=Verizon
if %randISP%==3 set ISP=TDC
if %randISP%==4 set ISP=BT Group

set /a randAS=%random% %% 3
if %randAS%==0 set AS=AS1234
if %randAS%==1 set AS=AS5678
if %randAS%==2 set AS=AS91011

:: Displaying the Randomly Generated Information
echo Country: %country%
echo Country Code: %countryCode%
echo Region: %region%
echo Region Name: %regionName%
echo City: %city%
echo Zip: %zip%
echo Latitude: %Latitude%
echo Longitude: %Longitude%
echo Timezone: %timezone%
echo ISP: %ISP%
echo AS: %AS%
echo Proxy: No
echo Hosting: Yes
pause
clear
echo ======================
echo  Dox Tool By BoT_Bella
echo  1. Ip Pinger
echo  2. Info
echo  3. UsernameLookup
echo ======================
set /p choice="Enter Choice: >>"
if "%choice%"=="1" goto ipPinger
if "%choice%"=="2" goto Info
if "%choice%"=="3" goto UsernameLookup

:ipPinger
set /p ip="IP: "
:loop1
color 4
echo succesfuly Pinging %ip%
ping localhost -n 1 >nul
goto loop1
pause
exit

:Info
echo This is a very powerful Dox, tool hope you like it(:
pause
exit

:UsernameLookup
echo seacrhing for random peoples things(:
timeout -t 5
echo YouTube:
echo Facebook:
echo Twitter:
echo Snap: