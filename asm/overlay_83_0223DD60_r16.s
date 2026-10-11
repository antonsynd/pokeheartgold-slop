	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_022400BC

    .text

	.text
	thumb_func_start ov83_022400BC
ov83_022400BC: ; 0x022400BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02240168 ; =0x000007A4
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r7, r3, #0
	bl Party_GetMonByIndex
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _022400E2
	mov r0, #0x24
	b _022400E4
_022400E2:
	mov r0, #4
_022400E4:
	cmp r7, #0
	bne _0224010A
	lsl r1, r4, #6
	add r2, r0, r1
	lsl r2, r2, #0x10
	lsr r7, r2, #0x10
	add r2, r0, #0
	add r2, #0x18
	add r2, r2, r1
	add r0, #0x20
	lsl r2, r2, #0x10
	add r0, r0, r1
	lsr r2, r2, #0x10
	lsl r0, r0, #0x10
	str r2, [sp, #0x10]
	lsr r0, r0, #0x10
	mov r4, #1
	str r0, [sp, #0x14]
	b _02240116
_0224010A:
	mov r0, #0x1c
	str r0, [sp, #0x10]
	mov r0, #0x24
	mov r7, #4
	mov r4, #0
	str r0, [sp, #0x14]
_02240116:
	ldr r0, [sp, #0xc]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	str r6, [sp]
	add r1, r0, #0
	str r7, [sp, #4]
	ldr r0, _0224016C ; =0x00000504
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #1
	bl PrintUIntOnWindow
	str r4, [sp]
	ldr r0, _0224016C ; =0x00000504
	ldr r3, [sp, #0x10]
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	bl sub_0200CDAC
	ldr r0, [sp, #0xc]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	str r6, [sp]
	add r1, r0, #0
	ldr r0, [sp, #0x14]
	mov r2, #3
	str r0, [sp, #4]
	ldr r0, _0224016C ; =0x00000504
	str r4, [sp, #8]
	ldr r0, [r5, r0]
	mov r3, #0
	bl PrintUIntOnWindow
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240168: .word 0x000007A4
_0224016C: .word 0x00000504
	thumb_func_end ov83_022400BC

