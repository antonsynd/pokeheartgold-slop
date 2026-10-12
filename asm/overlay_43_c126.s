	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222DB94
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

