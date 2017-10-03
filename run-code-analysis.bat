setlocal 
echo on
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\vsmsbuildcmd.bat"

msbuild AirportLib\AirportLib.cblproj /p:RunMicrofocusCodeAnalysisAfterBuild=true /p:ActiveRulesets="Within Entire Program;Coding Standards"

endlocal


