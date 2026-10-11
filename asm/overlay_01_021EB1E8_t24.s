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
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EBA44

	.text

	.text
	thumb_func_start ov01_021EBA44
ov01_021EBA44: ; 0x021EBA44
	push {r4, r5, r6, lr}
	add r5, r2, #0
	ldr r2, [r0]
	mov r0, #0x1c
	mul r0, r1
	ldrh r1, [r2, r0]
	add r4, r2, r0
	ldr r0, _021EBB2C ; =0x0000FFFF
	add r6, r3, #0
	cmp r1, r0
	beq _021EBA64
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021EBA64
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA64:
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _021EBA6E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA6E:
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _021EBA78
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA78:
	ldr r0, [r4, #0x18]
	mov r2, #4
	bl SysTask_CreateOnMainQueue
	ldr r1, [r4, #8]
	ldr r3, _021EBB30 ; =0x00000F48
	str r0, [r1, r3]
	ldr r0, [r4, #8]
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _021EBA92
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EBA92:
	mov r0, #3
	strh r0, [r4, #0x10]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x1a
	strh r5, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #8]
	mov r2, #0
	add r0, #0x1e
	strh r2, [r1, r0]
	ldr r1, [r4, #8]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x40]
	ldr r1, [r4, #8]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x44]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x1c
	strh r6, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #8]
	add r0, #0x14
	str r2, [r1, r0]
	ldr r1, [r4, #8]
	add r0, r3, #4
	ldr r6, _021EBB34 ; =NNS_G3dGlb + 0x258
	add r5, r1, r0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	ldr r1, [r4, #4]
	cmp r1, #0
	ble _021EBAF8
	mov r0, #4
	bl Heap_Alloc
	ldr r2, [r4, #8]
	ldr r1, _021EBB38 ; =0x00000F58
	str r0, [r2, r1]
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r0, [r0, r1]
	mov r1, #0
	bl memset
	b _021EBAFE
_021EBAF8:
	ldr r0, [r4, #8]
	add r3, #0x10
	str r2, [r0, r3]
_021EBAFE:
	ldrh r1, [r4, #2]
	ldr r0, _021EBB2C ; =0x0000FFFF
	cmp r1, r0
	beq _021EBB28
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r2, _021EBB3C ; =0x0400000C
	mov r1, #3
	ldrh r3, [r2]
	mov r0, #1
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
	sub r2, r2, #4
	ldrh r3, [r2]
	mov r0, #2
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
_021EBB28:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EBB2C: .word 0x0000FFFF
_021EBB30: .word 0x00000F48
_021EBB34: .word NNS_G3dGlb + 0x258
_021EBB38: .word 0x00000F58
_021EBB3C: .word 0x0400000C
	thumb_func_end ov01_021EBA44

