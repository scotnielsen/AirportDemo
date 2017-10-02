setlocal
echo on
pushd %CD%
call "C:\Program Files (x86)\Micro Focus\Visual COBOL\CreateEnv.bat"
popd
cd bin
set dd_airports=TestAirportLinkLibrary.dat
mfurun -report:junit AirportTests.dll

endlocal

