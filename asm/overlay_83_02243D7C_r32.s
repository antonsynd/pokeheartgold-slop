	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02244E24
	.public ov83_02244F60
	.extern ov83_02246114

    .text

	.text
	thumb_func_start ov83_02244E24
ov83_02244E24: ; 0x02244E24
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r5, r2, #0
	bl ov83_02247768
	add r6, r0, #0
	ldr r0, _02244F58 ; =0x0000055C
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	cmp r5, #5
	bls _02244E44
	b _02244F52
_02244E44:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244E50: ; jump table
	.short _02244E5C - _02244E50 - 2 ; case 0
	.short _02244E6A - _02244E50 - 2 ; case 1
	.short _02244F52 - _02244E50 - 2 ; case 2
	.short _02244EE8 - _02244E50 - 2 ; case 3
	.short _02244F16 - _02244E50 - 2 ; case 4
	.short _02244F44 - _02244E50 - 2 ; case 5
_02244E5C:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244E6A:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _02244EC0
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _02244E86
	mov r5, #9
	b _02244E88
_02244E86:
	mov r5, #0xa
_02244E88:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244E96
	mov r1, #0x50
	b _02244E98
_02244E96:
	mov r1, #0x30
_02244E98:
	lsl r0, r6, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	str r5, [sp]
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x32
	str r0, [sp, #8]
	mov r0, #0xb2
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _02244F5C ; =0x00000504
	str r0, [r4, r1]
_02244EC0:
	ldr r0, _02244F5C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov83_02247624
	cmp r0, #0
	bne _02244F52
	ldr r0, _02244F5C ; =0x00000504
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _02244F5C ; =0x00000504
	mov r1, #0
	str r1, [r4, r0]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244EE8:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244F08
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F08:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F16:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02244F36
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F36:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F44:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02244F52:
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02244F58: .word 0x0000055C
_02244F5C: .word 0x00000504
	thumb_func_end ov83_02244E24

	thumb_func_start ov83_02244F60
ov83_02244F60: ; 0x02244F60
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r6, r2, #0
	ldrb r5, [r4, #0x15]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245064 ; =0x0000055C
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	cmp r6, #5
	bhi _02245060
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244F88: ; jump table
	.short _02244F94 - _02244F88 - 2 ; case 0
	.short _02244F94 - _02244F88 - 2 ; case 1
	.short _02245060 - _02244F88 - 2 ; case 2
	.short _02244FBC - _02244F88 - 2 ; case 3
	.short _0224500E - _02244F88 - 2 ; case 4
	.short _02244FA0 - _02244F88 - 2 ; case 5
_02244F94:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FA0:
	ldrb r0, [r4, #0xf]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _02244FB0
	add r0, r4, #0
	mov r1, #0
	bl ov83_02246114
_02244FB0:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FBC:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02244FF0
	bl sub_0203769C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _02244FE0
	cmp r0, r5
	blo _02244FF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FE0:
	cmp r0, r5
	bhs _02244FF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02244FF0:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _02245060
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224500E:
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02245042
	bl sub_0203769C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _02245032
	cmp r0, r5
	blo _02245042
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02245032:
	cmp r0, r5
	bhs _02245042
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02245042:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _02245060
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02245060:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02245064: .word 0x0000055C
	thumb_func_end ov83_02244F60

