.text
li $v0, 4
la $a0, hdr
syscall

la $a0, array
lw $a1, len
jal PrintIntArray

li $v0, 4
la $a0, a1Msg
syscall

li $v0, 1
move $a0, $t3
syscall

li $v0, 4
la $a0, nLine
syscall

li $v0, 4
la $a0, a2Msg
syscall

li $v0, 1
move $a0, $t4
syscall

j Exit

.data
.data
array:	.word 13, 34, 16, 61, 28
	.word 24, 58, 11, 26, 41
	.word 19, 7, 38, 12, 13
len:	.word 15
hdr:	.ascii "\nProgram to find max and"
	.asciiz " min\n\n"
nLine:.asciiz "\n"
a1Msg:	.asciiz "min = "
a2Msg:	.asciiz "max = " 

.include "utils.asm"
