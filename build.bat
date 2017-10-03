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

endlocal

