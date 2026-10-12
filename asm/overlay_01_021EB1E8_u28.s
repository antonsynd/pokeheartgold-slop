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
	.public ov01_021EBCA4
	.extern ov01_021EC2CC
	.extern ov01_021EDAE0

	.text

	.text
	thumb_func_start ov01_021EBCA4
ov01_021EBCA4: ; 0x021EBCA4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r1, [r4, #2]
	ldr r0, _021EBD08 ; =0x0000FFFF
	cmp r1, r0
	beq _021EBCD8
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _021EBD0C ; =0x0400000C
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	sub r3, r0, #4
	ldrh r5, [r3]
	mov r1, #1
	add r0, #0x44
	bic r5, r2
	orr r1, r5
	strh r1, [r3]
	mov r1, #0
	strh r1, [r0]
_021EBCD8:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EBD06
	add r0, #0xc
	bl ov01_021EC2CC
	ldr r0, [r4, #8]
	ldr r1, _021EBD10 ; =0x00000F5C
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021EBCF2
	bl ov01_021EDAE0
_021EBCF2:
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	bne _021EBD06
	ldr r1, [r4, #8]
	ldr r0, _021EBD14 ; =0x00000F48
	ldr r0, [r1, r0]
	bl SysTask_Destroy
	mov r0, #2
	strh r0, [r4, #0x10]
_021EBD06:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBD08: .word 0x0000FFFF
_021EBD0C: .word 0x0400000C
_021EBD10: .word 0x00000F5C
_021EBD14: .word 0x00000F48
	thumb_func_end ov01_021EBCA4

