setlocal
echo on

if not exist .\bin mkdir .\bin
pushd %CD%
call "C:\Program Files (x86)\Micro Focus\Visual COBOL\CreateEnv.bat"
popd
set COBCPY=%COBCPY%;.\copybooks

echo %CD%
rem compile library and main executable
cbllink -d -U.\dirs.dir -obin\airportlinklibrary.dll AirportLinkLibrary\aircode.cbl
cbllink -U.\dirs.dir -obin\AirportConsoleApplication.exe AirportConsoleApplication\airport.cbl


rem compile tests
cbllink -d -U.\dirs.dir -obin\AirportTests.dll TestAirportLinkLibrary\TestAIRCODE.cbl TestAirportLinkLibrary\TestGetDetails.cbl TestAirportLinkLibrary\TestGetMatches.cbl

rem copy TestAirportLinkLibrary\TestAirportLinkLibrary.dat .\bin
rem set dd_airports=TestAirportLinkLibrary.dat
rem mfurun AirportTests.dll

endlocal

