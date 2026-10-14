	.include "macros.inc"
	.include "unk_0205A44C.inc"
	.include "global.inc"
	.public sub_0205A750
	.extern _020FC7D4
	.extern _020FC7DC
	.extern _020FC7E4
	.extern _020FC7EC
	.extern _020FC7F4
	.extern _020FC838
	.extern _020FC850
	.extern _020FC868
	.extern _020FC880
	.extern _020FC934
	.extern _020FC95C
	.extern sub_0205A544
	.extern sub_0205A730

	.text
	thumb_func_start sub_0205A750
sub_0205A750: ; 0x0205A750
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, #0
	bne _0205A764
	sub r1, r1, #1
	bl sub_0205A544
	pop {r4, r5, r6, pc}
_0205A764:
	sub r0, r1, #1
	bl sub_02035798
	cmp r0, #0
	bne _0205A780
	mov r0, #1
	add r1, r0, #0
	bl sub_020398D4
	mov r0, #1
	bl sub_02039AD8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205A780:
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0
	cmp r4, #0x1a
	bhi _0205A860
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205A796: ; jump table
	.short _0205A860 - _0205A796 - 2 ; case 0
	.short _0205A7CC - _0205A796 - 2 ; case 1
	.short _0205A7D8 - _0205A796 - 2 ; case 2
	.short _0205A804 - _0205A796 - 2 ; case 3
	.short _0205A804 - _0205A796 - 2 ; case 4
	.short _0205A804 - _0205A796 - 2 ; case 5
	.short _0205A804 - _0205A796 - 2 ; case 6
	.short _0205A804 - _0205A796 - 2 ; case 7
	.short _0205A804 - _0205A796 - 2 ; case 8
	.short _0205A7E0 - _0205A796 - 2 ; case 9
	.short _0205A812 - _0205A796 - 2 ; case 10
	.short _0205A812 - _0205A796 - 2 ; case 11
	.short _0205A812 - _0205A796 - 2 ; case 12
	.short _0205A820 - _0205A796 - 2 ; case 13
	.short _0205A820 - _0205A796 - 2 ; case 14
	.short _0205A820 - _0205A796 - 2 ; case 15
	.short _0205A82E - _0205A796 - 2 ; case 16
	.short _0205A82E - _0205A796 - 2 ; case 17
	.short _0205A82E - _0205A796 - 2 ; case 18
	.short _0205A7F6 - _0205A796 - 2 ; case 19
	.short _0205A7F6 - _0205A796 - 2 ; case 20
	.short _0205A7F6 - _0205A796 - 2 ; case 21
	.short _0205A83C - _0205A796 - 2 ; case 22
	.short _0205A844 - _0205A796 - 2 ; case 23
	.short _0205A84C - _0205A796 - 2 ; case 24
	.short _0205A854 - _0205A796 - 2 ; case 25
	.short _0205A858 - _0205A796 - 2 ; case 26
_0205A7CC:
	ldr r0, [r5, #0x34]
	add r2, r6, #0
	sub r0, r0, #1
	bl sub_0205A730
	pop {r4, r5, r6, pc}
_0205A7D8:
	ldr r0, _0205A868 ; =_020FC7D4
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205A7E0:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _0205A7EA
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205A7EA:
	lsl r2, r0, #3
	ldr r0, _0205A86C ; =_020FC95C
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205A7F6:
	sub r4, #0x13
	ldr r0, _0205A870 ; =_020FC880
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205A804:
	sub r0, r4, #3
	lsl r2, r0, #3
	ldr r0, _0205A874 ; =_020FC934
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205A812:
	sub r4, #0xa
	ldr r0, _0205A878 ; =_020FC838
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205A820:
	sub r4, #0xd
	ldr r0, _0205A87C ; =_020FC850
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205A82E:
	sub r4, #0x10
	ldr r0, _0205A880 ; =_020FC868
	lsl r2, r4, #3
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0205A83C:
	ldr r0, _0205A884 ; =_020FC7E4
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205A844:
	ldr r0, _0205A888 ; =_020FC7DC
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205A84C:
	ldr r0, _0205A88C ; =_020FC7EC
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205A854:
	mov r0, #0xda
	pop {r4, r5, r6, pc}
_0205A858:
	ldr r0, _0205A890 ; =_020FC7F4
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r4, r5, r6, pc}
_0205A860:
	bl GF_AssertFail
	mov r0, #0x28
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0205A868: .word _020FC7D4
_0205A86C: .word _020FC95C
_0205A870: .word _020FC880
_0205A874: .word _020FC934
_0205A878: .word _020FC838
_0205A87C: .word _020FC850
_0205A880: .word _020FC868
_0205A884: .word _020FC7E4
_0205A888: .word _020FC7DC
_0205A88C: .word _020FC7EC
_0205A890: .word _020FC7F4
	thumb_func_end sub_0205A750

