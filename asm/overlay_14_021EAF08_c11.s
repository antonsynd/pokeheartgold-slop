#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EB2A8
	.extern ov14_021F7D50

    .text

	.text
	thumb_func_start ov14_021EB2A8
ov14_021EB2A8: ; 0x021EB2A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl OverlayManager_Run
	cmp r0, #0
	bne _021EB2BA
	mov r0, #0xa
	pop {r4, pc}
_021EB2BA:
	ldr r0, [r4, #0x14]
	bl OverlayManager_Delete
	ldrb r2, [r4, #0x1e]
	mov r1, #0xc
	add r0, r4, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021EB2E4 ; =ov14_021F7D50 + 4
	ldr r1, [r1, r3]
	blx r1
	ldrb r1, [r4, #0x1e]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, _021EB2E8 ; =ov14_021F7D50 + 8
	ldr r0, [r0, r2]
	str r0, [r4, #0x30]
	mov r0, #0
	pop {r4, pc}
	nop
_021EB2E4: .word ov14_021F7D50 + 4
_021EB2E8: .word ov14_021F7D50 + 8
	thumb_func_end ov14_021EB2A8

