	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_02036FD8
	.public sub_02037030
	.public sub_02037088
	.public sub_02037108
	.extern _021D4140
	.extern sub_02035FF0
	.extern sub_020373B4
	.extern sub_0203769C
	.extern sub_02037974

	.text
	thumb_func_start sub_02036FD8
sub_02036FD8: ; 0x02036FD8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	bne _02036FF4
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02036FF4:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0203702C ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _0203701A
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203701A:
	bl sub_0203993C
	cmp r0, #0xa
	bne _02037026
	bl sub_02037974
_02037026:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0203702C: .word _021D4140
	thumb_func_end sub_02036FD8

	thumb_func_start sub_02037030
sub_02037030: ; 0x02037030
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	bne _0203704C
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0203704C:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02037084 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _02037070
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02037070:
	bl sub_0203993C
	cmp r0, #0xa
	bne _0203707C
	bl sub_02037974
_0203707C:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02037084: .word _021D4140
	thumb_func_end sub_02037030

	thumb_func_start sub_02037088
sub_02037088: ; 0x02037088
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	cmp r0, #0
	beq _020370A4
	bl GF_AssertFail
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020370A4:
	mov r0, #0
	bl sub_020373B4
	cmp r0, #0
	bne _020370B4
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_020370B4:
	bl sub_02035FF0
	cmp r0, #1
	bne _020370CA
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02036FD8
	add sp, #8
	pop {r4, r5, r6, pc}
_020370CA:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02037104 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _020370F0
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_020370F0:
	bl sub_0203993C
	cmp r0, #0xa
	bne _020370FC
	bl sub_02037974
_020370FC:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02037104: .word _021D4140
	thumb_func_end sub_02037088

	thumb_func_start sub_02037108
sub_02037108: ; 0x02037108
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0203769C
	cmp r0, #0
	beq _02037124
	bl sub_02037974
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02037124:
	mov r0, #0
	bl sub_020373B4
	cmp r0, #0
	bne _02037134
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02037134:
	bl sub_02035FF0
	cmp r0, #1
	bne _0203714A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02037030
	add sp, #8
	pop {r4, r5, r6, pc}
_0203714A:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02037180 ; =_021D4140
	add r2, r4, #0
	ldr r1, [r0, #8]
	mov r0, #0x5a
	lsl r0, r0, #4
	add r0, r1, r0
	add r1, r5, #0
	add r3, r6, #0
	bl sub_02033DF0
	cmp r0, #0
	beq _0203716E
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0203716E:
	bl sub_0203993C
	cmp r0, #0xa
	bne _0203717A
	bl sub_02037974
_0203717A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02037180: .word _021D4140
	thumb_func_end sub_02037108

