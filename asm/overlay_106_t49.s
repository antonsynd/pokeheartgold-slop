#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E6AB0
	.public ov106_021E6AD0
	.public ov106_021E6AF0
	.public ov106_021E6B10
	.public ov106_021E6B30
	.extern ov106_021E5954
	.extern ov106_021E597C
	.extern ov106_021E59A4
	.extern ov106_021E59D0

	.text

	.text
	thumb_func_start ov106_021E6AB0
ov106_021E6AB0: ; 0x021E6AB0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	beq _021E6AC0
	bl GF_AssertFail
_021E6AC0:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r3, #4
	bl ov106_021E5954
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_021E6AB0

	thumb_func_start ov106_021E6AD0
ov106_021E6AD0: ; 0x021E6AD0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #2
	beq _021E6AE0
	bl GF_AssertFail
_021E6AE0:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r3, #4
	bl ov106_021E597C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_021E6AD0

	thumb_func_start ov106_021E6AF0
ov106_021E6AF0: ; 0x021E6AF0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	beq _021E6B00
	bl GF_AssertFail
_021E6B00:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r3, #4
	bl ov106_021E59A4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_021E6AF0

	thumb_func_start ov106_021E6B10
ov106_021E6B10: ; 0x021E6B10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	beq _021E6B20
	bl GF_AssertFail
_021E6B20:
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r3, #4
	bl ov106_021E59D0
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_021E6B10

	thumb_func_start ov106_021E6B30
ov106_021E6B30: ; 0x021E6B30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1]
	cmp r0, #5
	beq _021E6B3E
	bl GF_AssertFail
_021E6B3E:
	ldr r1, _021E6B4C ; =0x0000040C
	mov r0, #2
	str r0, [r4, r1]
	mov r2, #4
	add r1, r1, #4
	str r2, [r4, r1]
	pop {r4, pc}
	.balign 4, 0
_021E6B4C: .word 0x0000040C
	thumb_func_end ov106_021E6B30

