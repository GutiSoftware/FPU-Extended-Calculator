# FPU-Extended-Calculator
Double Extended precision FPU calculator (80 bits).

Initial DELPHI project modified with FPU ASM code to get the same precision in data presentation than in the data calculation.

Usually modern Windows platforms works inside with double extended precision (80 bits) but for data presentation limits them to doubled precision only (64 bits). 

Take a look the new repository: Extended-precision-in-Delphi for changes in the new code.

if you only want the last executable file this with maximun amount of significant digits this is the one: CalFPUEnglish60MaxDig.exe

You can choose to shown data rounded to only eighteen significant digits of precision, the actual precision of the FPU.

Added files: ChangesInThecomledDELPHIcodeToGetExtendedPrecision.txt and ChangesInThecompiledDELPHIcodeToGetExtendedPrecisionRound.txt to explain the improve code.

Both versions are obteined compiling with SysUtils.dcu modified with the new code. There is a new repository with this file. 
