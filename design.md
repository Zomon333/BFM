# Brainfuck in Assembly

Because your life wasn't bad enough already.

## Data needed:

dataArray = int[40000]

programArray = char[40000]

dPtr = int

pPtr = int

## Commands:

Command -> Description

\>	-> Increments dPtr to move to next cell in dataArray 

\<	-> Decrements dPtr to move to previous cell in dataArray

\+	-> Increments data at dPtr in dataArray

\-	-> Decrements data at dPtr in dataArray

\.	-> Outputs the byte at dPtr in dataArray

\,	-> Accepts one byte of input and stores its value at dPtr in dataArray

\[	-> Jumps to matching ] if value at dPtr in dataArray is zero

\]	-> Jumpts to matching [ if value at dPtr in dataArray is non-zero



## Implementation:

Pseudo-code analogues for how these may work;

\>	(dPtr + 1 < 40000) ? dPtr+=1 : dPtr=dPtr;

\<	(dPtr -1 >= 0) ? dPtr-=1 : dPtr=dPtr;

\+	dataArray[dPtr]++

\-	dataArray[dPtr]--

\.	std::cout<<dataArray[dPtr];

\,	std::cin>>dataArray[dPtr];

\[	(dataArray[dPtr] == 0) ? pPtr=findMatch(pPtr) : pPtr+=1;

\]	(dataArray[dPtr] != 0) ? pPtr=findMatch(pPtr) : pPtr+=1;
