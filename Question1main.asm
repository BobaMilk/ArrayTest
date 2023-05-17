.text
la $a0, array
lw $a1, length
jal PrintIntArray

j Exit

.data
array:	.word 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0
length: .word 11
.include "utils.asm"
