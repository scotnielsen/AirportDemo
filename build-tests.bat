setlocal
echo on

if not exist .\bin mkdir .\bin
pushd %CD%
call "C:\Program Files (x86)\Micro Focus\Visual COBOL\CreateEnv.bat"
popd
set COBCPY=%COBCPY%;.\copybooks

rem compile tests
cbllink -d -U.\dirs.dir -obin\AirportTests.dll TestAirportLinkLibrary\TestAIRCODE.cbl TestAirportLinkLibrary\TestGetDetails.cbl TestAirportLinkLibrary\TestGetMatches.cbl

endlocal

