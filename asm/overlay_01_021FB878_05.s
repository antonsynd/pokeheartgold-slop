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
	.include "overlay_01_021FB878.inc"
	.include "global.inc"
	.public AreaDataManager_Free

	.text

	.text
	thumb_func_start AreaDataManager_Free
AreaDataManager_Free: ; 0x021FB944
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x23
	ldr r1, [r5]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	bl NARC_Delete
	ldr r1, [r5]
	ldr r0, _021FB9BC ; =0x000008AC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021FB962
	bl ov01_021EA7E0
_021FB962:
	mov r6, #0
	ldr r7, _021FB9C0 ; =0x00000226
	add r4, r6, #0
_021FB968:
	ldr r0, [r5]
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021FB976
	bl Heap_Free
_021FB976:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r7
	blt _021FB968
	ldr r1, [r5]
	ldr r0, _021FB9C4 ; =0x000008BC
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r1, [r5]
	ldr r0, _021FB9C8 ; =0x0000089C
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r1, [r5]
	ldr r0, _021FB9C8 ; =0x0000089C
	mov r2, #0
	str r2, [r1, r0]
	ldr r1, [r5]
	add r0, r0, #4
	ldr r0, [r1, r0]
	bl Heap_Free
	mov r0, #0x8a
	ldr r1, [r5]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [r5]
	bl Heap_Free
	mov r0, #0
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FB9BC: .word 0x000008AC
_021FB9C0: .word 0x00000226
_021FB9C4: .word 0x000008BC
_021FB9C8: .word 0x0000089C
	thumb_func_end AreaDataManager_Free

