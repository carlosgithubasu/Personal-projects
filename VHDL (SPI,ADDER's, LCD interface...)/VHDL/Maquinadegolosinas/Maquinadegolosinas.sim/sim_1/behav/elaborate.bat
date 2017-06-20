@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto 75180f8098f54bed804d23571e9b9438 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Maquinadegolosinas_behav xil_defaultlib.Maquinadegolosinas -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
