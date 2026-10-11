	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_0224484C
	.public ov83_02244A98
	.public ov83_02244DF4
	.public ov83_022453DC
	.public ov83_02245D08

    .text

	thumb_func_start ov83_022453DC
ov83_022453DC: ; 0x022453DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r1, sp, #0x1c
	str r1, [sp]
	add r1, sp, #0x20
	add r3, sp, #0x1c
	add r5, r0, #0
	add r1, #2
	add r2, sp, #0x20
	add r3, #2
	bl ov83_02244DF4
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02245472
	add r1, sp, #0x1c
	ldrh r0, [r1, #6]
	add r0, #0x48
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrh r0, [r1, #4]
	mov r1, #0
	add r2, r7, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r3, r6, #0
	bl FillWindowPixelRect
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	str r0, [sp, #0x18]
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x18]
	bl FrontierSave_GetStat
	mov r1, #0
	add r2, r0, #0
	str r1, [sp]
	add r0, r5, #0
	mov r3, #4
	bl ov83_02244A98
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl ov83_0224484C
	strb r0, [r5, #0xa]
	b _02245540
_02245472:
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x40
	add r3, r1, #0
	bl FillWindowPixelRect
	mov r0, #0x30
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0xc0
	add r3, r1, #0
	bl FillWindowPixelRect
	bl sub_0203769C
	cmp r0, #0
	bne _022454C6
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r6, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl FrontierSave_GetStat
	add r6, r0, #0
	ldr r0, _0224554C ; =0x000005BA
	ldrh r7, [r5, r0]
	b _022454E8
_022454C6:
	ldr r0, _0224554C ; =0x000005BA
	ldrh r6, [r5, r0]
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	add r7, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205C1F0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl FrontierSave_GetStat
	add r7, r0, #0
_022454E8:
	mov r1, #0
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02245550 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #2
	bl ov83_02245D08
	mov r1, #0
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02244A98
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02245550 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02245D08
_02245540:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0224554C: .word 0x000005BA
_02245550: .word 0x00010200
	thumb_func_end ov83_022453DC

