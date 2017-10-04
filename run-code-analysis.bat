setlocal
 
echo on

pushd %CD%
cd "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools"
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"
popd

cd airportlib

msbuild AirportLib.cblproj /fileLogger /p:RunMicroFocusCodeAnalysisAfterBuild=True /p:ActiveRuleSets="Within Entire Program; Coding Standards"
find "MFCA" AirportLib\msbuild.log > .\AirportLib\MFCAResults.log

endlocal


