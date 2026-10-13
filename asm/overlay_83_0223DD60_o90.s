	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02241770
	.extern ov83_0223FCB4
	.extern ov83_02240C48
	.extern ov83_02240F7C
	.extern ov83_02241DD8

    .text

	.text
	thumb_func_start ov83_02241770
ov83_02241770: ; 0x02241770
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
	bl ov83_02240F7C
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241806
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
	bl ov83_02240C48
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
	bl ov83_0223FCB4
	strb r0, [r5, #0xa]
	b _022418D4
_02241806:
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
	bne _0224185A
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
	ldr r0, _022418E0 ; =0x00000802
	ldrh r7, [r5, r0]
	b _0224187C
_0224185A:
	ldr r0, _022418E0 ; =0x00000802
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
_0224187C:
	mov r1, #0
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	mov r0, #0x70
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022418E4 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #2
	bl ov83_02241DD8
	mov r1, #0
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #4
	str r1, [sp]
	bl ov83_02240C48
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022418E4 ; =0x00010200
	add r1, r4, #0
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x20]
	add r0, r5, #0
	mov r3, #3
	bl ov83_02241DD8
_022418D4:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022418E0: .word 0x00000802
_022418E4: .word 0x00010200
	thumb_func_end ov83_02241770

