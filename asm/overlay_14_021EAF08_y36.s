#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EC730

    .text

	.text
	thumb_func_start ov14_021EC730
ov14_021EC730: ; 0x021EC730
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E7E98
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov14_021F43F4
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F5C84
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F5E94
	add r0, r4, #0
	add r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EC762
	add r0, r4, #0
	mov r1, #0
	bl ov14_021F5EB4
_021EC762:
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8248
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E82A8
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8328
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _021EC7AE
	add r0, r4, #0
	mov r1, #0x81
	mov r2, #1
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #6
	mov r2, #0x21
	bl ov14_021F6AC0
	ldr r1, _021EC7D0 ; =ov14_021E94BC
	add r0, r4, #0
	mov r2, #0x75
	bl ov14_021F0234
	pop {r4, pc}
_021EC7AE:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov14_021F3488
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x21
	bl ov14_021F6AC0
	ldr r1, _021EC7D0 ; =ov14_021E94BC
	add r0, r4, #0
	mov r2, #0xc
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021EC7D0: .word ov14_021E94BC
	thumb_func_end ov14_021EC730

