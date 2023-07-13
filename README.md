# hello-assembly
Hello World in assembly (Linux x86).
<br/>Netwide Assembler: https://www.nasm.us/

```
nasm -f elf32 -o app.o app.asm
```
```
ld -m elf_i386 -s -o app app.o
```
```
./app
```
