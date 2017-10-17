setlocal
echo on
pushd %CD%
call "C:\Program Files (x86)\Micro Focus\Visual COBOL\CreateEnv.bat"
popd

copy TestAirportLib\TestAirportLib.dat .\bin
cd bin
set dd_airports=TestAirportLib.dat
mfurun -report:junit TestAirportLib.dll

endlocal

