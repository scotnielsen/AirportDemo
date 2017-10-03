setlocal 
echo on
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\vsmsbuildcmd.bat"
pushd %CD%
call "C:\Program Files (x86)\Micro Focus\Visual COBOL\CreateEnv.bat"
popd
msbuild AirportLib\AirportLib.cblproj /p:RunMicrofocusCodeAnalysisAfterBuild=true /p:ActiveRulesets="Within Entire Program"

endlocal


