﻿; Test file for .orgASM
.org 10
.equ TEST 14
TEST2 .equ 18
TEST .equ 12 ; Duplicate
#nolist
	ADD B, A
	SET PC, 10
.list
	SET A, 10 + 7 * 4
	sEt a, TEST
label1:
:label2
	SET A, B ; Comment "te'st"
	SET pop, A
	SET A, [B]
	SET B, [0]
	SET C, [A+2]
	ADD A, B
label3:
invalid label:
	IFB A, Z
	MUL notaregister, b
label1: ; Duplicate
	DIV A,I
	SET PC, pop
	JSR label3
#ifdef TEST
	SET A, 1
#end
#ifdef NOTDEFINED
	SET A, 0
#end
#ifdef
#ifdef TOO MANY PARAMETERS
#end