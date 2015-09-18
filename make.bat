@echo off
if %1.==clean. goto clean
if %1.==all. goto all
if %1.==. goto all
echo I don't know how to make %1
goto :end

:all
if not exist "out\" mkdir "out\"
if not exist "out\include\" mkdir "out\include\"
if not exist "out\chapters\" mkdir "out\chapters\"
latexmk -pdf -cd -outdir=../out -jobname=stochastic_analysis -interaction=nonstopmode -file-line-error ./src/main
copy out\stochastic_analysis.pdf >nul
goto end

:clean
rd /q /s "out\" 2>nul
del /q "stochastic_analysis.pdf" 2>nul
goto :end

:end
@echo on