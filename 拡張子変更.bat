@echo off

rem �O�������
pushd %~dp0
setlocal enabledelayedexpansion

set /p moji="�g���q�����"

:main1
if "%1"=="" (echo �����I��
goto quit
)

set num0=%~n1

pushd %~dp1


if %~nx1==%num0%.jpg ( rename %1 %num0%.%moji%
) else if %~nx1==%num0%.png ( rename %1 %num0%.%moji%
) else if %~nx1==%num0%.JPG ( rename %1 %num0%.%moji%
)
set pass=%~dp1

shift

goto main1

:quit
endlocal
exit