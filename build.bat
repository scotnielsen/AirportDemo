setlocal 
echo on
pushd %CD%
rem cd "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"
popd
msbuild AirportLib\AirportLib.cblproj /t:rebuild
msbuild AirportApp\AirportApp.cblproj /t:rebuild

endlocal


