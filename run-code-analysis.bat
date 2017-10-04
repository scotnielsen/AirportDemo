setlocal 
echo on
pushd %CD%
cd "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools"
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"
popd

cd airportlib

msbuild AirportLib.cblproj /p:RunMicroFocusCodeAnalysisAfterBuild=True /p:ActiveRuleSets="Within Entire Program; Coding Standards"

endlocal


