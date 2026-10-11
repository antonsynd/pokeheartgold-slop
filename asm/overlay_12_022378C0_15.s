#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_0223998C

	.text

	.text
	thumb_func_start ov12_0223998C
ov12_0223998C: ; 0x0223998C
	push {r3, r4, r5, lr}
	ldr r3, _022399B8 ; =0x00002438
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, r3]
	mov r1, #1
	add r0, r0, #3
	str r0, [r4, r3]
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r0, _022399B8 ; =0x00002438
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022399B4
	add r0, r5, #0
	bl SysTask_Destroy
_022399B4:
	pop {r3, r4, r5, pc}
	nop
_022399B8: .word 0x00002438
	thumb_func_end ov12_0223998C

