#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FCDE4
	.extern ov15_021FAC2C
	.extern ov15_021FBD28
	.extern ov15_021FD7D0
	.extern ov15_021FEDEC
	.extern ov15_021FF068
	.extern ov15_022002EC

	.text

	.text
	thumb_func_start ov15_021FCDE4
ov15_021FCDE4: ; 0x021FCDE4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r5, #0
	mov r1, #4
	add r4, r0, #0
	bl ov15_021FAC2C
	add r6, r0, #0
	sub r0, r5, #1
	cmp r6, r0
	bne _021FCDFC
	b _021FCF06
_021FCDFC:
	ldr r0, _021FCFB8 ; =0x00000682
	ldrh r0, [r4, r0]
	bl ov15_022002EC
	cmp r0, #2
	bne _021FCE14
	cmp r6, #0
	beq _021FCE10
	cmp r6, #2
	bne _021FCE14
_021FCE10:
	mov r6, #0
	mvn r6, r6
_021FCE14:
	cmp r6, #5
	bls _021FCE1A
	b _021FCF2E
_021FCE1A:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FCE26: ; jump table
	.short _021FCE32 - _021FCE26 - 2 ; case 0
	.short _021FCE64 - _021FCE26 - 2 ; case 1
	.short _021FCE96 - _021FCE26 - 2 ; case 2
	.short _021FCECA - _021FCE26 - 2 ; case 3
	.short _021FCEFE - _021FCE26 - 2 ; case 4
	.short _021FCF02 - _021FCE26 - 2 ; case 5
_021FCE32:
	mov r1, #0x1a
	lsl r1, r1, #6
	ldrsh r0, [r4, r1]
	add r1, r1, #2
	ldrh r1, [r4, r1]
	mov r2, #0xa
	bl ov15_021FBD28
	mov r1, #0x1a
	lsl r1, r1, #6
	strh r0, [r4, r1]
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ManagedSprite_SetAnim
	mov r5, #1
	b _021FCF2E
_021FCE64:
	mov r1, #0x1a
	lsl r1, r1, #6
	ldrsh r0, [r4, r1]
	add r1, r1, #2
	ldrh r1, [r4, r1]
	mov r2, #1
	bl ov15_021FBD28
	mov r1, #0x1a
	lsl r1, r1, #6
	strh r0, [r4, r1]
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0xb5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ManagedSprite_SetAnim
	mov r5, #1
	b _021FCF2E
_021FCE96:
	mov r1, #0x1a
	lsl r1, r1, #6
	ldrsh r0, [r4, r1]
	add r1, r1, #2
	mov r2, #9
	ldrh r1, [r4, r1]
	mvn r2, r2
	bl ov15_021FBD28
	mov r1, #0x1a
	lsl r1, r1, #6
	strh r0, [r4, r1]
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0xb7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ManagedSprite_SetAnim
	mov r5, #2
	b _021FCF2E
_021FCECA:
	mov r1, #0x1a
	lsl r1, r1, #6
	ldrsh r0, [r4, r1]
	add r1, r1, #2
	mov r2, #0
	ldrh r1, [r4, r1]
	mvn r2, r2
	bl ov15_021FBD28
	mov r1, #0x1a
	lsl r1, r1, #6
	strh r0, [r4, r1]
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0x2e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ManagedSprite_SetAnim
	mov r5, #2
	b _021FCF2E
_021FCEFE:
	mov r5, #3
	b _021FCF2E
_021FCF02:
	mov r5, #4
	b _021FCF2E
_021FCF06:
	mov r1, #0x1a
	lsl r1, r1, #6
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	bl sub_020881C0
	add r5, r0, #0
	bne _021FCF2E
	ldr r0, _021FCFBC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021FCF26
	mov r5, #3
	b _021FCF2E
_021FCF26:
	mov r0, #2
	tst r0, r1
	beq _021FCF2E
	mov r5, #4
_021FCF2E:
	cmp r5, #4
	bhi _021FCFB2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FCF3E: ; jump table
	.short _021FCFB2 - _021FCF3E - 2 ; case 0
	.short _021FCF48 - _021FCF3E - 2 ; case 1
	.short _021FCF62 - _021FCF3E - 2 ; case 2
	.short _021FCF7C - _021FCF3E - 2 ; case 3
	.short _021FCF96 - _021FCF3E - 2 ; case 4
_021FCF48:
	add r0, r4, #0
	bl ov15_021FF068
	add r0, r4, #0
	mov r1, #2
	bl ov15_021FEDEC
	ldr r0, _021FCFC0 ; =0x00000637
	bl PlaySE
	add sp, #4
	mov r0, #0x12
	pop {r3, r4, r5, r6, pc}
_021FCF62:
	add r0, r4, #0
	bl ov15_021FF068
	add r0, r4, #0
	mov r1, #2
	bl ov15_021FEDEC
	ldr r0, _021FCFC0 ; =0x00000637
	bl PlaySE
	add sp, #4
	mov r0, #0x12
	pop {r3, r4, r5, r6, pc}
_021FCF7C:
	ldr r0, _021FCFC4 ; =0x000005DC
	bl PlaySE
	mov r0, #0x13
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021FCF96:
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #0x14
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021FCFB2:
	mov r0, #0x12
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FCFB8: .word 0x00000682
_021FCFBC: .word gSystem
_021FCFC0: .word 0x00000637
_021FCFC4: .word 0x000005DC
	thumb_func_end ov15_021FCDE4

