setlocal 
echo on
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\vsmsbuildcmd.bat"
msbuild AirportLib\AirportLib.cblproj /t:rebuild
msbuild AirportApp\AirportApp.cblproj /t:rebuild
endlocal


