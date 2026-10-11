#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EAF5C
	.public ov112_021EAFFC
	.public ov112_021EB1D8
	.extern ov112_021E7CA4
	.extern ov112_021E9A78
	.extern ov112_021E9C10
	.extern ov112_021E9F40
	.extern ov112_021E9FA4
	.extern ov112_021EA51C
	.extern ov112_021EC460
	.extern ov112_021FF0AC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EAF5C
ov112_021EAF5C: ; 0x021EAF5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r1, #1
	bl ov112_021E9C10
	add r0, r5, #0
	mov r1, #3
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x11
	bl ov112_021E7CA4
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x17
	bl ov112_021E7CA4
	ldr r7, _021EAFEC ; =0x000F0100
	mov r4, #0
_021EAFA2:
	ldr r0, _021EAFF0 ; =0x0001E44C
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x98
	bl NewString_ReadMsgData
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #4
	str r7, [sp]
	bl ov112_021E9FA4
	add r0, r6, #0
	bl String_Delete
	add r4, r4, #1
	cmp r4, #4
	blt _021EAFA2
	add r0, r5, #0
	mov r1, #6
	bl ov112_021E9F40
	ldr r1, _021EAFF4 ; =0x0001EC50
	mov r0, #0
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _021EAFF8 ; =ov112_021FF0AC
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	mov r0, #3
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EAFEC: .word 0x000F0100
_021EAFF0: .word 0x0001E44C
_021EAFF4: .word 0x0001EC50
_021EAFF8: .word ov112_021FF0AC
	thumb_func_end ov112_021EAF5C

	thumb_func_start ov112_021EAFFC
ov112_021EAFFC: ; 0x021EAFFC
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _021EB1C4 ; =gSystem
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #0x40
	tst r1, r2
	beq _021EB02A
	ldr r0, _021EB1C8 ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _021EB018
	sub r1, r1, #1
	str r1, [r4, r0]
_021EB018:
	ldr r1, _021EB1C8 ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021EB1CC ; =ov112_021FF0AC
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	b _021EB1BE
_021EB02A:
	mov r1, #0x80
	tst r1, r2
	beq _021EB04E
	ldr r0, _021EB1C8 ; =0x0001EC50
	ldr r1, [r4, r0]
	cmp r1, #5
	bge _021EB03C
	add r1, r1, #1
	str r1, [r4, r0]
_021EB03C:
	ldr r1, _021EB1C8 ; =0x0001EC50
	add r0, r4, #0
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _021EB1CC ; =ov112_021FF0AC
	ldr r1, [r1, r2]
	bl ov112_021EA51C
	b _021EB1BE
_021EB04E:
	mov r1, #1
	tst r2, r1
	beq _021EB05C
	ldr r2, _021EB1C8 ; =0x0001EC50
	ldr r2, [r4, r2]
	cmp r2, #4
	bls _021EB05E
_021EB05C:
	b _021EB1BE
_021EB05E:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EB06A: ; jump table
	.short _021EB074 - _021EB06A - 2 ; case 0
	.short _021EB0BC - _021EB06A - 2 ; case 1
	.short _021EB108 - _021EB06A - 2 ; case 2
	.short _021EB152 - _021EB06A - 2 ; case 3
	.short _021EB188 - _021EB06A - 2 ; case 4
_021EB074:
	mov r0, #2
	str r0, [r4, #4]
	ldr r0, _021EB1D0 ; =0x0001E440
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_020326A4
	add r0, r4, #0
	mov r1, #3
	bl ov112_021E9C10
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	add sp, #0x10
	mov r0, #0x1a
	pop {r4, pc}
_021EB0BC:
	mov r1, #3
	ldr r2, _021EB1D4 ; =0x0001D77C
	str r1, [r4, #4]
	mov r3, #0
	strh r3, [r4, r2]
	str r3, [r4, #0x10]
	bl ov112_021E9C10
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	ldr r0, _021EB1D0 ; =0x0001E440
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_020326A4
	add sp, #0x10
	mov r0, #4
	pop {r4, pc}
_021EB108:
	ldr r0, _021EB1D0 ; =0x0001E440
	add r2, r1, #0
	ldr r0, [r4, r0]
	bl sub_020326A4
	ldr r0, _021EB1D4 ; =0x0001D77C
	mov r1, #0
	strh r1, [r4, r0]
	str r1, [r4, #0x10]
	add r0, r4, #0
	mov r1, #3
	bl ov112_021E9C10
	add r0, r4, #0
	mov r1, #7
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	add sp, #0x10
	mov r0, #0xf
	pop {r4, pc}
_021EB152:
	mov r1, #3
	bl ov112_021E9C10
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	add sp, #0x10
	mov r0, #0xa
	pop {r4, pc}
_021EB188:
	mov r1, #3
	bl ov112_021E9C10
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9A78
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	add sp, #0x10
	mov r0, #0xf
	pop {r4, pc}
_021EB1BE:
	mov r0, #3
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EB1C4: .word gSystem
_021EB1C8: .word 0x0001EC50
_021EB1CC: .word ov112_021FF0AC
_021EB1D0: .word 0x0001E440
_021EB1D4: .word 0x0001D77C
	thumb_func_end ov112_021EAFFC

	thumb_func_start ov112_021EB1D8
ov112_021EB1D8: ; 0x021EB1D8
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #6
	bl ov112_021EC460
	mov r0, #0x18
	pop {r3, pc}
	thumb_func_end ov112_021EB1D8

