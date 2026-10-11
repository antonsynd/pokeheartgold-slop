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
	.public MapLoadManager_End
	.extern ov01_021F477C

	.text

	.text
	thumb_func_start MapLoadManager_End
MapLoadManager_End: ; 0x021F61F8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0201A430
	bl NNS_GfdResetLnkTexVramState
	bl NNS_GfdResetLnkPlttVramState
	mov r4, #0
	add r6, r5, #4
	mov r7, #0x30
_021F620E:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl ov01_021F477C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021F620E
	mov r6, #0
	add r7, r6, #0
_021F6226:
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	ldr r0, _021F62A4 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F62A8 ; =0x0000085C
	ldr r0, [r1, r0]
	bl ov01_021FB2E8
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021F62AC ; =0x00000868
	ldr r0, [r1, r0]
	bl MapPropManager_Free
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0xa7
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021F6272
	bl Heap_Free
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	mov r0, #0xa7
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r2, r0]
_021F6272:
	add r0, r5, r4
	add r0, #0x90
	ldr r0, [r0]
	bl Heap_Free
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F6226
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	str r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xb0
	str r1, [r0]
	add r5, #0xf0
	str r7, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F62A4: .word 0x00000864
_021F62A8: .word 0x0000085C
_021F62AC: .word 0x00000868
	thumb_func_end MapLoadManager_End

