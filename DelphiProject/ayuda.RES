        ��  ��                  �  (   A Y U D A   ��d     0 
        {\rtf1\ansi\ansicpg1252\deff0\nouicompat\deftab709{\fonttbl{\f0\froman\fprq2\fcharset0 Arial;}{\f1\fnil\fcharset0 Arial;}{\f2\froman\fprq2\fcharset0 Liberation Serif;}}
{\colortbl ;\red0\green0\blue0;\red0\green77\blue187;\red79\green129\blue189;\red255\green0\blue0;\red0\green0\blue255;}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\nowidctlpar\hyphpar0\widctlpar\ri1266\sa140\sl276\slmult1\qj\tx8236\cf1\kerning1\f0\fs22\lang3082\par

\pard\nowidctlpar\hyphpar0\widctlpar\li568\ri1266\sa140\sl276\slmult1\qj\tx8236\cf2\b\fs32     Introduction\cf3\par
\cf1\b0\fs22 This calculator converts a real number into the ten bytes that represent it in the extended double precision format used by the \cf0\b FPU \cf1\b0 (Floating Point Unit), and vice versa. If you enter the ten bytes, it calculates the real number.\par
These ten bytes are numbers in two-digit Hexadecimal format (\cf0\b 00-FF\cf1\b0 ) with \b 8 \b0 bits each, making a total of \b 80 \b0 bits, we are using \b MSB \b0 format (most significant bit) to the left, starting from bit \b 79\b0  and ending on bit \b 0 \b0 (total \b 80\b0 ). Whenever we mention the first, we are starting from the left.\par
For a normalized value, the first \b 16 bits \b0 (\b 79 \b0 to \b 64 \b0 inclusive) are used to store the sign (bit \b 79\b0 ) and the exponent (the remaining \b 15 bits\b0 ). These two bytes cannot have all their bits set to zero (\b 0\b0 ) or all set to one (\b 1\b0 ), or in other words, the first two of the ten bytes cannot be \b 00 00 \b0 or \b FF FF\b0 . Another thing to keep in mind is that the first bit of the remaining \b 64 bits \b0 (bit \b 63\b0 ) must be set to one (\b 1\b0 ) (as it by convention represents the integer part of the mantissa), so the third byte of the ten must be greater than \b 7F \b0 (from \b 80 \b0 to \b FF\b0 ). The remaining \b 7 \b0 bytes can have any value (\b 00\b0 -\b FF\b0 ).\par
The formula for obtaining the represented number is:\par
\cf4\b N = (-1)^s * 1, m * 2^(e-16383)\par
\cf1\b0 Where \cf4\b s\cf1\b0  is the \cf4\b sign\cf1\b0  (bit\b 79\b0 ) -if the bit is \b 1 \b0 it represetnt a negative number and if it\'b4s \b 0 \b0 a\b  \b0 positive one-\par
\cf4\b e\cf1\b0  is the \cf4\b exponent \cf1\b0 (\b 15 \b0 remaining bits)\cf4\b\par

\pard\nowidctlpar\hyphpar0\widctlpar\fi-568\li568\ri1266\sa140\sl276\slmult1\qj\tx8236          \cf1\b0 The remaining \b 64 \b0 bits \cf0 are used to obain the \cf4\b mantissa\cf0\b0 , the first one (bit 63) musb be 1 and represent the integer part, the rest are \cf1 the fractional part (also known as the \cf4\b sifnificand\cf1\b0 ) \par

\pard\nowidctlpar\hyphpar0\widctlpar\li568\ri1266\sa140\sl276\slmult1\qj\tx8236 the number \cf4\b 16383\cf1  \b0 in binary (\cf4\b 11111111111111\cf1\b0 ) is a bias that must be subtracted from the exponent.\par

\pard\nowidctlpar\hyphpar0\widctlpar\fi-568\li568\ri1266\sa140\sl276\slmult1\qj\tx8236           \par
              \cf2\b\fs32 How to use it\par
\tab\cf1\b0\fs22 The first time you use the calculator, precision will be limited to Double (64 bits) with a maximum of \b 15\b0  significant digits as in all Windows systems. If you want to work with \b extended precision\b0 , you will have to use the \b Ready to PATCH\b0  button to create a new calculator with modified FPU code. A new file will be created with "\b PATCH\b0 " text added at the beginning of the name. Once you open the new file, you can choose how the data in the numerical fields is displayeed, with the \b Maximum number of significant digits\b0 , -up to \b 20\b0  digits- (preselected option), slightly less, -up to \b 18\b0  digits- but \b Rounded\b0 .\cf2\b\fs32\par
\tab\cf1\b0\fs22 Enter a real number, and  press \cf2\b Calculate Bytes \cf0\b0 button\cf2\b  \cf0\b0 (or \cf2\b ENTER\cf0\b0  key), to \cf1 convert it to its representation of ten extended double precision bytes. You have to enter it in decimal base with its sign (if negative) and with its comma if it has a decimal part. T\cf0 he standard \cf1 floating point in decimal base can also be used (for example \b 123E-45\b0 )\par
          To enter the ten bytes to obtain the real number they represent, you can do it manually or use the \cf2\b Flip clipboard and paste\cf1\b0  button to copy the clipboar content (if the bytes are in incorrect order press the button again). Once you have the bytes in the correct order (\b MSB \b0 format), and with the limitations mentioned before \b (\cf2 Introduction seccion\cf1\b0 ) press \cf2\b Calculate number. \cf0\b0 If any byte is in incorrect form or does not comply with the limitations, it will be erased and must be entered again.\par
\cf1          In addition to calculating the real number, the \cf4\b sign\cf1\b0 , the \cf4\b mantissa\cf1\b0 , and the \cf4\b exponent \cf1\b0 will be shown.\par

\pard\nowidctlpar\hyphpar0\li568\ri1266\sa140\sl276\slmult1\qj\tx8236 When any calculation is made, the generated bytes will be stored in the clipboard in the same order as shown on the screen, (remember you can always flip them). \par

\pard\nowidctlpar\hyphpar0\widctlpar\li568\ri1266\sa140\sl276\slmult1\qj\tx8236 Predefined values of \b Pi\b0 , the number \b e \b0 (or Euler's number),  the \b golden ratio \b0 and other commonly used in FPU calculations are also included as examples.\par

\pard\hyphpar0\fi-568\li568\cf0\f1\lang1033\tab Extensive explanation can be found at:\par

\pard\hyphpar0\par

\pard\hyphpar0\fi-568\li568\b\f2\fs24\tab   {{\field{\*\fldinst{HYPERLINK https://github.com/GutiSoftware/Extended-precision-in-Delphi }}{\fldrslt{https://github.com/GutiSoftware/Extended-precision-in-Delphi\ul0\cf0}}}}\f2\fs24\par

\pard\hyphpar0\b0\par

\pard\nowidctlpar\hyphpar0\widctlpar\li568\ri1266\sa140\sl276\slmult1\qj\tx8236\cf1\f0\fs22\lang3082\par
A special greeting to the group \cf0\b\fs20 CrakSLatinos [CLS]\cf1\b0\fs22\par

\pard\nowidctlpar\hyphpar0\widctlpar\ri1266\sa140\sl276\slmult1\qj\tx8236\par

\pard\nowidctlpar\hyphpar0\widctlpar\li568\ri1266\sa140\sl276\slmult1\qj\tx8236         \fs28 GutiSoft\line       \fs22 14 de enero de 2023\par

\pard\nowidctlpar\hyphpar0\widctlpar\ri1266\sa140\sl276\slmult1\qj\tx8236\cf0\fs24\par

\pard\ri1266\sa140\sl276\slmult1\tx8236\line\kerning0\f2\lang10\par
}
   