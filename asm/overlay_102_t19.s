	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E821C
	.public ov102_021E8240
	.public ov102_021E8294
	.public ov102_021E839C
	.public ov102_021E83E4
	.extern ov102_021E7A4C
	.extern ov102_021E7A58
	.extern ov102_021E7AA4
	.extern ov102_021E8178
	.extern ov102_021E8580
	.extern ov102_021E85A8
	.extern ov102_021E85E8
	.extern ov102_021E874C
	.extern ov102_021E87B4
	.extern ov102_021E940C
	.extern ov102_021E9464
	.extern ov102_021E947C
	.extern ov102_021EC600

	.text

	.text
	thumb_func_start ov102_021E821C
ov102_021E821C: ; 0x021E821C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #1
	bhi _021E8234
	bl ov102_021E7A58
	cmp r0, #0
	beq _021E8234
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E8234:
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E8178
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021E821C

	thumb_func_start ov102_021E8240
ov102_021E8240: ; 0x021E8240
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021E8256
	cmp r0, #1
	beq _021E826C
	cmp r0, #2
	beq _021E8280
	b _021E8290
_021E8256:
	ldr r0, [r5, #0x14]
	mov r1, #0x12
	bl ov102_021E947C
	cmp r0, #0
	beq _021E8290
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021E8580
	b _021E8290
_021E826C:
	ldr r0, [r5, #0x14]
	bl ov102_021E9464
	cmp r0, #0
	beq _021E8290
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	bl ov102_021E7A4C
	b _021E8290
_021E8280:
	ldr r0, [r5, #0x14]
	mov r1, #0x1b
	bl ov102_021E947C
	cmp r0, #0
	beq _021E8290
	mov r0, #0
	str r0, [r4]
_021E8290:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov102_021E8240

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

	thumb_func_start ov102_021E839C
ov102_021E839C: ; 0x021E839C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E83E0 ; =ov102_021EC600
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021E83B2
	mov r0, #0
	pop {r4, pc}
_021E83B2:
	cmp r0, #0
	beq _021E83C0
	cmp r0, #1
	beq _021E83C4
	cmp r0, #2
	beq _021E83D0
	b _021E83DC
_021E83C0:
	mov r0, #1
	pop {r4, pc}
_021E83C4:
	add r4, #0x6b
	ldrb r0, [r4]
	cmp r0, #0
	bne _021E83DC
	mov r0, #0
	pop {r4, pc}
_021E83D0:
	add r4, #0x6b
	ldrb r0, [r4]
	cmp r0, #1
	bne _021E83DC
	mov r0, #0
	pop {r4, pc}
_021E83DC:
	mov r0, #2
	pop {r4, pc}
	.balign 4, 0
_021E83E0: .word ov102_021EC600
	thumb_func_end ov102_021E839C

	thumb_func_start ov102_021E83E4
ov102_021E83E4: ; 0x021E83E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl System_GetTouchNew
	cmp r0, #0
	bne _021E83F8
	mov r0, #0
	add sp, #0xc
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_021E83F8:
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x38
	ldr r7, _021E8454 ; =gSystem + 0x40
	str r0, [sp]
	add r6, sp, #8
_021E8404:
	ldr r0, [sp]
	mov r4, #0
	strb r0, [r6]
	ldrb r0, [r6]
	mov r5, #0xc
	add r0, #0x10
	strb r0, [r6, #1]
_021E8412:
	strb r5, [r6, #2]
	ldrb r0, [r6, #2]
	add r0, #0x48
	strb r0, [r6, #3]
	ldrh r1, [r7, #0x20]
	ldrh r2, [r7, #0x22]
	add r0, sp, #8
	bl TouchscreenHitbox_PointIsIn
	cmp r0, #0
	beq _021E8434
	ldr r0, [sp, #4]
	add sp, #0xc
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r4, r0
	pop {r4, r5, r6, r7, pc}
_021E8434:
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #3
	blt _021E8412
	ldr r0, [sp]
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _021E8404
	mov r0, #0
	mvn r0, r0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8454: .word gSystem + 0x40
	thumb_func_end ov102_021E83E4

