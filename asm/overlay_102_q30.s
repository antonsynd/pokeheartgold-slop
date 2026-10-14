	.include "macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8294
	.extern ov102_021E7AA4
	.extern ov102_021E85A8
	.extern ov102_021E85E8
	.extern ov102_021E874C
	.extern ov102_021E87B4
	.extern ov102_021E940C

	.text

	.text
	thumb_func_start ov102_021E8294
ov102_021E8294: ; 0x021E8294
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x38]
	cmp r1, #0
	bne _021E82A8
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E82BE
_021E82A8:
	cmp r1, #1
	bne _021E82B6
	add r0, r5, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #1
	bne _021E82BE
_021E82B6:
	ldrh r0, [r5, #0x30]
	mov r1, #4
	tst r1, r0
	beq _021E82EE
_021E82BE:
	ldr r0, _021E8388 ; =0x000005E4
	bl PlaySE
	mov r0, #4
	str r0, [r5, #0x38]
	add r0, r5, #0
	add r0, #0x6b
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x6b
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0x1b
	bl ov102_021E940C
	mov r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E82EE:
	mov r1, #2
	tst r1, r0
	beq _021E830C
	ldr r0, _021E838C ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0xa
	bl ov102_021E940C
	ldr r0, _021E8390 ; =ov102_021E7AA4
	str r0, [r5, #0x24]
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E830C:
	mov r1, #1
	tst r0, r1
	beq _021E836E
	add r0, r5, #0
	add r0, #0x50
	ldrh r2, [r0]
	cmp r2, #0xfe
	bne _021E8334
	ldr r0, _021E838C ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0xa
	bl ov102_021E940C
	ldr r0, _021E8390 ; =ov102_021E7AA4
	str r0, [r5, #0x24]
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E8334:
	add r1, r5, #0
	add r1, #0x6b
	ldrb r1, [r1]
	ldr r0, [r5, #0x18]
	bl ov102_021E85A8
	cmp r0, #0
	beq _021E8366
	ldr r0, _021E838C ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0x54
	add r1, r5, #0
	bl ov102_021E874C
	ldr r0, _021E8394 ; =ov102_021E87B4
	mov r1, #0xb
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x14]
	bl ov102_021E940C
	mov r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021E8366:
	ldr r0, _021E8398 ; =0x000005F2
	bl PlaySE
	pop {r3, r4, r5, pc}
_021E836E:
	add r0, r5, #0
	bl ov102_021E85E8
	cmp r0, #0
	beq _021E8386
	ldr r0, _021E838C ; =0x000005DC
	bl PlaySE
	ldr r0, [r5, #0x14]
	mov r1, #0x11
	bl ov102_021E940C
_021E8386:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8388: .word 0x000005E4
_021E838C: .word 0x000005DC
_021E8390: .word ov102_021E7AA4
_021E8394: .word ov102_021E87B4
_021E8398: .word 0x000005F2
	thumb_func_end ov102_021E8294

