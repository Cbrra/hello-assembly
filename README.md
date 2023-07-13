# hello-assembly
Hello World in assembly on Linux.

```
nasm -f elf32 -o app.o app.asm
```
```
ld -m elf_i386 -s -o app app.o
```
```
./app
```
