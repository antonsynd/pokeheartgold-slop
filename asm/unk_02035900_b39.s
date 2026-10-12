	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_020373B4
	.extern _021D4140
	.extern sub_02037474
	.extern sub_0203769C

	.text
	thumb_func_start sub_020373B4
sub_020373B4: ; 0x020373B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02037448 ; =_021D4140
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020373C4
	mov r0, #0
	pop {r4, pc}
_020373C4:
	bl sub_0203993C
	bl sub_02034044
	cmp r0, #0
	beq _020373F2
	ldr r0, _02037448 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _0203744C ; =0x000006B6
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _020373EE
	bl ov00_021EE4FC
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02037444
_020373EE:
	mov r0, #0
	pop {r4, pc}
_020373F2:
	bl sub_02037474
	cmp r0, #0
	bne _020373FE
	mov r0, #0
	pop {r4, pc}
_020373FE:
	bl sub_02033298
	cmp r0, #4
	beq _0203740A
	mov r0, #0
	pop {r4, pc}
_0203740A:
	bl sub_0203769C
	cmp r4, r0
	bne _02037416
	mov r0, #1
	pop {r4, pc}
_02037416:
	bl sub_0203769C
	cmp r0, #0
	bne _02037430
	bl sub_02033250
	mov r1, #1
	add r2, r1, #0
	lsl r2, r4
	tst r0, r2
	beq _02037442
	add r0, r1, #0
	pop {r4, pc}
_02037430:
	ldr r0, _02037448 ; =_021D4140
	ldr r1, [r0, #8]
	ldr r0, _02037450 ; =0x00000694
	ldrh r2, [r1, r0]
	mov r0, #1
	add r1, r0, #0
	lsl r1, r4
	tst r1, r2
	bne _02037444
_02037442:
	mov r0, #0
_02037444:
	pop {r4, pc}
	nop
_02037448: .word _021D4140
_0203744C: .word 0x000006B6
_02037450: .word 0x00000694
	thumb_func_end sub_020373B4

