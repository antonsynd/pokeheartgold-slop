	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B5D0
	.extern ov43_0222A318
	.extern ov43_0222A414
	.extern ov43_0222A41C
	.extern ov43_0222A420
	.extern ov43_0222AD00
	.extern ov43_0222AE2C
	.extern ov43_0222BB20
	.extern ov43_0222BBB8
	.extern ov43_0222BFA4
	.extern ov43_0222BFD4
	.extern ov43_0222C024
	.extern ov43_0222C148
	.extern ov43_0222C228
	.extern ov43_0222C2B0
	.extern ov43_0222C32C
	.extern ov43_0222C358
	.extern ov43_0222C378
	.extern ov43_0222C53C
	.extern ov43_0222C5D8
	.extern ov43_0222C600
	.extern ov43_0222C620
	.extern ov43_0222C65C
	.extern ov43_0222C714
	.extern ov43_0222C750
	.extern ov43_0222C890

	.text

	.text
	thumb_func_start ov43_0222B5D0
ov43_0222B5D0: ; 0x0222B5D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	ldrb r5, [r4, #8]
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp, #0xc]
	cmp r5, #0x17
	bls _0222B5E4
	b _0222B932
_0222B5E4:
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0222B5F0: ; jump table
	.short _0222B620 - _0222B5F0 - 2 ; case 0
	.short _0222B62A - _0222B5F0 - 2 ; case 1
	.short _0222B642 - _0222B5F0 - 2 ; case 2
	.short _0222B68A - _0222B5F0 - 2 ; case 3
	.short _0222B694 - _0222B5F0 - 2 ; case 4
	.short _0222B6A2 - _0222B5F0 - 2 ; case 5
	.short _0222B6E0 - _0222B5F0 - 2 ; case 6
	.short _0222B6E8 - _0222B5F0 - 2 ; case 7
	.short _0222B6F4 - _0222B5F0 - 2 ; case 8
	.short _0222B720 - _0222B5F0 - 2 ; case 9
	.short _0222B744 - _0222B5F0 - 2 ; case 10
	.short _0222B780 - _0222B5F0 - 2 ; case 11
	.short _0222B7A2 - _0222B5F0 - 2 ; case 12
	.short _0222B7B8 - _0222B5F0 - 2 ; case 13
	.short _0222B7E2 - _0222B5F0 - 2 ; case 14
	.short _0222B7F0 - _0222B5F0 - 2 ; case 15
	.short _0222B7FA - _0222B5F0 - 2 ; case 16
	.short _0222B808 - _0222B5F0 - 2 ; case 17
	.short _0222B84A - _0222B5F0 - 2 ; case 18
	.short _0222B856 - _0222B5F0 - 2 ; case 19
	.short _0222B8BA - _0222B5F0 - 2 ; case 20
	.short _0222B8C6 - _0222B5F0 - 2 ; case 21
	.short _0222B8E2 - _0222B5F0 - 2 ; case 22
	.short _0222B91E - _0222B5F0 - 2 ; case 23
_0222B620:
	mov r0, #0
	strh r0, [r6]
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r0, [r6, #6]
_0222B62A:
	add r0, r4, #0
	bl ov43_0222A420
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov43_0222BB20
	mov r0, #2
	strb r0, [r4, #8]
	b _0222B932
_0222B642:
	bl ov43_0222BFA4
	cmp r0, #4
	bhi _0222B70A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222B656: ; jump table
	.short _0222B932 - _0222B656 - 2 ; case 0
	.short _0222B660 - _0222B656 - 2 ; case 1
	.short _0222B66C - _0222B656 - 2 ; case 2
	.short _0222B678 - _0222B656 - 2 ; case 3
	.short _0222B67E - _0222B656 - 2 ; case 4
_0222B660:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #2
	bl ov43_0222C53C
	b _0222B932
_0222B66C:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #3
	bl ov43_0222C53C
	b _0222B932
_0222B678:
	mov r0, #0x17
	strb r0, [r4, #8]
	b _0222B932
_0222B67E:
	mov r0, #4
	add r6, #0xf4
	str r0, [r6]
	mov r0, #5
	strb r0, [r4, #8]
	b _0222B932
_0222B68A:
	bl ov43_0222BFD4
	mov r0, #4
	strb r0, [r4, #8]
	b _0222B932
_0222B694:
	bl ov43_0222C024
	cmp r0, #1
	bne _0222B70A
	mov r0, #2
	strb r0, [r4, #8]
	b _0222B932
_0222B6A2:
	add r2, r6, #0
	add r2, #0xf4
	add r1, r6, #0
	ldr r2, [r2]
	add r1, #0xf4
	sub r3, r2, #1
	add r2, r6, #0
	ldr r1, [r1]
	add r2, #0xf4
	str r3, [r2]
	cmp r1, #0
	bgt _0222B70A
	add r1, r6, #0
	mov r2, #0
	add r1, #0xf4
	str r2, [r1]
	bl ov43_0222C620
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222A41C
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov43_0222C148
	mov r0, #6
	strb r0, [r4, #8]
	b _0222B932
_0222B6E0:
	bl ov43_0222C228
	strb r0, [r4, #8]
	b _0222B932
_0222B6E8:
	mov r0, #4
	add r6, #0xf4
	str r0, [r6]
	mov r0, #8
	strb r0, [r4, #8]
	b _0222B932
_0222B6F4:
	add r3, r6, #0
	add r3, #0xf4
	ldr r3, [r3]
	sub r5, r3, #1
	add r3, r6, #0
	add r3, #0xf4
	add r6, #0xf4
	str r5, [r3]
	ldr r3, [r6]
	cmp r3, #0
	ble _0222B70C
_0222B70A:
	b _0222B932
_0222B70C:
	bl ov43_0222BBB8
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov43_0222A318
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B720:
	mov r1, #0xb
	ldrsb r2, [r4, r1]
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	strh r0, [r6]
	ldrsb r0, [r4, r1]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	strh r0, [r6, #4]
	mov r0, #1
	strb r0, [r4, #8]
	b _0222B932
_0222B744:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r3, #0
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x10
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	add r0, r6, #0
	bl ov43_0222C620
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202C6F4
	add r1, r4, r5
	ldrb r1, [r1, #0x18]
	bl sub_0202C254
	add r1, r0, #0
	add r0, r4, #0
	bl ov43_0222A414
	mov r0, #0xb
	strb r0, [r4, #8]
	b _0222B932
_0222B780:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0222B818
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov43_0222BBB8
	add r0, r4, #0
	mov r1, #2
	mov r2, #4
	bl ov43_0222A318
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B7A2:
	bl ov43_0222C620
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202C6F4
	add r1, r4, r5
	ldrb r1, [r1, #0x18]
	ldr r2, [r4, #0x58]
	bl sub_0202C270
_0222B7B8:
	ldr r3, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov43_0222BB20
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r1, #0x11
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #0xe
	strb r0, [r4, #8]
	b _0222B932
_0222B7E2:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0222B818
	mov r0, #2
	strb r0, [r4, #8]
	b _0222B932
_0222B7F0:
	bl ov43_0222C32C
	mov r0, #0x10
	strb r0, [r4, #8]
	b _0222B932
_0222B7FA:
	bl ov43_0222C358
	cmp r0, #1
	bne _0222B818
	mov r0, #0x11
	strb r0, [r4, #8]
	b _0222B932
_0222B808:
	add r0, r4, #0
	add r1, r7, #0
	bl ov43_0222AE2C
	cmp r0, #1
	beq _0222B81A
	cmp r0, #2
	beq _0222B826
_0222B818:
	b _0222B932
_0222B81A:
	add r0, r6, #0
	bl ov43_0222C600
	mov r0, #0x12
	strb r0, [r4, #8]
	b _0222B932
_0222B826:
	add r0, r6, #0
	bl ov43_0222C600
	add r0, r7, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r2, #4
	add r0, r6, #0
	ldrsh r2, [r6, r2]
	add r0, #8
	add r1, r7, #0
	mov r3, #0
	bl ov43_0222C890
	mov r0, #2
	strb r0, [r4, #8]
	b _0222B932
_0222B84A:
	add r1, r7, #0
	bl ov43_0222C65C
	mov r0, #0x13
	strb r0, [r4, #8]
	b _0222B932
_0222B856:
	add r1, r7, #0
	bl ov43_0222C714
	cmp r0, #1
	bne _0222B932
	ldr r0, [r4, #4]
	bl sub_0202C6F4
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov43_0222C620
	str r0, [sp, #0x14]
	add r5, r4, #0
	ldr r1, [sp, #0x14]
	add r5, #0x18
	ldrb r1, [r5, r1]
	ldr r0, [sp, #0x10]
	bl sub_0202C338
	ldr r0, [r4, #4]
	bl Save_Frontier_GetStatic
	ldr r1, [sp, #0x14]
	ldrb r1, [r5, r1]
	bl sub_020311AC
	add r0, r4, #0
	bl ov43_0222A420
	mov r0, #4
	ldrsh r0, [r6, r0]
	mov r3, #0
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldrsh r3, [r6, r3]
	add r0, r6, #0
	add r2, r7, #0
	bl ov43_0222C378
	add r0, r7, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r0, #0x14
	strb r0, [r4, #8]
	b _0222B932
_0222B8BA:
	add r1, r7, #0
	bl ov43_0222C750
	mov r0, #2
	strb r0, [r4, #8]
	b _0222B932
_0222B8C6:
	bl ov43_0222C2B0
	cmp r0, #1
	bne _0222B8D4
	mov r0, #0x16
	strb r0, [r4, #8]
	b _0222B932
_0222B8D4:
	add r0, r7, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r0, #2
	strb r0, [r4, #8]
	b _0222B932
_0222B8E2:
	bl ov43_0222C5D8
	cmp r0, #0
	beq _0222B932
	ldr r0, _0222B938 ; =gSystem
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _0222B8FA
	bl System_GetTouchNew
	cmp r0, #0
	beq _0222B932
_0222B8FA:
	add r0, r7, #0
	mov r1, #1
	bl ov43_0222AD00
	mov r2, #4
	add r0, r6, #0
	ldrsh r2, [r6, r2]
	add r0, #8
	add r1, r7, #0
	mov r3, #0
	bl ov43_0222C890
	mov r0, #2
	strb r0, [r4, #8]
	add r0, r6, #0
	bl ov43_0222C600
	b _0222B932
_0222B91E:
	bl ov43_0222BBB8
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl ov43_0222A318
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B932:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222B938: .word gSystem
	thumb_func_end ov43_0222B5D0

