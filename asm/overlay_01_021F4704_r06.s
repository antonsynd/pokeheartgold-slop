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
	.public ov01_021F497C

	.text

	.text
	thumb_func_start ov01_021F497C
ov01_021F497C: ; 0x021F497C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
_021F4982:
	ldr r1, _021F49EC ; =0x00000A74
	mov r0, #4
	bl Heap_Alloc
	ldr r2, _021F49EC ; =0x00000A74
	mov r1, #0
	add r7, r0, #0
	bl MI_CpuFill8
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	ldr r0, _021F49F0 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, _021F49F4 ; =0x00000854
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r3, r2
	bl ov01_021FACE4
	add r1, r5, #0
	add r1, #0xbc
	ldr r1, [r1]
	mov r0, #4
	bl MapPropManager_New
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021F49F8 ; =0x00000868
	str r0, [r2, r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	mov r1, #0
	mov r0, #0x86
	mvn r1, r1
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021F4982
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F49EC: .word 0x00000A74
_021F49F0: .word 0x00000864
_021F49F4: .word 0x00000854
_021F49F8: .word 0x00000868
	thumb_func_end ov01_021F497C

