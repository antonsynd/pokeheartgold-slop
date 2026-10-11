	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221E564
	.public ov05_0221E5E4
	.extern ov05_0221EC5C
	.extern ov05_0221ECE4

	.text

	.text
	thumb_func_start ov05_0221E564
ov05_0221E564: ; 0x0221E564
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0]
	add r7, r1, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0221E57E
	mov r0, #3
	str r0, [sp, #8]
	lsl r0, r7, #0x13
	b _0221E588
_0221E57E:
	mov r0, #0
	str r0, [sp, #8]
	lsl r0, r7, #3
	neg r0, r0
	lsl r0, r0, #0x10
_0221E588:
	asr r7, r0, #0x10
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0xa
	ldr r2, _0221E5E0 ; =ov05_0221EC5C
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #4]
_0221E59A:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #4]
	add r1, r1, r0
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r1, r0, #2
	ldr r0, [sp]
	mov r6, #0
	add r5, r0, r1
_0221E5AE:
	ldrb r1, [r4]
	mov r0, #0x66
	lsl r0, r0, #2
	add r1, r7, r1
	lsl r1, r1, #0x10
	ldrb r2, [r4, #1]
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	bl ManagedSprite_SetPositionXY
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #4
	cmp r6, #5
	blt _0221E5AE
	ldr r0, [sp, #4]
	add r0, #0xa
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _0221E59A
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221E5E0: .word ov05_0221EC5C
	thumb_func_end ov05_0221E564

	thumb_func_start ov05_0221E5E4
ov05_0221E5E4: ; 0x0221E5E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	ldr r4, _0221E608 ; =ov05_0221ECE4
	mov r6, #0
	add r5, #0x10
_0221E5F0:
	ldr r0, [r7, #0xc]
	add r1, r5, #0
	add r2, r4, #0
	bl AddWindow
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, #0x18
	blo _0221E5F0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221E608: .word ov05_0221ECE4
	thumb_func_end ov05_0221E5E4

