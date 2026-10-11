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
	.include "overlay_01_021F1AFC.inc"
	.include "global.inc"
	.public CallFieldTask_Waterfall
	.public ov01_021F2944
	.extern ov01_021F28B8
	.extern ov01_021F3040
	.extern ov01_021F30F4
	.extern ov01_021F3100
	.extern ov01_022069A8
	.extern ov01_022069BC

	.text

	.text
	thumb_func_start CallFieldTask_Waterfall
CallFieldTask_Waterfall: ; 0x021F2908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r0, #0
	add r7, r1, #0
	bl TaskManager_GetFieldSystem
	add r4, r0, #0
	add r1, r5, #0
	bl ov01_021F3100
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl ov01_021F3040
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ov01_021F28B8
	add r2, r0, #0
	ldr r1, _021F2940 ; =ov01_021F2944
	add r0, r6, #0
	bl TaskManager_Call
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2940: .word ov01_021F2944
	thumb_func_end CallFieldTask_Waterfall

	thumb_func_start ov01_021F2944
ov01_021F2944: ; 0x021F2944
	push {r4, r5, r6, lr}
	bl TaskManager_GetEnvironment
	ldr r6, _021F2990 ; =ov01_022069BC
	ldr r4, _021F2994 ; =ov01_022069A8
	add r5, r0, #0
_021F2950:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021F2962
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	b _021F296C
_021F2962:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
_021F296C:
	cmp r0, #2
	beq _021F2950
	cmp r0, #1
	bne _021F298A
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov01_02205790
	add r0, r5, #0
	bl ov01_021F30F4
	mov r0, #1
	pop {r4, r5, r6, pc}
_021F298A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021F2990: .word ov01_022069BC
_021F2994: .word ov01_022069A8
	thumb_func_end ov01_021F2944

