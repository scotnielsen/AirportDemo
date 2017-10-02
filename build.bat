setlocal

call "C:\Program Files (x86)\Micro Focus\Visual COBOL\CreateEnv.bat"

set COBCPY=%COBCPY%;.\copybooks


rem compile library and main executable
cbllink -d -Udirs.dir -obin\airportlinklibrary.dll AirportLinkLibrary\aircode.cbl
cbllink -Udirs.dir -obin\AirportConsoleApplication.exe AirportConsoleApplication\airport.cbl


rem compile tests
; cbllink -d -Udirs.dir -obin\AirportTests.dll TestAirportLinkLibrary\TestAIRCODE.cbl ; TestAirportLinkLibrary\TestGetDetails.cbl TestAirportLinkLibrary\TestGetMatches.cbl

; copy TestAirportLinkLibrary\TestAirportLinkLibrary.dat .\bin
; set dd_airports=TestAirportLinkLibrary.dat
; mfurun AirportTests.dll

endlocal

