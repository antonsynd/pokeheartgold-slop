	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239C90
	.public ov59_02239D08
	.public ov59_02239E0C

	.text

	.text
	thumb_func_start ov59_02239C90
ov59_02239C90: ; 0x02239C90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5, #4]
	ldr r4, [r5]
	cmp r0, #0
	beq _02239CA4
	cmp r0, #1
	b _02239CDE
_02239CA4:
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r5, #0x18]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x1c]
	bl Sprite_SetMatrix
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldrb r1, [r5, #6]
	add r0, r1, #1
	strb r0, [r5, #6]
	ldrb r0, [r5, #5]
	cmp r1, r0
	blo _02239D04
	ldrb r0, [r5, #4]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #4]
	pop {r3, r4, r5, r6, pc}
_02239CDE:
	mov r1, #8
	mov r2, #0xa
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r5, #0x1c]
	bl Sprite_SetPositionXY
	add r0, r4, #0
	add r0, #0x50
	ldrb r0, [r0]
	add r4, #0x50
	sub r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_02239D04:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov59_02239C90

	thumb_func_start ov59_02239D08
ov59_02239D08: ; 0x02239D08
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	beq _02239D1E
	cmp r4, #0xc
	beq _02239D3A
	cmp r4, #0x15
	beq _02239D7E
	b _02239DDE
_02239D1E:
	ldr r0, [r5, #0x10]
	bl sub_02031C08
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r6, r0, #0
	mov r2, #5
	ldr r0, [r5, #0x60]
	sub r2, r2, r6
	bl BufferIntegerAsString
	b _02239DEE
_02239D3A:
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, [r5, #0x60]
	bls _02239D56
	add r2, r5, #0
	add r2, #0x4d
	ldrb r3, [r2]
	ldr r2, _02239E08 ; =0x000001E5
	mov r1, #0
	add r2, r3, r2
	bl BufferItemNamePlural
	b _02239D66
_02239D56:
	add r2, r5, #0
	add r2, #0x4d
	ldrb r3, [r2]
	ldr r2, _02239E08 ; =0x000001E5
	mov r1, #0
	add r2, r3, r2
	bl BufferItemName
_02239D66:
	mov r0, #0
	add r2, r5, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r2, #0x4e
	ldrb r2, [r2]
	ldr r0, [r5, #0x60]
	mov r3, #2
	bl BufferIntegerAsString
	b _02239DEE
_02239D7E:
	add r0, #0x22
	bl sub_02032004
	add r1, r0, #0
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x64]
	add r1, #0x13
	bl ReadMsgDataIntoString
	mov r1, #0
	str r1, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r5, #0x60]
	ldr r2, [r5, #0x64]
	bl BufferString
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrb r2, [r5, #0x15]
	ldr r0, [r5, #0x60]
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r5, #0x16]
	ldr r0, [r5, #0x60]
	mov r1, #2
	mov r3, #3
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r6, [r5, #0x18]
	mov r2, #5
	ldr r0, [r5, #0x60]
	mov r1, #3
	sub r2, r2, r6
	bl BufferIntegerAsString
	b _02239DEE
_02239DDE:
	add r4, #0x1b
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x68]
	add r1, r4, #0
	bl ReadMsgDataIntoString
	add sp, #8
	pop {r4, r5, r6, pc}
_02239DEE:
	add r4, #0x1b
	ldr r0, [r5, #0x5c]
	ldr r2, [r5, #0x64]
	add r1, r4, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x60]
	ldr r1, [r5, #0x68]
	ldr r2, [r5, #0x64]
	bl StringExpandPlaceholders
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02239E08: .word 0x000001E5
	thumb_func_end ov59_02239D08

	thumb_func_start ov59_02239E0C
ov59_02239E0C: ; 0x02239E0C
	push {r3, r4}
	ldrh r4, [r1]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x1c
	sub r3, r0, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r2, #0
	beq _02239E78
	cmp r2, #1
	beq _02239E5C
	cmp r2, #2
	bne _02239E78
	lsl r1, r4, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #6
	bne _02239E34
	mov r0, #0x7a
	pop {r3, r4}
	bx lr
_02239E34:
	cmp r1, #5
	bne _02239E3E
	mov r0, #0x79
	pop {r3, r4}
	bx lr
_02239E3E:
	cmp r0, #0
	bne _02239E4C
	add r1, #0x7b
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_02239E4C:
	lsl r0, r1, #1
	add r0, r1, r0
	add r0, r3, r0
	add r0, #0x6a
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_02239E5C:
	lsl r0, r4, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #6
	bne _02239E6A
	mov r0, #0x7a
	pop {r3, r4}
	bx lr
_02239E6A:
	lsl r0, r0, #2
	add r0, r3, r0
	add r0, #0x56
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_02239E78:
	ldrh r0, [r1]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #6
	bne _02239E88
	mov r0, #0x83
	pop {r3, r4}
	bx lr
_02239E88:
	cmp r1, #5
	bne _02239E96
	add r3, #0x80
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
_02239E96:
	mov r0, #6
	mul r0, r1
	add r0, r3, r0
	add r0, #0x38
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov59_02239E0C

