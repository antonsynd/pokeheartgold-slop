#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE31C
	.extern ov112_021E9888
	.extern ov112_021EA51C
	.extern ov112_021EC440
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE31C
ov112_021EE31C: ; 0x021EE31C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	bl ov112_021E9888
	add r1, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021EE344
	add r0, r4, #0
	add r2, r1, #2
	mov r3, #0x33
	bl ov112_021EC440
	ldr r0, _021EE3D0 ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r4, pc}
_021EE344:
	ldr r0, _021EE3D4 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021EE36C
	add r0, r4, #0
	mov r1, #2
	bl ov112_021EA51C
	ldr r0, _021EE3D8 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021EE364
	ldr r0, _021EE3DC ; =0x000005DC
	bl PlaySE
_021EE364:
	ldr r0, _021EE3D8 ; =0x0001EC50
	mov r1, #0
	str r1, [r4, r0]
	b _021EE3CA
_021EE36C:
	mov r1, #0x80
	tst r1, r0
	beq _021EE390
	add r0, r4, #0
	mov r1, #3
	bl ov112_021EA51C
	ldr r0, _021EE3D8 ; =0x0001EC50
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _021EE388
	ldr r0, _021EE3DC ; =0x000005DC
	bl PlaySE
_021EE388:
	ldr r0, _021EE3D8 ; =0x0001EC50
	mov r1, #1
	str r1, [r4, r0]
	b _021EE3CA
_021EE390:
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _021EE3B0
	ldr r0, _021EE3D8 ; =0x0001EC50
	mov r3, #0x33
	ldr r1, [r4, r0]
	add r0, r4, #0
	add r2, r1, #2
	bl ov112_021EC440
	ldr r0, _021EE3D0 ; =0x000005DD
	bl PlaySE
	mov r0, #0x41
	pop {r4, pc}
_021EE3B0:
	mov r2, #2
	tst r0, r2
	beq _021EE3CA
	add r0, r4, #0
	mov r2, #3
	mov r3, #0x33
	bl ov112_021EC440
	ldr r0, _021EE3DC ; =0x000005DC
	bl PlaySE
	mov r0, #0x41
	pop {r4, pc}
_021EE3CA:
	mov r0, #0x32
	pop {r4, pc}
	nop
_021EE3D0: .word 0x000005DD
_021EE3D4: .word gSystem
_021EE3D8: .word 0x0001EC50
_021EE3DC: .word 0x000005DC
	thumb_func_end ov112_021EE31C

