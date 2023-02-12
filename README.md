# FPU-Extended-Calculator
Double Extended precision FPU calculator (80 bits).

Initial DELPHI project modified with FPU ASM code to get the same precision in data presentation than in the data calculation.

Usually modern Windows platforms works inside with double extended precision (80 bits) but for data presentation limits them to doubled precision only (64 bits). 

Read the file ChangesToDELPHIcode11.txt to see the changes made in de initial DELPHI executable code.

if you only want the executable file this is the one: CalFPUEnglishUHR21.exe

There is a version (CalPFUEnglishHRround.exe), that shown data rounded to only eighteen significant digits of precision, the actual precision of the FPU.

Added version .21 obteined compiling with SysUtils.dcu modified with the new code. There is a new repository with this file. 

Added file: ChangesInThecomledDELPHIcodeToGetExtendedPrecision.txt to explain the improve code in the new version 2.1
