#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E6988
	.extern ov106_021E7044
	.extern ov106_021E7090

	.text

	.text
	thumb_func_start ov106_021E6988
ov106_021E6988: ; 0x021E6988
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021E69E0 ; =0x00000418
	ldr r7, _021E69E4 ; =ov106_021E7044
	ldr r5, [r6, r0]
	add r4, r5, #0
	add r4, #0x14
_021E6996:
	ldr r1, [r5, #0x14]
	ldr r2, [r1]
	cmp r2, #0x13
	bne _021E69A2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E69A2:
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	add r0, r6, #0
	blx r2
	cmp r0, #0
	beq _021E69DA
	cmp r0, #1
	bne _021E69C6
	ldr r1, [r5, #0x14]
	ldr r0, [r4]
	ldr r1, [r1]
	lsl r2, r1, #2
	ldr r1, _021E69E8 ; =ov106_021E7090
	ldr r1, [r1, r2]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [r4]
	b _021E6996
_021E69C6:
	cmp r0, #2
	bne _021E6996
	ldr r2, [r5, #0x14]
	ldr r0, [r2]
	lsl r1, r0, #2
	ldr r0, _021E69E8 ; =ov106_021E7090
	ldr r0, [r0, r1]
	lsl r0, r0, #2
	add r0, r2, r0
	str r0, [r5, #0x14]
_021E69DA:
	ldr r0, _021E69EC ; =0x0000040C
	ldr r0, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E69E0: .word 0x00000418
_021E69E4: .word ov106_021E7044
_021E69E8: .word ov106_021E7090
_021E69EC: .word 0x0000040C
	thumb_func_end ov106_021E6988

