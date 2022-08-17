@echo off
title Compile Os
cls
del boot.o
del kernel.o
del myos.bin
cls
i686-elf-as boot.s -o boot.o
pause
i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
pause
i686-elf-gcc -T linker.ld -o myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
pause
