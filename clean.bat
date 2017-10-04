pushd %CD%
cd "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools"
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\Common7\Tools\VsDevCmd.bat"
popd

msbuild /t:clean
del /q bin\*