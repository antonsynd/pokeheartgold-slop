	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223BBD4

	.text

	.text
	thumb_func_start ov59_0223BBD4
ov59_0223BBD4: ; 0x0223BBD4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #0xb
	bhi _0223BC42
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BBEA: ; jump table
	.short _0223BC02 - _0223BBEA - 2 ; case 0
	.short _0223BC24 - _0223BBEA - 2 ; case 1
	.short _0223BC2E - _0223BBEA - 2 ; case 2
	.short _0223BC2E - _0223BBEA - 2 ; case 3
	.short _0223BC2E - _0223BBEA - 2 ; case 4
	.short _0223BC2E - _0223BBEA - 2 ; case 5
	.short _0223BC2E - _0223BBEA - 2 ; case 6
	.short _0223BC38 - _0223BBEA - 2 ; case 7
	.short _0223BC38 - _0223BBEA - 2 ; case 8
	.short _0223BC38 - _0223BBEA - 2 ; case 9
	.short _0223BC38 - _0223BBEA - 2 ; case 10
	.short _0223BC38 - _0223BBEA - 2 ; case 11
_0223BC02:
	ldrh r0, [r4, #0x20]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #6
	bne _0223BC10
	mov r1, #0xc
	b _0223BC20
_0223BC10:
	cmp r1, #5
	bne _0223BC1E
	add r0, r4, #0
	add r0, #0x26
	ldrb r1, [r0]
	add r1, #0xd
	b _0223BC20
_0223BC1E:
	add r1, #0xd
_0223BC20:
	mov r5, #0
	b _0223BC48
_0223BC24:
	add r0, r4, #0
	add r0, #0x4b
	mov r1, #0x12
	ldrb r5, [r0]
	b _0223BC48
_0223BC2E:
	add r0, r4, #0
	add r0, #0x4b
	add r1, #0x11
	ldrb r5, [r0]
	b _0223BC48
_0223BC38:
	add r0, r4, #0
	add r0, #0x4b
	add r1, #0x11
	ldrb r5, [r0]
	b _0223BC48
_0223BC42:
	add r0, r4, #0
	add r0, #0x4b
	ldrb r5, [r0]
_0223BC48:
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x68]
	bl ReadMsgDataIntoString
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223BC84 ; =0x0001020F
	str r5, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r2, [r4, #0x68]
	add r0, r4, r0
	mov r1, #1
	bl AddTextPrinterParameterizedWithColor
	add r1, r4, #0
	add r1, #0x4d
	strb r0, [r1]
	cmp r5, #0
	bne _0223BC7E
	mov r0, #0x6d
	lsl r0, r0, #2
	add r0, r4, r0
	bl ScheduleWindowCopyToVram
_0223BC7E:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223BC84: .word 0x0001020F
	thumb_func_end ov59_0223BBD4

