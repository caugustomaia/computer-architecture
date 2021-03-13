# computer-architecture
Projects developed in the course of computer architecture

## assembly-project
In this directory you will find an assembly code. The project especification was to design a algorithm who asks for a integer non-negative number and this number will be the position of a number in the Fibonacci's sequence, that is what the program returns. The calculation of the returned number should be done by a recursive function. 

#### Compiling the assembly code:
To generate the object file, use:

``` nasm -f elf64 final.asm ```

To link the necessary libraries and generate the binary file, use:

``` gcc -no-pie final.o -o final ```

To run the program use:

``` ./final ```

## microprogramming-project
In this directory you will find a report. In this project we were given a data path of MIPS architecture and we were suppose to change the BEQ instruction to BNE instruction. So i did the report explaining how this could be done.