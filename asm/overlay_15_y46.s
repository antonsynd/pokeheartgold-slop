#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FBCAC
	.extern ov15_021FD574
	.extern ov15_021FD788
	.extern ov15_021FEDEC
	.extern ov15_021FEEA4
	.extern ov15_021FF29C
	.extern ov15_021FF7C4
	.extern ov15_021FFF24
	.extern ov15_02200300

	.text

	.text
	thumb_func_start ov15_021FBCAC
ov15_021FBCAC: ; 0x021FBCAC
	push {r4, lr}
	mov r1, #0x1a
	add r4, r0, #0
	mov r2, #1
	lsl r1, r1, #6
	strh r2, [r4, r1]
	bl ov15_021FFF24
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r3, #6
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	add r2, #0x66
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	ldrh r2, [r2]
	bl Pocket_GetQuantity
	cmp r0, #1
	bne _021FBCF2
	add r0, r4, #0
	bl ov15_021FEEA4
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FD788
	mov r0, #8
	pop {r4, pc}
_021FBCF2:
	mov r2, #0
	add r0, r4, #0
	mov r1, #3
	add r3, r2, #0
	bl ov15_021FD574
	ldr r2, _021FBD24 ; =0x00000682
	add r0, r4, #0
	ldrh r2, [r4, r2]
	mov r1, #3
	bl ov15_02200300
	add r0, r4, #0
	mov r1, #3
	bl ov15_021FEDEC
	add r0, r4, #0
	bl ov15_021FF7C4
	add r0, r4, #0
	mov r1, #1
	bl ov15_021FF29C
	mov r0, #5
	pop {r4, pc}
	.balign 4, 0
_021FBD24: .word 0x00000682
	thumb_func_end ov15_021FBCAC

