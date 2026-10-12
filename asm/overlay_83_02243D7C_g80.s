	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022469E4
	.public ov83_02246AA4
	.public ov83_02246B6C
	.extern ov83_02248010
	.extern ov83_02248018

    .text

	.text
	thumb_func_start ov83_022469E4
ov83_022469E4: ; 0x022469E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	add r0, #2
	add r1, sp, #4
	add r6, r2, #0
	add r7, r3, #0
	bl ov83_02247988
	ldr r0, _02246A90 ; =ov83_02248018
	add r1, sp, #4
	ldrh r2, [r0]
	add r3, sp, #8
	strh r2, [r1, #0x1c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x1e]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0x20]
	ldrh r2, [r0, #6]
	strh r2, [r1, #0x22]
	ldrh r2, [r0, #8]
	ldrh r0, [r0, #0xa]
	strh r2, [r1, #0x24]
	strh r0, [r1, #0x26]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0x22]
	ldrh r2, [r1]
	add r0, r0, r2
	sub r0, #0x1b
	strh r0, [r1, #0x24]
	strh r2, [r1, #0x26]
	ldrh r0, [r1, #0x1c]
	strh r0, [r1, #4]
	ldrh r0, [r1, #0x1e]
	strh r0, [r1, #6]
	ldrh r0, [r1, #0x20]
	strh r0, [r1, #8]
	ldrh r0, [r1, #0x22]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0x24]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0x26]
	strh r0, [r1, #0xe]
	ldr r0, _02246A94 ; =0x000005FC
	ldr r2, [r5, r0]
	sub r0, #8
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	str r2, [sp, #0x18]
	strb r4, [r1, #0x18]
	add r1, sp, #0x30
	ldrb r1, [r1, #0x10]
	add r2, r6, #0
	str r1, [sp]
	add r1, r3, #0
	ldr r0, [r5, r0]
	add r3, r7, #0
	bl ov83_02247CCC
	ldr r1, _02246A98 ; =0x000005F8
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, #0xf]
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02246A9C ; =0x000004E4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	ldr r0, _02246AA0 ; =0x000004F4
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02246A90: .word ov83_02248018
_02246A94: .word 0x000005FC
_02246A98: .word 0x000005F8
_02246A9C: .word 0x000004E4
_02246AA0: .word 0x000004F4
	thumb_func_end ov83_022469E4

	thumb_func_start ov83_02246AA4
ov83_02246AA4: ; 0x02246AA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x6b
	mov r4, #0
	bl ListMenuItems_New
	ldr r1, _02246B5C ; =0x000005FC
	mov r2, #2
	str r0, [r5, r1]
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	bl ov83_0224777C
	add r7, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r6, r0, #0
	ldr r0, _02246B60 ; =0x0000054C
	ldr r1, [r5, r0]
	ldrb r1, [r1, r6]
	cmp r1, #0
	bne _02246AEE
	add r0, #0xb0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	mov r2, #8
	add r3, r4, #0
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246AEE:
	ldr r0, _02246B5C ; =0x000005FC
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	mov r2, #9
	mov r3, #1
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02246B64 ; =0x00000554
	ldr r1, [r5, r0]
	ldrb r1, [r1, r6]
	cmp r1, #0
	beq _02246B1A
	add r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	beq _02246B1A
	cmp r7, #2
	beq _02246B2E
_02246B1A:
	ldr r0, _02246B5C ; =0x000005FC
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	mov r2, #0xa
	mov r3, #2
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246B2E:
	ldr r0, _02246B5C ; =0x000005FC
	mov r2, #0xb
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	sub r3, #0xd
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsl r1, r3, #0x18
	ldr r4, _02246B68 ; =ov83_02248010
	mov r0, #0xd
	str r0, [sp]
	ldrb r3, [r4, r3]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0x11
	bl ov83_022469E4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246B5C: .word 0x000005FC
_02246B60: .word 0x0000054C
_02246B64: .word 0x00000554
_02246B68: .word ov83_02248010
	thumb_func_end ov83_02246AA4

	thumb_func_start ov83_02246B6C
ov83_02246B6C: ; 0x02246B6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x6b
	mov r4, #0
	bl ListMenuItems_New
	ldr r1, _02246C1C ; =0x000005FC
	mov r2, #2
	str r0, [r5, r1]
	mov r0, #0xaf
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	bl ov83_0224777C
	add r6, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r7, r0, #0
	ldr r0, _02246C20 ; =0x00000554
	ldr r1, [r5, r0]
	ldrb r1, [r1, r7]
	cmp r1, #0
	bne _02246BB6
	add r0, #0xa8
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	mov r2, #0x21
	mov r3, #3
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246BB6:
	cmp r6, #1
	beq _02246BD8
	ldr r0, _02246C24 ; =0x00000558
	ldr r1, [r5, r0]
	ldrb r1, [r1, r7]
	cmp r1, #0
	bne _02246BD8
	add r0, #0xa4
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	mov r2, #0x22
	mov r3, #4
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246BD8:
	cmp r6, #2
	beq _02246BF0
	ldr r0, _02246C1C ; =0x000005FC
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	mov r2, #0x23
	mov r3, #5
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_02246BF0:
	ldr r0, _02246C1C ; =0x000005FC
	mov r2, #0x24
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	sub r3, #0x26
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsl r1, r3, #0x18
	ldr r4, _02246C28 ; =ov83_02248010
	mov r0, #0xd
	str r0, [sp]
	ldrb r3, [r4, r3]
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0x11
	bl ov83_022469E4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02246C1C: .word 0x000005FC
_02246C20: .word 0x00000554
_02246C24: .word 0x00000558
_02246C28: .word ov83_02248010
	thumb_func_end ov83_02246B6C

