#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EADD0
	.extern ov112_021E7CA4
	.extern ov112_021E9290
	.extern ov112_021E9610
	.extern ov112_021E98E8
	.extern ov112_021EA010
	.extern ov112_021EA044
	.extern ov112_021EA64C
	.extern ov112_021EA670
	.extern ov112_021EA688
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EADD0
ov112_021EADD0: ; 0x021EADD0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021EAF28 ; =0x0001E440
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_02032674
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021EAF2C ; =0x0001E448
	mov r1, #7
	ldr r0, [r5, r0]
	ldr r2, [sp, #8]
	add r3, r1, #0
	bl BufferIntegerAsString
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021EAF2C ; =0x0001E448
	ldr r2, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #6
	mov r3, #7
	bl BufferIntegerAsString
	ldr r1, [sp, #8]
	add r0, r5, #0
	bl ov112_021E9610
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _021EAF2C ; =0x0001E448
	mov r1, #0xc
	ldr r0, [r5, r0]
	add r2, r4, #0
	mov r3, #7
	bl BufferIntegerAsString
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x10
	bl ov112_021E7CA4
	add r0, r5, #0
	mov r1, #1
	bl ov112_021E98E8
	ldr r0, _021EAF30 ; =0x0001F2E0
	mov r3, #0
	strh r3, [r5, r0]
	ldr r0, _021EAF34 ; =0x00010200
	ldr r2, _021EAF38 ; =0x0001E50C
	str r0, [sp]
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #1
	bl ov112_021EA010
	ldr r3, _021EAF34 ; =0x00010200
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x53
	bl ov112_021EA044
	ldr r0, _021EAF34 ; =0x00010200
	ldr r2, _021EAF3C ; =0x0001E510
	str r0, [sp]
	ldr r2, [r5, r2]
	add r0, r5, #0
	mov r1, #3
	mov r3, #0
	bl ov112_021EA010
	ldr r3, _021EAF34 ; =0x00010200
	add r0, r5, #0
	mov r1, #4
	mov r2, #0x54
	bl ov112_021EA044
	cmp r4, #0
	ldr r3, _021EAF34 ; =0x00010200
	bge _021EAE94
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x58
	bl ov112_021EA044
	b _021EAEAE
_021EAE94:
	cmp r4, #0
	bne _021EAEA4
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x57
	bl ov112_021EA044
	b _021EAEAE
_021EAEA4:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x56
	bl ov112_021EA044
_021EAEAE:
	cmp r6, #0
	beq _021EAF04
	mov r0, #0x9a
	bl AllocMonZeroed
	add r6, r0, #0
	bl Mon_GetBoxMon
	add r4, r0, #0
	ldr r0, _021EAF28 ; =0x0001E440
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokewalker_TryGetBoxMon
	ldr r0, _021EAF2C ; =0x0001E448
	mov r1, #0xd
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl BufferBoxMonNickname
	mov r3, #0xc1
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x59
	lsl r3, r3, #0xa
	bl ov112_021EA044
	ldr r2, _021EAF40 ; =0x0001D7AC
	add r0, r4, #0
	add r1, r5, r2
	sub r2, #0x10
	add r2, r5, r2
	mov r3, #1
	bl ov112_021E9290
	add r0, r5, #0
	mov r1, #7
	bl ov112_021EA670
	add r0, r6, #0
	bl Heap_Free
	b _021EAF1E
_021EAF04:
	add r0, r5, #0
	mov r1, #7
	bl ov112_021EA688
	ldr r0, _021EAF44 ; =0x0001EBF8
	mov r1, #0
	add r0, r5, r0
	bl FillWindowPixelBuffer
	ldr r0, _021EAF44 ; =0x0001EBF8
	add r0, r5, r0
	bl CopyWindowToVram
_021EAF1E:
	add r0, r5, #0
	bl ov112_021EA64C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EAF28: .word 0x0001E440
_021EAF2C: .word 0x0001E448
_021EAF30: .word 0x0001F2E0
_021EAF34: .word 0x00010200
_021EAF38: .word 0x0001E50C
_021EAF3C: .word 0x0001E510
_021EAF40: .word 0x0001D7AC
_021EAF44: .word 0x0001EBF8
	thumb_func_end ov112_021EADD0

