#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F010C
	.extern ov01_021EFF28
	.extern ov01_021F0174

	.text

	.text
	thumb_func_start ov01_021F010C
ov01_021F010C: ; 0x021F010C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021F011C
	cmp r0, #1
	beq _021F0168
	pop {r4, pc}
_021F011C:
	add r0, r4, #0
	bl ov01_021EFF28
	cmp r0, #0
	beq _021F012C
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_021F012C:
	ldr r0, [r4]
	asr r0, r0, #0xc
	bmi _021F014A
	mov r1, #0xff
	sub r1, r1, r0
	ldr r2, _021F0170 ; =0x04000040
	add r0, r0, #1
	strh r1, [r2]
	mov r1, #0xc0
	lsl r0, r0, #0x18
	strh r1, [r2, #4]
	lsr r0, r0, #0x18
	strh r0, [r2, #2]
	strh r1, [r2, #6]
	pop {r4, pc}
_021F014A:
	add r1, r0, #0
	add r1, #0xff
	lsl r1, r1, #0x18
	ldr r3, _021F0170 ; =0x04000040
	lsr r1, r1, #0x18
	strh r1, [r3]
	mov r1, #1
	sub r0, r1, r0
	mov r2, #0xc0
	lsl r0, r0, #0x18
	strh r2, [r3, #4]
	lsr r0, r0, #0x18
	strh r0, [r3, #2]
	strh r2, [r3, #6]
	pop {r4, pc}
_021F0168:
	add r0, r4, #0
	bl ov01_021F0174
	pop {r4, pc}
	.balign 4, 0
_021F0170: .word 0x04000040
	thumb_func_end ov01_021F010C

