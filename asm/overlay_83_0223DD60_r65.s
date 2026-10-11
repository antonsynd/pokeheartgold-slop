	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02241770
	.public ov83_022418E8
	.extern ov83_0223FCB4
	.extern ov83_0224042C
	.extern ov83_02240C48
	.extern ov83_02240C6C
	.extern ov83_02240EF8
	.extern ov83_02240F7C
	.extern ov83_02241354
	.extern ov83_022415F4
	.extern ov83_022416A0
	.extern ov83_02241730
	.extern ov83_02241A60
	.extern ov83_02241ABC
	.extern ov83_02241B18
	.extern ov83_02241DD8
	.extern ov83_02247D18

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

	thumb_func_start ov83_022418E8
ov83_022418E8: ; 0x022418E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _02241A4C ; =0x000005E3
	add r7, r1, #0
	add r5, r2, #0
	bl PlaySE
	ldrb r0, [r4, #0x15]
	add r1, r7, #0
	str r0, [sp]
	bl ov83_0224776C
	str r0, [sp, #4]
	cmp r5, #0xa
	bhi _02241940
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241914: ; jump table
	.short _02241940 - _02241914 - 2 ; case 0
	.short _0224192A - _02241914 - 2 ; case 1
	.short _0224192A - _02241914 - 2 ; case 2
	.short _0224192A - _02241914 - 2 ; case 3
	.short _02241940 - _02241914 - 2 ; case 4
	.short _02241940 - _02241914 - 2 ; case 5
	.short _02241934 - _02241914 - 2 ; case 6
	.short _02241934 - _02241914 - 2 ; case 7
	.short _02241940 - _02241914 - 2 ; case 8
	.short _0224193E - _02241914 - 2 ; case 9
	.short _0224193E - _02241914 - 2 ; case 10
_0224192A:
	sub r0, r5, #1
	lsl r1, r0, #1
	ldr r0, _02241A50 ; =ov83_02247D18
	ldrh r6, [r0, r1]
	b _02241940
_02241934:
	ldrh r0, [r4, #0x10]
	bl ov83_02240EF8
	add r6, r0, #0
	b _02241940
_0224193E:
	mov r6, #0
_02241940:
	bl sub_0203769C
	cmp r0, #0
	bne _02241974
	ldr r0, [sp]
	cmp r7, r0
	bhs _02241962
	add r0, r4, #0
	mov r1, #5
	bl ov83_02240C6C
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r6, #0
	bl ov80_02237FA4
	b _0224199E
_02241962:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241A54 ; =0x00000802
	ldrh r1, [r4, r0]
	sub r1, r1, r6
	strh r1, [r4, r0]
	b _0224199E
_02241974:
	ldr r0, [sp]
	cmp r7, r0
	bhs _0224198C
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241A54 ; =0x00000802
	ldrh r1, [r4, r0]
	sub r1, r1, r6
	strh r1, [r4, r0]
	b _0224199E
_0224198C:
	add r0, r4, #0
	mov r1, #5
	bl ov83_02240C6C
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r6, #0
	bl ov80_02237FA4
_0224199E:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov83_02241770
	add r0, r4, #0
	bl ov83_02241730
	add r0, r4, #0
	bl ov83_02241B18
	add r0, r4, #0
	bl ov83_0224042C
	ldr r2, _02241A58 ; =0x00000868
	mov r0, #2
	mov r1, #0
	add r2, r4, r2
	bl ov83_022477EC
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02241354
	cmp r5, #0xa
	bhi _02241A48
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022419DE: ; jump table
	.short _02241A48 - _022419DE - 2 ; case 0
	.short _022419F4 - _022419DE - 2 ; case 1
	.short _022419F4 - _022419DE - 2 ; case 2
	.short _022419F4 - _022419DE - 2 ; case 3
	.short _02241A48 - _022419DE - 2 ; case 4
	.short _02241A48 - _022419DE - 2 ; case 5
	.short _02241A14 - _022419DE - 2 ; case 6
	.short _02241A14 - _022419DE - 2 ; case 7
	.short _02241A48 - _022419DE - 2 ; case 8
	.short _02241A34 - _022419DE - 2 ; case 9
	.short _02241A40 - _022419DE - 2 ; case 10
_022419F4:
	ldr r0, _02241A5C ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r5, #0
	bl ov83_022415F4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241A14:
	ldr r0, _02241A5C ; =0x00000508
	ldr r0, [r4, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xb0
	bl ov83_02247944
	ldrh r2, [r4, #0x10]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_022416A0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241A34:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02241A60
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241A40:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov83_02241ABC
_02241A48:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02241A4C: .word 0x000005E3
_02241A50: .word ov83_02247D18
_02241A54: .word 0x00000802
_02241A58: .word 0x00000868
_02241A5C: .word 0x00000508
	thumb_func_end ov83_022418E8

