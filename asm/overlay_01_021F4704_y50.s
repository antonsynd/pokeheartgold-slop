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
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public ov01_021F652C
	.public ov01_021F654C
	.extern ov01_021F6328
	.extern ov01_021F635C

	.text

	.text
	thumb_func_start ov01_021F652C
ov01_021F652C: ; 0x021F652C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blo _021F653A
	bl GF_AssertFail
_021F653A:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F652C

	thumb_func_start ov01_021F654C
ov01_021F654C: ; 0x021F654C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	asr r2, r6, #4
	add r5, r0, #0
	lsr r2, r2, #0x1b
	add r2, r6, r2
	add r4, r1, #0
	add r0, #0xc4
	ldr r1, [r0]
	asr r0, r4, #4
	lsr r0, r0, #0x1b
	add r0, r4, r0
	asr r2, r2, #5
	str r3, [sp]
	add r3, r2, #0
	asr r0, r0, #5
	mul r3, r1
	add r7, r0, r3
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r1
	cmp r7, r0
	blo _021F658A
	mov r0, #1
	bl sub_02039AD8
	cmp r0, #0
	beq _021F658A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F658A:
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0]
	mul r0, r1
	cmp r7, r0
	blo _021F65A0
	bl GF_AssertFail
_021F65A0:
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r0]
	add r0, r6, #0
	mul r0, r1
	add r0, r4, r0
	bl ov01_021F6328
	add r1, r0, #0
	add r0, r7, #0
	add r2, r5, #0
	bl ov01_021F635C
	ldr r1, [sp]
	cmp r1, #0
	beq _021F65C2
	strb r0, [r1]
_021F65C2:
	cmp r0, #3
	bls _021F65CA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F65CA:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021F654C

