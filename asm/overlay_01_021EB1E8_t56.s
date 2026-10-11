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
	.public ov01_021EC94C
	.extern ov01_021EBCA4
	.extern ov01_021EC2E4
	.extern ov01_021EC300
	.extern ov01_021EC470
	.extern ov01_021EC504
	.extern ov01_021EC52C
	.extern ov01_021EC538
	.extern ov01_021EC5FC
	.extern ov01_021EC650
	.extern ov01_021EC678
	.extern ov01_021EC790
	.extern ov01_021EC7AC
	.extern ov01_021EC7C8
	.extern ov01_021EC85C
	.extern ov01_021ECBB4
	.extern ov01_021ECC70
	.extern ov01_021EDA7C
	.extern ov01_021EDAE0

	.text

	.text
	thumb_func_start ov01_021EC94C
ov01_021EC94C: ; 0x021EC94C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021ECB8C ; =0x00000F58
	add r4, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r4, r2]
	ldr r5, [r4, r0]
	cmp r2, #5
	bhi _021ECA1A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EC96C: ; jump table
	.short _021EC978 - _021EC96C - 2 ; case 0
	.short _021EC9E2 - _021EC96C - 2 ; case 1
	.short _021ECA24 - _021EC96C - 2 ; case 2
	.short _021ECA96 - _021EC96C - 2 ; case 3
	.short _021ECAF4 - _021EC96C - 2 ; case 4
	.short _021ECB42 - _021EC96C - 2 ; case 5
_021EC978:
	mov r0, #0x14
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021ECB90 ; =ov01_021ECBB4
	mov r3, #8
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov01_021EC504
	ldr r0, _021ECB94 ; =0x0000726F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021ECB98 ; =0x00006B5A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021ECB9C ; =0x00000F64
	add r1, r5, #0
	ldrh r0, [r4, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x4c]
	mov r3, #3
	bl ov01_021EC5FC
	mov r0, #0
	add r5, #0xb4
	str r0, [r5]
	ldr r0, _021ECBA0 ; =ov01_021EDA7C
	add r1, r4, #0
	mov r2, #0x64
	bl SysTask_CreateOnMainQueue
	ldr r1, _021ECBA4 ; =0x00000F6C
	mov r2, #0x1e
	str r0, [r4, r1]
	sub r0, r1, #4
	str r2, [r4, r0]
	mov r0, #1
	sub r1, #0xa
	strh r0, [r4, r1]
	b _021ECB60
_021EC9E2:
	add r0, r5, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECA02
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r5, #0xb4
	sub r0, r0, #1
	str r0, [r5]
	b _021ECB60
_021ECA02:
	ldr r2, _021ECB9C ; =0x00000F64
	add r0, r5, #0
	ldrh r2, [r4, r2]
	add r5, #0x1c
	add r0, #0x4c
	add r1, r5, #0
	bl ov01_021EC650
	cmp r0, #1
	bne _021ECA1A
	cmp r6, #3
	beq _021ECA1C
_021ECA1A:
	b _021ECB60
_021ECA1C:
	ldr r0, _021ECBA8 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021ECB60
_021ECA24:
	mov r2, #0x14
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021ECB90 ; =ov01_021ECBB4
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov01_021EC504
	ldr r0, _021ECB9C ; =0x00000F64
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECA66
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021ECB94 ; =0x0000726F
	ldr r0, [r0, #0x4c]
	ldr r3, _021ECB98 ; =0x00006B5A
	mov r1, #3
	str r0, [r5, #0x1c]
	bl ov01_021EC678
	add r5, #0x1c
	add r0, r5, #0
	bl ov01_021EC7C8
_021ECA66:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021ECBAC ; =ov01_021ECC70
	ldr r1, _021ECB90 ; =ov01_021ECBB4
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x14
	mov r3, #0xa
	bl ov01_021EC85C
	ldr r0, _021ECBA0 ; =ov01_021EDA7C
	add r1, r4, #0
	mov r2, #0x64
	bl SysTask_CreateOnMainQueue
	ldr r1, _021ECBA4 ; =0x00000F6C
	mov r2, #0x1e
	str r0, [r4, r1]
	sub r0, r1, #4
	str r2, [r4, r0]
	mov r0, #3
	sub r1, #0xa
	strh r0, [r4, r1]
	b _021ECB60
_021ECA96:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r0, r1, #1
	strh r0, [r5, #6]
	cmp r1, #0
	bgt _021ECAB2
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	bl ov01_021ECBB4
	mov r0, #8
	ldrsh r0, [r5, r0]
	strh r0, [r5, #6]
_021ECAB2:
	ldr r0, _021ECBB0 ; =0x00000F66
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021ECB60
	mov r0, #1
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	mov r3, #1
	bl ov01_021EC52C
	ldr r0, _021ECB9C ; =0x00000F64
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECAE0
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl ov01_021EC790
_021ECAE0:
	mov r0, #0
	add r5, #0xb4
	str r0, [r5]
	ldr r0, _021ECBA8 ; =0x00000F62
	mov r1, #4
	strh r1, [r4, r0]
	add r0, r4, #0
	bl ov01_021EDAE0
	b _021ECB60
_021ECAF4:
	add r0, r5, #0
	bl ov01_021EC538
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021ECB14
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r5, #0xb4
	sub r0, r0, #1
	str r0, [r5]
	b _021ECB60
_021ECB14:
	ldr r0, _021ECB9C ; =0x00000F64
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECB26
	add r5, #0x1c
	add r0, r5, #0
	bl ov01_021EC7AC
	b _021ECB28
_021ECB26:
	mov r0, #1
_021ECB28:
	cmp r0, #1
	bne _021ECB60
	cmp r6, #3
	bne _021ECB60
	add r0, r4, #0
	ldr r1, [r4, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021ECB60
	ldr r0, _021ECBA8 ; =0x00000F62
	mov r1, #5
	strh r1, [r4, r0]
	b _021ECB60
_021ECB42:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021ECB5A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl ov01_021EA864
_021ECB5A:
	ldr r0, [r4, #4]
	bl ov01_021EBCA4
_021ECB60:
	ldr r0, _021ECBA8 ; =0x00000F62
	ldrh r0, [r4, r0]
	cmp r0, #5
	beq _021ECB86
	cmp r0, #0
	beq _021ECB86
	add r0, r4, #0
	ldr r1, _021ECBAC ; =ov01_021ECC70
	add r0, #0xc
	bl ov01_021EC2E4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov01_021EC470
	add r0, r4, #0
	bl ov01_021EC300
_021ECB86:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021ECB8C: .word 0x00000F58
_021ECB90: .word ov01_021ECBB4
_021ECB94: .word 0x0000726F
_021ECB98: .word 0x00006B5A
_021ECB9C: .word 0x00000F64
_021ECBA0: .word ov01_021EDA7C
_021ECBA4: .word 0x00000F6C
_021ECBA8: .word 0x00000F62
_021ECBAC: .word ov01_021ECC70
_021ECBB0: .word 0x00000F66
	thumb_func_end ov01_021EC94C

