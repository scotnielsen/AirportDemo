setlocal 
echo on
pushd %CD%
cd "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools"
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"
popd

cd airportlib
msbuild AirportLib.cblproj /t:rebuild /p:TrackFileAccess=true

endlocal


