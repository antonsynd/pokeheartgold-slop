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
	.public ov01_021EBD34
	.public ov01_021EBD70
	.extern ov01_021EB86C
	.extern ov01_021EBEB8
	.extern ov01_021EBEF0
	.extern ov01_021EBF24
	.extern ov01_021EBF58
	.extern ov01_021EBF94
	.extern ov01_021EBFD0
	.extern ov01_021EC028
	.extern ov01_021EC078
	.extern ov01_021EC0C0
	.extern ov01_021EC114

	.text

	.text
	thumb_func_start ov01_021EBD34
ov01_021EBD34: ; 0x021EBD34
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	ldr r0, _021EBD6C ; =0x0000FFFF
	cmp r1, r0
	beq _021EBD68
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021EBD68
	add r0, r4, #0
	bl ov01_021EBEB8
	cmp r0, #0
	bne _021EBD56
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EBD56:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ov01_021EB86C
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021EBFD0
_021EBD68:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBD6C: .word 0x0000FFFF
	thumb_func_end ov01_021EBD34

	thumb_func_start ov01_021EBD70
ov01_021EBD70: ; 0x021EBD70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r2, [r4, #0x12]
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r2, #8
	ldr r0, [r0]
	bhi _021EBE46
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EBD8C: ; jump table
	.short _021EBD9E - _021EBD8C - 2 ; case 0
	.short _021EBDB4 - _021EBD8C - 2 ; case 1
	.short _021EBDC4 - _021EBD8C - 2 ; case 2
	.short _021EBDD2 - _021EBD8C - 2 ; case 3
	.short _021EBDE2 - _021EBD8C - 2 ; case 4
	.short _021EBDF0 - _021EBD8C - 2 ; case 5
	.short _021EBE00 - _021EBD8C - 2 ; case 6
	.short _021EBE0E - _021EBD8C - 2 ; case 7
	.short _021EBE1E - _021EBD8C - 2 ; case 8
_021EBD9E:
	add r0, r4, #0
	bl ov01_021EBEB8
	cmp r0, #0
	bne _021EBDAC
	bl GF_AssertFail
_021EBDAC:
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDB4:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBEF0
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDC4:
	ldrh r1, [r4, #2]
	bl ov01_021EC078
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDD2:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBF24
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDE2:
	ldrh r1, [r4, #2]
	bl ov01_021EC0C0
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBDF0:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBF58
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBE00:
	ldrh r1, [r4, #2]
	bl ov01_021EC114
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBE0E:
	ldrh r1, [r4]
	ldr r2, [r4, #0xc]
	bl ov01_021EBF94
	ldrh r0, [r4, #0x12]
	add r0, r0, #1
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, pc}
_021EBE1E:
	bl ov01_021EBFD0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #8]
	ldrh r1, [r4]
	ldr r0, _021EBE48 ; =0x0000FFFF
	cmp r1, r0
	beq _021EBE36
	ldr r0, [r4, #8]
	bl ov01_021EC028
_021EBE36:
	mov r0, #2
	strh r0, [r4, #0x10]
	mov r0, #0
	strh r0, [r4, #0x12]
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl SysTask_Destroy
_021EBE46:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EBE48: .word 0x0000FFFF
	thumb_func_end ov01_021EBD70

