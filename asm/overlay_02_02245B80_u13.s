#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_022461DC
	.extern ov02_02245E04
	.extern ov02_02245E68
	.extern ov02_02245ED8
	.extern ov02_02245FD0
	.extern ov02_022462DC
	.extern ov02_02253254
	.extern ov02_02253D80
	.extern ov02_02253D84

	.text

	.text
	thumb_func_start ov02_022461DC
ov02_022461DC: ; 0x022461DC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl TaskManager_GetEnvironment
	add r4, r0, #0
	ldrh r0, [r4, #0x12]
	cmp r0, #4
	bhi _022462C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022461FA: ; jump table
	.short _02246204 - _022461FA - 2 ; case 0
	.short _0224623A - _022461FA - 2 ; case 1
	.short _02246276 - _022461FA - 2 ; case 2
	.short _02246282 - _022461FA - 2 ; case 3
	.short _022462A4 - _022461FA - 2 ; case 4
_02246204:
	ldrb r0, [r4, #0x10]
	ldr r1, _022462C8 ; =ov02_02253254
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r1, [r4]
	bl ov02_02245E04
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x40]
	bl PlayerAvatar_CopyPositionVector
	ldr r0, [r4, #8]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, #0x10
	bl Field3dObject_SetPosEx
	ldr r0, _022462CC ; =SEQ_SE_GS_STOPPERKAIJO
	bl PlaySE
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _022462C0
_0224623A:
	ldr r0, [r4, #8]
	bl ov02_02245FD0
	cmp r0, #0
	beq _022462C0
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #8]
	mov r1, #0xae
	lsl r3, r2, #3
	ldr r2, _022462D0 ; =ov02_02253D80
	ldr r2, [r2, r3]
	mov r3, #3
	bl ov02_02245ED8
	ldr r0, _022462D4 ; =ov02_022462DC
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	mov r2, #0
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl QueueScript
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	b _022462C0
_02246276:
	ldr r0, [r4, #0xc]
	bl SysTask_Destroy
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
_02246282:
	ldr r0, [r4, #8]
	bl ov02_02245FD0
	cmp r0, #0
	beq _022462C0
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #8]
	mov r1, #0xae
	lsl r3, r2, #3
	ldr r2, _022462D8 ; =ov02_02253D84
	ldr r2, [r2, r3]
	mov r3, #3
	bl ov02_02245ED8
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
_022462A4:
	ldr r0, [r4, #8]
	bl ov02_02245FD0
	cmp r0, #0
	beq _022462C0
	ldr r0, [r4, #8]
	bl ov02_02245E68
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022462C0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022462C8: .word ov02_02253254
_022462CC: .word SEQ_SE_GS_STOPPERKAIJO
_022462D0: .word ov02_02253D80
_022462D4: .word ov02_022462DC
_022462D8: .word ov02_02253D84
	thumb_func_end ov02_022461DC

