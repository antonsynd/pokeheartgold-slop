	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02242CFC
	.extern ov40_0222C4E8
	.extern ov40_0222D8C8
	.extern ov40_0222E7B8
	.extern ov40_0223064C
	.extern ov40_02230964
	.extern ov40_02240910
	.extern ov40_02241A34
	.extern ov40_022421FC

	.text

	.text
	thumb_func_start ov40_02242CFC
ov40_02242CFC: ; 0x02242CFC
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242D18
	cmp r1, #1
	beq _02242D38
	cmp r1, #2
	beq _02242D48
	b _02242DD6
_02242D18:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242DDC
_02242D38:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02242DDC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242DDC
_02242D48:
	mov r1, #1
	bl ov40_02230964
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02242D64
	sub r0, #0xc0
	add r0, r4, r0
	add r1, r5, #0
	bl ov40_0223064C
	b _02242D6E
_02242D64:
	add r0, r4, #0
	add r0, #0x80
	add r1, r5, #0
	bl ov40_0222E7B8
_02242D6E:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, _02242DE4 ; =0x00000608
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	ldr r0, _02242DE8 ; =0x0000060C
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	mov r0, #0x61
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_02240910
	add r0, r5, #0
	bl ov40_02241A34
	add r0, r5, #0
	bl ov40_022421FC
	add r0, r5, #0
	bl ov40_0222D8C8
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	ldr r1, [r1]
	bl ov40_0222C4E8
	ldr r0, _02242DEC ; =0x00000868
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_02087A84
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02242DDC
_02242DD6:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02242DDC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02242DE4: .word 0x00000608
_02242DE8: .word 0x0000060C
_02242DEC: .word 0x00000868
	thumb_func_end ov40_02242CFC

