#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CD0C

	.text

	thumb_func_start ov65_0221CD0C
ov65_0221CD0C: ; 0x0221CD0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0221CD64 ; =0x00002224
	mov r6, #0
	ldr r0, [r5, r0]
	bl Party_GetCount
	cmp r0, #0
	ble _0221CD38
	ldr r7, _0221CD64 ; =0x00002224
	add r4, r5, #0
_0221CD22:
	ldr r0, _0221CD68 ; =0x0000079C
	ldr r0, [r4, r0]
	bl Heap_Free
	ldr r0, [r5, r7]
	add r4, r4, #4
	add r6, r6, #1
	bl Party_GetCount
	cmp r6, r0
	blt _0221CD22
_0221CD38:
	ldr r0, _0221CD6C ; =0x00002228
	mov r6, #0
	ldr r0, [r5, r0]
	bl Party_GetCount
	cmp r0, #0
	ble _0221CD60
	ldr r7, _0221CD6C ; =0x00002228
	add r4, r5, #0
_0221CD4A:
	ldr r0, _0221CD70 ; =0x000007B4
	ldr r0, [r4, r0]
	bl Heap_Free
	ldr r0, [r5, r7]
	add r4, r4, #4
	add r6, r6, #1
	bl Party_GetCount
	cmp r6, r0
	blt _0221CD4A
_0221CD60:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CD64: .word 0x00002224
_0221CD68: .word 0x0000079C
_0221CD6C: .word 0x00002228
_0221CD70: .word 0x000007B4
	thumb_func_end ov65_0221CD0C

