#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5C30
	.extern _021E6D70
	.extern ov106_021E6D8C

	.text

	.text
	thumb_func_start ov106_021E5C30
ov106_021E5C30: ; 0x021E5C30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _021E5CC8 ; =ov106_021E6D8C
	str r0, [sp]
	add r3, sp, #0x1c
	mov r2, #4
_021E5C3C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5C3C
	ldr r0, [r4]
	add r2, sp, #0x10
	str r0, [r3]
	ldr r3, _021E5CCC ; =_021E6D70
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #4
	str r0, [r2]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl Thunk_G3X_Reset
	bl Camera_PushLookAtToNNSGlb
	mov r1, #0xff
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r7, #0
	cmp r0, #0
	bls _021E5CBA
	ldr r4, [sp]
	mov r5, #1
	add r4, #0x1c
	lsl r5, r5, #0xc
_021E5C7C:
	mov r2, #0
	add r3, r4, #0
_021E5C80:
	ldr r1, [r3, #0x6c]
	cmp r1, #0
	beq _021E5C96
	ldr r6, [r1, #8]
	ldr r0, [r1]
	ldrh r6, [r6, #4]
	add r0, r0, r5
	lsl r6, r6, #0xc
	cmp r0, r6
	bge _021E5C96
	str r0, [r1]
_021E5C96:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _021E5C80
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0x1c
	add r3, sp, #0x10
	bl GF3dRender_DrawModel
	mov r0, #0xff
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r7, r7, #1
	add r4, #0x7c
	cmp r7, r0
	blo _021E5C7C
_021E5CBA:
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5CC8: .word ov106_021E6D8C
_021E5CCC: .word _021E6D70
	thumb_func_end ov106_021E5C30

