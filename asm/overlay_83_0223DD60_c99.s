	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02242AEC
	.extern _02247D0C

    .text

	.text
	thumb_func_start ov83_02242AEC
ov83_02242AEC: ; 0x02242AEC
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
	ldr r0, _02242B9C ; =_02247D0C
	add r1, sp, #4
	ldrh r2, [r0, #0x1e]
	add r3, sp, #8
	strh r2, [r1, #0x1c]
	ldrh r2, [r0, #0x20]
	strh r2, [r1, #0x1e]
	ldrh r2, [r0, #0x22]
	strh r2, [r1, #0x20]
	ldrh r2, [r0, #0x24]
	strh r2, [r1, #0x22]
	ldrh r2, [r0, #0x26]
	ldrh r0, [r0, #0x28]
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
	ldr r0, _02242BA0 ; =0x00000844
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
	mov r1, #0x21
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldrb r1, [r5, #0xe]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02242BA4 ; =0x0000073C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	ldr r0, _02242BA8 ; =0x0000074C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02242B9C: .word _02247D0C
_02242BA0: .word 0x00000844
_02242BA4: .word 0x0000073C
_02242BA8: .word 0x0000074C
	thumb_func_end ov83_02242AEC

