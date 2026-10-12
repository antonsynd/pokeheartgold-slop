#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E70E0
	.public ov14_021E7148
	.extern ov14_021E6B48

    .text

	.text
	thumb_func_start ov14_021E70E0
ov14_021E70E0: ; 0x021E70E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	str r1, [sp]
	ldr r7, [r0, #0xc]
	sub r1, #0x1e
	mov r2, #0
	str r1, [sp]
	add r3, r7, #0
	add r1, r2, #0
_021E70F4:
	add r0, r2, #0
	add r0, #0x1e
	str r0, [r3, #4]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	add r2, r2, #1
	add r3, #0x20
	cmp r2, #6
	blo _021E70F4
	lsl r0, r2, #5
	add r0, r7, r0
	str r1, [r0, #0xc]
	ldr r0, [sp]
	add r5, r0, #1
	cmp r5, #6
	bhs _021E7132
	lsl r0, r5, #5
	add r4, r7, r0
_021E7118:
	add r0, r5, #0
	add r0, #0x1d
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	bl ov14_021E6B48
	add r5, r5, #1
	add r4, #0x20
	cmp r5, #6
	blo _021E7118
_021E7132:
	ldr r0, [sp]
	lsl r1, r0, #5
	mov r0, #0x23
	add r1, r7, r1
	str r0, [r1, #8]
	mov r0, #1
	str r0, [r1, #0xc]
	add r0, r6, #0
	bl ov14_021E6B48
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021E70E0

	thumb_func_start ov14_021E7148
ov14_021E7148: ; 0x021E7148
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r7, _021E71C0 ; =0x00004094
	add r5, r0, #0
	mov r2, #0
	add r3, r4, #0
	add r6, sp, #0
_021E7158:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq _021E7168
	ldr r1, [r5, #0x34]
	ldr r0, [r3, #4]
	add r0, r1, r0
	ldrb r0, [r0, r7]
	strb r0, [r6]
_021E7168:
	add r2, r2, #1
	add r3, #0x20
	add r6, r6, #1
	cmp r2, #7
	blo _021E7158
	mov r7, #0
	add r6, sp, #0
_021E7176:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E71B2
	ldr r1, [r4, #8]
	mov r0, #0x80
	tst r0, r1
	bne _021E719A
	ldr r2, [r5, #0x34]
	ldrb r0, [r6]
	add r2, r2, r1
	ldr r1, _021E71C0 ; =0x00004094
	strb r0, [r2, r1]
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov14_021F3190
	b _021E71B2
_021E719A:
	ldr r0, [r4, #4]
	cmp r0, #0x1e
	blo _021E71A8
	ldrb r2, [r6]
	ldr r1, [r5, #0x34]
	ldr r0, _021E71C4 ; =0x000040B7
	strb r2, [r1, r0]
_021E71A8:
	ldr r0, [r5, #0x34]
	ldr r1, [r4, #4]
	mov r2, #1
	bl ov14_021F3190
_021E71B2:
	add r7, r7, #1
	add r4, #0x20
	add r6, r6, #1
	cmp r7, #7
	blo _021E7176
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E71C0: .word 0x00004094
_021E71C4: .word 0x000040B7
	thumb_func_end ov14_021E7148

