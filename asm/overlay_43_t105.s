	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DB94
	.public ov43_0222DC7C
	.public ov43_0222DCC4
	.public ov43_0222DD40
	.extern _0222ED5C
	.extern ov43_0222EDB8
	.extern ov43_0222EDF8
	.extern ov43_0222F0C4

	.text

	.text
	thumb_func_start ov43_0222DB94
ov43_0222DB94: ; 0x0222DB94
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	add r5, r1, #0
	add r4, r2, #0
	cmp r0, #1
	bne _0222DBDC
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r1, #0xc
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	mov r3, #0x14
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl CopyToBgTilemapRect
	b _0222DC10
_0222DBDC:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, #0x14
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl CopyToBgTilemapRect
_0222DC10:
	cmp r4, #0xff
	bne _0222DC20
	ldr r0, [r5]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_0222DC20:
	mov r0, #0x83
	ldr r1, [r6, #0x10]
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	ldr r2, _0222DC70 ; =ov43_0222EDB8
	lsl r0, r1, #3
	add r2, r2, r0
	ldr r6, _0222DC74 ; =ov43_0222EDF8
	ldrb r2, [r4, r2]
	add r0, r6, r0
	ldrb r0, [r4, r0]
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r0, r3, #0
	add r0, #0xc
	str r0, [sp, #8]
	ldr r0, _0222DC78 ; =ov43_0222F0C4
	str r2, [sp, #0xc]
	ldrb r0, [r0, r1]
	mov r1, #2
	str r0, [sp, #0x10]
	ldrh r0, [r3]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r3, #2]
	mov r3, #0x14
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5]
	bl CopyToBgTilemapRect
	ldr r0, [r5]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222DC70: .word ov43_0222EDB8
_0222DC74: .word ov43_0222EDF8
_0222DC78: .word ov43_0222F0C4
	thumb_func_end ov43_0222DB94

	thumb_func_start ov43_0222DC7C
ov43_0222DC7C: ; 0x0222DC7C
	push {r3, r4, lr}
	sub sp, #0x1c
	mov r0, #0x83
	add r4, r1, #0
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r1, #0x1c
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	mov r3, #0x14
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov43_0222DC7C

	thumb_func_start ov43_0222DCC4
ov43_0222DCC4: ; 0x0222DCC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r7, r1, #0
	bl sub_0202C6F4
	add r6, r0, #0
	mov r0, #0xb
	ldrsb r4, [r5, r0]
	cmp r7, #0
	bne _0222DD0A
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _0222DD3A
_0222DCE2:
	sub r4, r4, #1
	bpl _0222DCE8
	add r4, r4, r1
_0222DCE8:
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #8
	bl sub_0202C090
	cmp r0, #2
	beq _0222DCFE
	strb r4, [r5, #0xb]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222DCFE:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _0222DCE2
	b _0222DD3A
_0222DD0A:
	ldr r1, [r5, #0x10]
	mov r7, #0
	sub r0, r1, #1
	beq _0222DD3A
_0222DD12:
	add r0, r4, #1
	bl _u32_div_f
	add r4, r1, #0
	add r1, r5, r4
	ldrb r1, [r1, #0x18]
	add r0, r6, #0
	mov r2, #8
	bl sub_0202C090
	cmp r0, #2
	beq _0222DD30
	strb r4, [r5, #0xb]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222DD30:
	ldr r1, [r5, #0x10]
	add r7, r7, #1
	sub r0, r1, #1
	cmp r7, r0
	blo _0222DD12
_0222DD3A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222DCC4

	thumb_func_start ov43_0222DD40
ov43_0222DD40: ; 0x0222DD40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	ldr r1, _0222DD84 ; =_0222ED5C
	str r2, [sp, #4]
	ldrh r2, [r1, #0x2e]
	add r5, r0, #0
	add r0, sp, #8
	strh r2, [r0]
	ldrh r2, [r1, #0x30]
	add r4, sp, #8
	mov r6, #0
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x32]
	ldrh r1, [r1, #0x34]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
_0222DD62:
	ldr r0, [sp, #4]
	mov r2, #1
	str r0, [sp]
	ldrh r1, [r4]
	ldr r0, [r7, #0x58]
	add r3, r5, #4
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	str r0, [r5]
	add r6, r6, #1
	add r5, #8
	add r4, r4, #2
	cmp r6, #4
	blt _0222DD62
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DD84: .word _0222ED5C
	thumb_func_end ov43_0222DD40

