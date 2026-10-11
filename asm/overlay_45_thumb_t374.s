#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E5D4
	.extern _022577C0
	.extern ov45_0222F848
	.extern ov45_0222F9B8
	.extern ov45_02230144
	.extern ov45_022303E4

	.text

	.text
	thumb_func_start ov45_0222E5D4
ov45_0222E5D4: ; 0x0222E5D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222E67C ; =_022577C0
	add r6, r1, #0
	ldr r0, [r0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0222E5EA
	bl GF_AssertFail
_0222E5EA:
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r7, r0
	blo _0222E5F6
	bl GF_AssertFail
_0222E5F6:
	ldr r1, _0222E680 ; =0x00000988
	add r0, r5, #0
	bl Heap_Alloc
	ldr r1, _0222E67C ; =_022577C0
	ldr r2, _0222E680 ; =0x00000988
	str r0, [r1]
	mov r1, #0
	bl memset
	ldr r0, _0222E67C ; =_022577C0
	ldr r0, [r0]
	str r6, [r0]
	add r0, r6, #0
	bl sub_0202C6F4
	ldr r1, _0222E67C ; =_022577C0
	ldr r1, [r1]
	str r0, [r1, #4]
	add r0, r6, #0
	bl Save_WiFiHistory_Get
	ldr r6, _0222E67C ; =_022577C0
	ldr r1, [r6]
	str r0, [r1, #8]
	ldr r3, [r6]
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	add r2, #0xc
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	add r1, r7, #0
	str r0, [r2]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	str r0, [r3, #0x20]
	ldr r0, [r6]
	bl ov45_0222F848
	add r0, r6, #0
	ldr r0, [r0]
	mov r1, #0x14
	mov r2, #8
	add r3, r5, #0
	bl ov45_0222F9B8
	add r0, r6, #0
	ldr r0, [r0]
	bl ov45_02230144
	add r0, r6, #0
	ldr r1, [r0]
	mov r0, #0x6a
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0x80
	add r2, r5, #0
	bl ov45_022303E4
	add r0, r6, #0
	ldr r1, [r0]
	ldr r0, _0222E684 ; =0x00000984
	mov r2, #0
	str r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E67C: .word _022577C0
_0222E680: .word 0x00000988
_0222E684: .word 0x00000984
	thumb_func_end ov45_0222E5D4

