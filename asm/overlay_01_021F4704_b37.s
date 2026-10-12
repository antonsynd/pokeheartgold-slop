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
	.public MapLoadManager_New
	.extern ov01_021F5F34
	.extern ov01_02206BC0
	.extern ov01_02206BC8
	.extern ov01_02206BD0

	.text

	.text
	thumb_func_start MapLoadManager_New
MapLoadManager_New: ; 0x021F6020
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #0x11
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #4
	str r2, [sp]
	str r3, [sp, #4]
	bl Heap_Alloc
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021F6054
	add r0, r4, #0
	ldr r1, _021F610C ; =ov01_02206BC0
	add r0, #0xfc
	str r1, [r0]
	mov r6, #1
	b _021F6078
_021F6054:
	cmp r0, #1
	bne _021F6064
	add r0, r4, #0
	ldr r1, _021F6110 ; =ov01_02206BD0
	add r0, #0xfc
	str r1, [r0]
	mov r6, #0
	b _021F6078
_021F6064:
	cmp r0, #2
	bne _021F6074
	add r0, r4, #0
	ldr r1, _021F6114 ; =ov01_02206BC8
	add r0, #0xfc
	str r1, [r0]
	mov r6, #1
	b _021F6078
_021F6074:
	bl GF_AssertFail
_021F6078:
	mov r0, #0x41
	ldr r1, [sp, #0x28]
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r6, #0
	bl ov01_021FAC44
	str r0, [r4]
	add r0, r4, #0
	add r0, #0xb8
	str r7, [r0]
	add r0, r4, #0
	add r0, #0xc0
	str r5, [r0]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xbc
	str r0, [r1]
	add r0, r5, #0
	bl MapMatrix_GetWidth
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r5, #0
	bl MapMatrix_GetHeight
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc4
	ldr r0, [r0]
	lsl r1, r0, #5
	add r0, r4, #0
	add r0, #0xcc
	str r1, [r0]
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0xf4
	str r0, [r1]
	add r0, r4, #0
	ldr r1, [sp, #0x20]
	add r0, #0xf8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xf0
	str r1, [r0]
	add r0, r4, #0
	bl ov01_021F5F34
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x41
	mov r1, #4
	bl NARC_New
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r4, r1]
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F610C: .word ov01_02206BC0
_021F6110: .word ov01_02206BD0
_021F6114: .word ov01_02206BC8
	thumb_func_end MapLoadManager_New

