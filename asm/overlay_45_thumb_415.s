#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222F350
	.extern _022577C0
	.extern ov45_0223021C
	.extern ov45_02230390
	.extern ov45_02230394

	.text

	.text
	thumb_func_start ov45_0222F350
ov45_0222F350: ; 0x0222F350
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222F3D4 ; =_022577C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222F360
	bl GF_AssertFail
_0222F360:
	ldr r0, _0222F3D4 ; =_022577C0
	add r1, r5, #0
	ldr r0, [r0]
	bl ov45_0223021C
	cmp r0, #0
	bne _0222F372
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222F372:
	ldr r3, _0222F3D4 ; =_022577C0
	ldr r2, _0222F3D8 ; =0x0000069C
	ldr r0, [r3]
	ldrh r1, [r0, r2]
	cmp r1, #3
	beq _0222F382
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222F382:
	mov r1, #0x4c
	add r4, r5, #0
	mul r4, r1
	add r1, r2, #0
	add r6, r0, r4
	sub r1, #0xd8
	ldr r1, [r6, r1]
	cmp r1, #1
	bne _0222F398
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222F398:
	strh r5, [r0, r2]
	ldr r5, [r3]
	sub r2, #0x9e
	add r0, r5, r4
	ldrh r0, [r0, r2]
	mov r1, #0x1e
	bl _s32_div_f
	ldr r1, _0222F3DC ; =0x000005E8
	add r3, r0, #0
	add r0, r5, r1
	add r2, r5, r4
	sub r1, #0x2c
	ldr r1, [r2, r1]
	add r0, r0, r4
	mov r2, #0
	bl ov00_021E5CEC
	ldr r1, _0222F3D4 ; =_022577C0
	ldr r0, _0222F3E0 ; =ov45_02230390
	ldr r1, [r1]
	bl ov00_021E5CD0
	ldr r1, _0222F3D4 ; =_022577C0
	ldr r0, _0222F3E4 ; =ov45_02230394
	ldr r1, [r1]
	bl ov00_021E5CA0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222F3D4: .word _022577C0
_0222F3D8: .word 0x0000069C
_0222F3DC: .word 0x000005E8
_0222F3E0: .word ov45_02230390
_0222F3E4: .word ov45_02230394
	thumb_func_end ov45_0222F350

