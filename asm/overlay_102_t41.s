	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8D94
	.public ov102_021E8E84
	.extern ov102_021E7A4C
	.extern ov102_021E8D1C
	.extern ov102_021E8D50
	.extern ov102_021E8D58
	.extern ov102_021E8EF8
	.extern ov102_021E8F14
	.extern ov102_021E8F5C
	.extern ov102_021E940C
	.extern ov102_021E9464
	.extern ov102_021EA258

	.text

	.text
	thumb_func_start ov102_021E8D94
ov102_021E8D94: ; 0x021E8D94
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #3
	bhi _021E8E78
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8DAC: ; jump table
	.short _021E8DB4 - _021E8DAC - 2 ; case 0
	.short _021E8E02 - _021E8DAC - 2 ; case 1
	.short _021E8E4A - _021E8DAC - 2 ; case 2
	.short _021E8E68 - _021E8DAC - 2 ; case 3
_021E8DB4:
	bl ov102_021E8EF8
	cmp r0, #0
	bne _021E8DC6
	ldr r0, [r4]
	bl sub_02090D88
	cmp r0, #0
	beq _021E8DF8
_021E8DC6:
	add r0, r4, #0
	bl ov102_021E8F14
	cmp r0, #0
	beq _021E8DEA
	add r0, r4, #0
	add r0, #0x70
	mov r1, #1
	mov r2, #0
	bl ov102_021E8F5C
	ldr r0, [r4, #0x14]
	mov r1, #0x15
	bl ov102_021E940C
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8DEA:
	ldr r0, [r4, #0x14]
	mov r1, #0x17
	bl ov102_021E940C
	mov r0, #2
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8DF8:
	ldr r1, _021E8E7C ; =ov102_021E8E84
	add r0, r4, #0
	bl ov102_021E8D50
	pop {r3, r4, r5, pc}
_021E8E02:
	ldr r0, [r4, #0x14]
	bl ov102_021EA258
	cmp r0, #0
	beq _021E8E12
	cmp r0, #1
	beq _021E8E20
	pop {r3, r4, r5, pc}
_021E8E12:
	ldr r0, [r4, #0x14]
	mov r1, #0x19
	bl ov102_021E940C
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8E20:
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021E8E2E
	add r0, r4, #0
	add r0, #8
	bl MailMsg_SetTrailingFieldsEmpty
_021E8E2E:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4]
	add r1, #0x10
	add r2, #8
	bl sub_02090E04
	ldr r1, _021E8E80 ; =ov102_021E8D1C
	add r0, r4, #0
	bl ov102_021E7A4C
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8E4A:
	ldrh r1, [r4, #0x30]
	mov r0, #0xf3
	tst r0, r1
	bne _021E8E5A
	bl System_GetTouchNew
	cmp r0, #0
	beq _021E8E78
_021E8E5A:
	ldr r0, [r4, #0x14]
	mov r1, #0x14
	bl ov102_021E940C
	mov r0, #3
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021E8E68:
	ldr r0, [r4, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E8E78
	add r0, r4, #0
	bl ov102_021E8D58
_021E8E78:
	pop {r3, r4, r5, pc}
	nop
_021E8E7C: .word ov102_021E8E84
_021E8E80: .word ov102_021E8D1C
	thumb_func_end ov102_021E8D94

	thumb_func_start ov102_021E8E84
ov102_021E8E84: ; 0x021E8E84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021E8E9A
	cmp r0, #1
	beq _021E8EB4
	cmp r0, #2
	beq _021E8EE0
	pop {r3, r4, r5, pc}
_021E8E9A:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x70
	add r2, r1, #0
	bl ov102_021E8F5C
	ldr r0, [r5, #0x14]
	mov r1, #0x16
	bl ov102_021E940C
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E8EB4:
	ldr r0, [r5, #0x14]
	bl ov102_021EA258
	cmp r0, #0
	beq _021E8EC4
	cmp r0, #1
	beq _021E8ED2
	pop {r3, r4, r5, pc}
_021E8EC4:
	ldr r0, [r5, #0x14]
	mov r1, #0x19
	bl ov102_021E940C
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E8ED2:
	ldr r1, _021E8EF4 ; =ov102_021E8D1C
	add r0, r5, #0
	bl ov102_021E7A4C
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E8EE0:
	ldr r0, [r5, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E8EF0
	add r0, r5, #0
	bl ov102_021E8D58
_021E8EF0:
	pop {r3, r4, r5, pc}
	nop
_021E8EF4: .word ov102_021E8D1C
	thumb_func_end ov102_021E8E84

