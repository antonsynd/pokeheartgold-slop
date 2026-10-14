	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223E820
	.public ov82_0223E888
	.extern ov82_0223F834
	.extern ov82_0223F90C
	.extern ov82_0223FCB0

	.text

	.text
	thumb_func_start ov82_0223E820
ov82_0223E820: ; 0x0223E820
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0223E836
	cmp r1, #1
	beq _0223E842
	cmp r1, #2
	beq _0223E872
	b _0223E880
_0223E836:
	mov r0, #0xa
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E880
_0223E842:
	ldrb r1, [r4, #0x1b]
	sub r1, r1, #1
	strb r1, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	cmp r1, #0
	bne _0223E880
	bl ov82_0223F90C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x69
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E880
_0223E872:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0223E880
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223E880:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov82_0223E820

	thumb_func_start ov82_0223E888
ov82_0223E888: ; 0x0223E888
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0223E898
	cmp r1, #1
	beq _0223E8BA
	b _0223E8BE
_0223E898:
	bl ov82_0223F834
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov82_0223FCB0
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0
	bl ClearFrameAndWindow2
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0223E8BE
_0223E8BA:
	mov r0, #1
	pop {r4, pc}
_0223E8BE:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov82_0223E888

