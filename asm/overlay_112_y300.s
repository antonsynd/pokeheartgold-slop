#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EEF68
	.public ov112_021EF03C
	.extern ov112_021E77E4
	.extern ov112_021EF15C
	.extern ov112_021EF17C
	.extern ov112_021EF19C
	.extern ov112_021EF1CC
	.extern ov112_021EF298
	.extern ov112_021EF300
	.extern ov112_021EF310
	.extern ov112_021EF31C
	.extern ov112_021EF3F8
	.extern ov112_021F039C
	.extern ov112_021F03BC
	.extern ov112_021F050C
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EEF68
ov112_021EEF68: ; 0x021EEF68
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r6, _021EF028 ; =0x0001D764
	add r5, r0, #0
	ldr r1, [r5, r6]
	cmp r1, #0
	beq _021EEF7C
	cmp r1, #1
	beq _021EEF86
	b _021EF022
_021EEF7C:
	bl ov112_021E77E4
	mov r0, #1
	str r0, [r5, r6]
	b _021EF022
_021EEF86:
	mov r0, #0x9a
	bl BgConfig_Alloc
	str r0, [r5, #0x18]
	bl ov112_021EF15C
	mov r0, #0x9a
	mov r1, #1
	mov r2, #0x12
	bl sub_020932E0
	add r1, r6, #4
	str r0, [r5, r1]
	mov r0, #0x9a
	bl ov112_021F039C
	add r1, r6, #0
	add r1, #8
	str r0, [r5, r1]
	ldr r0, [r5, #0x18]
	bl ov112_021EF17C
	bl ov112_021EF19C
	add r0, r6, #0
	add r0, r5, r0
	bl ov112_021EF1CC
	mov r1, #0
	add r0, r6, #0
	str r1, [r5, r0]
	ldr r0, [r5, #0x20]
	bl SaveArray_PCStorage_Get
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	bl SaveArray_Party_Get
	mov r1, #0
	str r1, [sp]
	add r3, r0, #0
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021EF02C ; =ov112_021EF298
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021EF030 ; =ov112_021EF300
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r0, #0xc
	add r1, r5, r0
	str r1, [sp, #0x18]
	ldr r1, _021EF034 ; =ov112_021EF3F8
	sub r0, #8
	str r1, [sp, #0x1c]
	str r5, [sp, #0x20]
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x18]
	bl sub_02093440
	add r0, r6, #0
	add r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x18]
	bl ov112_021F03BC
	add r1, r6, #0
	ldr r0, _021EF038 ; =ov112_021EF310
	add r1, r5, r1
	bl Main_SetVBlankIntrCB
	mov r0, #0
	str r0, [r5, r6]
	add sp, #0x24
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021EF022:
	mov r0, #1
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EF028: .word 0x0001D764
_021EF02C: .word ov112_021EF298
_021EF030: .word ov112_021EF300
_021EF034: .word ov112_021EF3F8
_021EF038: .word ov112_021EF310
	thumb_func_end ov112_021EEF68

	thumb_func_start ov112_021EF03C
ov112_021EF03C: ; 0x021EF03C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021EF0FC ; =0x0001D764
	add r4, r5, r0
	ldr r0, [r4]
	cmp r0, #5
	bhi _021EF0EA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF058: ; jump table
	.short _021EF064 - _021EF058 - 2 ; case 0
	.short _021EF06A - _021EF058 - 2 ; case 1
	.short _021EF086 - _021EF058 - 2 ; case 2
	.short _021EF094 - _021EF058 - 2 ; case 3
	.short _021EF0B6 - _021EF058 - 2 ; case 4
	.short _021EF0D4 - _021EF058 - 2 ; case 5
_021EF064:
	mov r0, #1
	str r0, [r4]
	b _021EF0EA
_021EF06A:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x9a
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #2
	str r0, [r4]
	b _021EF0EA
_021EF086:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EF0EA
	mov r0, #3
	str r0, [r4]
	b _021EF0EA
_021EF094:
	ldr r0, [r4, #4]
	bl sub_020935E0
	cmp r0, #2
	bne _021EF0A8
	mov r0, #0
	str r0, [r4, #0x14]
	mov r0, #4
	str r0, [r4]
	b _021EF0EA
_021EF0A8:
	cmp r0, #3
	bne _021EF0EA
	mov r0, #1
	str r0, [r4, #0x14]
	mov r0, #4
	str r0, [r4]
	b _021EF0EA
_021EF0B6:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x9a
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #5
	str r0, [r4]
	b _021EF0EA
_021EF0D4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021EF0EA
	add r0, r4, #0
	add r1, r5, #0
	bl ov112_021EF31C
	add sp, #0xc
	mov r0, #3
	pop {r4, r5, pc}
_021EF0EA:
	ldr r0, [r4, #4]
	bl sub_02093A40
	ldr r0, [r4, #8]
	bl ov112_021F050C
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021EF0FC: .word 0x0001D764
	thumb_func_end ov112_021EF03C

