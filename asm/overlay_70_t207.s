#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223E78C
	.extern ov70_0223E954
	.extern ov70_0223EA6C
	.extern ov70_0223EB34
	.extern ov70_0223EC0C
	.extern ov70_0223ECCC
	.extern ov70_0223F3D8
	.extern ov70_0223F508
	.extern ov70_02242014
	.extern ov70_02245124

	.text

	.text
	thumb_func_start ov70_0223E78C
ov70_0223E78C: ; 0x0223E78C
	push {r3, r4, lr}
	sub sp, #0x3c
	add r4, r0, #0
	bl ov70_0223ECCC
	ldr r0, [r4, #4]
	bl ov70_0223E954
	add r0, r4, #0
	bl ov70_0223EA6C
	add r0, r4, #0
	bl ov70_0223EB34
	add r0, r4, #0
	bl ov70_0223EC0C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3d
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	bl ov70_02245124
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	mov r2, #0xba
	str r0, [sp, #4]
	sub r0, r0, #4
	lsl r2, r2, #4
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0223E870 ; =0x00001058
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov70_0223F3D8
	mov r1, #0x2e
	lsl r1, r1, #6
	add r0, r4, r1
	str r0, [sp]
	add r0, r1, #0
	mov r3, #0x49
	add r0, #0x20
	add r1, #0x1c
	ldr r2, _0223E874 ; =0x00001088
	lsl r3, r3, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	add r2, r4, r2
	bl ov70_0223F508
	ldr r0, [r4, #4]
	mov r3, #0xba
	ldr r2, _0223E878 ; =0x00000F58
	str r0, [sp, #0xc]
	add r0, r4, r2
	str r0, [sp, #0x10]
	ldr r0, _0223E87C ; =0x00001168
	lsl r3, r3, #4
	add r1, r4, r0
	str r1, [sp, #0x14]
	mov r1, #0xdd
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, #0x5c
	str r1, [sp, #0x18]
	add r1, r2, #0
	sub r1, #0x54
	ldr r1, [r4, r1]
	sub r2, #0x50
	str r1, [sp, #0x1c]
	ldr r1, [r4, r2]
	mov r2, #0
	str r2, [sp, #0x24]
	str r1, [sp, #0x20]
	ldr r1, [r4, r3]
	str r1, [sp, #0x28]
	add r1, r3, #4
	ldr r1, [r4, r1]
	add r3, #0x10
	str r1, [sp, #0x2c]
	ldr r1, [r4, r3]
	str r1, [sp, #0x30]
	ldr r1, [r4]
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x34]
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x38]
	add r0, sp, #0xc
	bl ov70_02242014
	ldr r1, _0223E880 ; =0x000011A8
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0x3c
	pop {r3, r4, pc}
	nop
_0223E870: .word 0x00001058
_0223E874: .word 0x00001088
_0223E878: .word 0x00000F58
_0223E87C: .word 0x00001168
_0223E880: .word 0x000011A8
	thumb_func_end ov70_0223E78C

