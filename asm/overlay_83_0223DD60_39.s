	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240DE0
	.public ov83_02240E70
	.public ov83_02242814
	.public ov83_02242844

    .text

	thumb_func_start ov83_02240DE0
ov83_02240DE0: ; 0x02240DE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	bne _02240DF8
	mov r0, #0x76
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r2, #1
	mov r1, #0
	b _02240E00
_02240DF8:
	ldr r0, _02240E6C ; =0x00000764
	mov r2, #2
	ldr r4, [r5, r0]
	mov r1, #0x11
_02240E00:
	ldrb r0, [r5, #0x15]
	cmp r7, r0
	blo _02240E26
	add r0, r4, #0
	bl ov83_022475D4
	add r0, r4, #0
	mov r1, #0xe0
	mov r2, #0xa0
	bl ov83_02247568
	cmp r6, #0
	bne _02240E68
	add r0, r5, #0
	mov r1, #0
	bl ov83_02242844
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02240E26:
	add r0, r4, #0
	add r1, r2, #0
	bl ov83_022475D4
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	add r3, r7, #0
	bl ov83_02240E70
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov83_02247568
	cmp r6, #0
	bne _02240E68
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	blo _02240E60
	add r0, r5, #0
	mov r1, #1
	bl ov83_02242844
_02240E60:
	add r0, r5, #0
	mov r1, #0
	bl ov83_02242814
_02240E68:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240E6C: .word 0x00000764
	thumb_func_end ov83_02240DE0

