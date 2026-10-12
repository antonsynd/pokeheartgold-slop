#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FBD50
	.extern ov15_021FAC2C
	.extern ov15_021FBD28
	.extern ov15_021FD7D0
	.extern ov15_021FEDEC
	.extern ov15_022002EC

	.text

	.text
	thumb_func_start ov15_021FBD50
ov15_021FBD50: ; 0x021FBD50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r6, #0
	mov r1, #3
	add r4, r0, #0
	bl ov15_021FAC2C
	add r5, r0, #0
	sub r0, r6, #1
	cmp r5, r0
	bne _021FBD68
	b _021FBEF6
_021FBD68:
	ldr r0, _021FBF88 ; =0x00000682
	ldrh r0, [r4, r0]
	bl ov15_022002EC
	cmp r0, #1
	beq _021FBD7A
	cmp r0, #2
	beq _021FBD88
	b _021FBD9A
_021FBD7A:
	cmp r5, #0
	beq _021FBD82
	cmp r5, #3
	bne _021FBD9A
_021FBD82:
	mov r5, #0
	mvn r5, r5
	b _021FBD9A
_021FBD88:
	cmp r5, #0
	beq _021FBD96
	cmp r5, #1
	beq _021FBD96
	sub r0, r5, #3
	cmp r0, #1
	bhi _021FBD9A
_021FBD96:
	mov r5, #0
	mvn r5, r5
_021FBD9A:
	cmp r5, #7
	bls _021FBDA0
	b _021FBF1E
_021FBDA0:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FBDAC: ; jump table
	.short _021FBDBC - _021FBDAC - 2 ; case 0
	.short _021FBDEE - _021FBDAC - 2 ; case 1
	.short _021FBE20 - _021FBDAC - 2 ; case 2
	.short _021FBE52 - _021FBDAC - 2 ; case 3
	.short _021FBE86 - _021FBDAC - 2 ; case 4
	.short _021FBEBA - _021FBDAC - 2 ; case 5
	.short _021FBEEE - _021FBDAC - 2 ; case 6
	.short _021FBEF2 - _021FBDAC - 2 ; case 7
_021FBDBC:
	mov r1, #0x1a
	lsl r1, r1, #6
	ldrsh r0, [r4, r1]
	add r1, r1, #2
	ldrh r1, [r4, r1]
	mov r2, #0x64
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
	mov r6, #1
	b _021FBF1E
_021FBDEE:
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
	mov r6, #1
	b _021FBF1E
_021FBE20:
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
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1a
	bl ManagedSprite_SetAnim
	mov r6, #1
	b _021FBF1E
_021FBE52:
	mov r1, #0x1a
	lsl r1, r1, #6
	ldrsh r0, [r4, r1]
	add r1, r1, #2
	mov r2, #0x63
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
	mov r6, #2
	b _021FBF1E
_021FBE86:
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
	mov r6, #2
	b _021FBF1E
_021FBEBA:
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
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	mov r0, #0xb9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x1c
	bl ManagedSprite_SetAnim
	mov r6, #2
	b _021FBF1E
_021FBEEE:
	mov r6, #3
	b _021FBF1E
_021FBEF2:
	mov r6, #4
	b _021FBF1E
_021FBEF6:
	mov r1, #0x1a
	lsl r1, r1, #6
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	bl sub_020881C0
	add r6, r0, #0
	bne _021FBF1E
	ldr r0, _021FBF8C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021FBF16
	mov r6, #3
	b _021FBF1E
_021FBF16:
	mov r0, #2
	tst r0, r1
	beq _021FBF1E
	mov r6, #4
_021FBF1E:
	cmp r6, #4
	bhi _021FBF82
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FBF2E: ; jump table
	.short _021FBF82 - _021FBF2E - 2 ; case 0
	.short _021FBF38 - _021FBF2E - 2 ; case 1
	.short _021FBF38 - _021FBF2E - 2 ; case 2
	.short _021FBF4C - _021FBF2E - 2 ; case 3
	.short _021FBF66 - _021FBF2E - 2 ; case 4
_021FBF38:
	add r0, r4, #0
	mov r1, #3
	bl ov15_021FEDEC
	ldr r0, _021FBF90 ; =0x00000637
	bl PlaySE
	add sp, #4
	mov r0, #5
	pop {r3, r4, r5, r6, pc}
_021FBF4C:
	ldr r0, _021FBF94 ; =0x000005DC
	bl PlaySE
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x26
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021FBF66:
	mov r0, #SEQ_SE_GS_GEARCANCEL>>6
	lsl r0, r0, #6
	bl PlaySE
	mov r0, #7
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x13
	mov r2, #9
	mov r3, #8
	bl ov15_021FD7D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021FBF82:
	mov r0, #5
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021FBF88: .word 0x00000682
_021FBF8C: .word gSystem
_021FBF90: .word 0x00000637
_021FBF94: .word 0x000005DC
	thumb_func_end ov15_021FBD50

