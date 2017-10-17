setlocal
 
echo on

pushd %CD%
rem cd "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools"
rem call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"
popd

CD AirportLib
msbuild AirportLib.cblproj /fileLogger /p:RunMicroFocusCodeAnalysisAfterBuild=True /p:ActiveRuleSets="Within Entire Program;Coding Standards"
find "MFCA" msbuild.log > MFCAResults.log


endlocal


