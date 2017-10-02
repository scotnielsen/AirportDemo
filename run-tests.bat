setlocal
echo on
pushd %CD%
call "C:\Program Files (x86)\Micro Focus\Visual COBOL\CreateEnv.bat"
popd
set dd_airports=TestAirportLinkLibrary.dat
mfurun AirportTests.dll

endlocal

