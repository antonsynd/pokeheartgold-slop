#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E6508
	.extern ov73_021E64B0
	.extern ov73_021E670C
	.extern ov73_021E71E4
	.extern ov73_021E746C
	.extern ov73_021E756C
	.extern ov73_021E781C
	.extern ov73_021EA534

	.text

	.text
	thumb_func_start ov73_021E6508
ov73_021E6508: ; 0x021E6508
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r4, #0
	bl ov73_021E64B0
	ldr r0, _021E66C8 ; =ov73_021EA534
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r6, r0, #0
	ldr r1, _021E66CC ; =0x0000FFD5
	add r0, sp, #4
	strh r1, [r0, #4]
	sub r0, r4, #1
	cmp r6, r0
	beq _021E6544
	add r0, sp, #8
	str r0, [sp]
	ldr r3, _021E66D0 ; =gSystem + 0x40
	ldr r0, [r5]
	ldrh r2, [r3, #0x20]
	ldrh r3, [r3, #0x22]
	mov r1, #1
	bl DoesPixelAtScreenXYMatchPtrVal
	cmp r0, #0
	beq _021E6544
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021E6544:
	ldr r0, _021E66D4 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021E6552
	cmp r4, #1
	bne _021E65BE
_021E6552:
	bl sub_0203769C
	cmp r0, #0
	beq _021E655C
	b _021E669C
_021E655C:
	bl ov73_021E746C
	ldr r1, _021E66D8 ; =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E65B6
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021E65B6
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0, #2]
	add r0, r5, #0
	mov r1, #3
	mov r2, #0
	bl ov73_021E756C
	add r0, r5, #0
	mov r1, #0x16
	bl ov73_021E670C
	add r1, sp, #4
	mov r0, #0x75
	add r1, #2
	mov r2, #1
	bl sub_02037030
	add r0, r5, #0
	mov r1, #0
	bl ov73_021E781C
	ldr r0, _021E66DC ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov73_021E71E4
	ldr r0, [r5]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	b _021E669C
_021E65B6:
	ldr r0, _021E66E0 ; =0x000005F2
	bl PlaySE
	b _021E669C
_021E65BE:
	mov r0, #2
	tst r0, r1
	bne _021E65C8
	cmp r4, #2
	bne _021E6670
_021E65C8:
	bl sub_0203769C
	cmp r0, #0
	beq _021E660C
	ldr r1, _021E66E4 ; =0x00004A10
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021E65F4
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ov73_021E756C
	add r0, r5, #0
	mov r1, #4
	bl ov73_021E670C
	mov r0, #0x25
	lsl r0, r0, #6
	bl PlaySE
	b _021E669C
_021E65F4:
	add r0, r1, #0
	add r0, #0x28
	ldr r0, [r5, r0]
	cmp r0, #0
	bge _021E669C
	mov r0, #2
	add r1, #0x28
	str r0, [r5, r1]
	ldr r0, _021E66E0 ; =0x000005F2
	bl PlaySE
	b _021E669C
_021E660C:
	bl sub_02037454
	ldr r1, _021E66D8 ; =0x00004A1C
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021E6668
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021E6668
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	bl ov73_021E756C
	add r0, r5, #0
	mov r1, #4
	bl ov73_021E670C
	add r1, sp, #4
	mov r0, #0x75
	add r1, #1
	mov r2, #1
	bl sub_02037030
	add r0, r5, #0
	mov r1, #0
	bl ov73_021E781C
	mov r0, #0x25
	lsl r0, r0, #6
	bl PlaySE
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov73_021E71E4
	ldr r0, [r5]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	b _021E669C
_021E6668:
	ldr r0, _021E66E0 ; =0x000005F2
	bl PlaySE
	b _021E669C
_021E6670:
	ldr r0, _021E66E8 ; =0x00004A20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E669C
	bl sub_0203769C
	cmp r0, #0
	bne _021E669C
	bl sub_02037454
	ldr r1, _021E66D8 ; =0x00004A1C
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021E669C
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0]
	mov r0, #0x75
	add r1, sp, #4
	mov r2, #1
	bl sub_02037030
_021E669C:
	ldr r0, _021E66EC ; =0x00004A38
	ldr r1, [r5, r0]
	cmp r1, #0
	blt _021E66A8
	sub r1, r1, #1
	str r1, [r5, r0]
_021E66A8:
	ldr r0, _021E66EC ; =0x00004A38
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021E66C2
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov73_021E71E4
	ldr r0, [r5]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
_021E66C2:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E66C8: .word ov73_021EA534
_021E66CC: .word 0x0000FFD5
_021E66D0: .word gSystem + 0x40
_021E66D4: .word gSystem
_021E66D8: .word 0x00004A1C
_021E66DC: .word 0x000005DC
_021E66E0: .word 0x000005F2
_021E66E4: .word 0x00004A10
_021E66E8: .word 0x00004A20
_021E66EC: .word 0x00004A38
	thumb_func_end ov73_021E6508

