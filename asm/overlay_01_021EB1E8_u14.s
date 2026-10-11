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
	.public ov01_021EB68C
	.public ov01_021EB700
	.extern ov01_021EB5A4
	.extern ov01_021EB9A8
	.extern ov01_021EBA08
	.extern ov01_021EBA44
	.extern ov01_021EBB40
	.extern ov01_021EBB68
	.extern ov01_021EBB90

	.text

	.text
	thumb_func_start ov01_021EB68C
ov01_021EB68C: ; 0x021EB68C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021EB6F6
	mov r5, #0
_021EB69A:
	ldr r0, [r4]
	add r1, r5, #0
	bl ov01_021EBB90
	add r5, r5, #1
	cmp r5, #0xe
	blt _021EB69A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0x4c]
	add r3, r2, #0
	bl ov01_021EA864
	ldr r1, _021EB6FC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4]
	add r0, #8
	bl ov01_021EB5A4
	mov r0, #0x42
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl NARC_Delete
	ldr r1, [r4]
	mov r0, #4
	bl Heap_FreeExplicit
	mov r0, #0
	str r0, [r4]
_021EB6F6:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021EB6FC: .word 0x04000008
	thumb_func_end ov01_021EB68C

	thumb_func_start ov01_021EB700
ov01_021EB700: ; 0x021EB700
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	mov r6, #1
	cmp r4, #0xe
	ble _021EB710
	mov r0, #0
	pop {r4, r5, r6, pc}
_021EB710:
	cmp r1, #0xa
	bhi _021EB7FA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB720: ; jump table
	.short _021EB736 - _021EB720 - 2 ; case 0
	.short _021EB740 - _021EB720 - 2 ; case 1
	.short _021EB74A - _021EB720 - 2 ; case 2
	.short _021EB758 - _021EB720 - 2 ; case 3
	.short _021EB766 - _021EB720 - 2 ; case 4
	.short _021EB796 - _021EB720 - 2 ; case 5
	.short _021EB7A0 - _021EB720 - 2 ; case 6
	.short _021EB7A8 - _021EB720 - 2 ; case 7
	.short _021EB7B2 - _021EB720 - 2 ; case 8
	.short _021EB7BA - _021EB720 - 2 ; case 9
	.short _021EB7DA - _021EB720 - 2 ; case 10
_021EB736:
	add r1, r4, #0
	bl ov01_021EB9A8
	add r6, r0, #0
	b _021EB7FA
_021EB740:
	add r1, r4, #0
	bl ov01_021EBA08
	add r6, r0, #0
	b _021EB7FA
_021EB74A:
	add r1, r4, #0
	mov r2, #0
	add r3, r6, #0
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB758:
	add r1, r4, #0
	mov r2, #2
	add r3, r6, #0
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB766:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x4c]
	bl ov01_021EA854
	cmp r0, #1
	bne _021EB786
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB786:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	add r3, r6, #0
	bl ov01_021EBA44
	add r6, r0, #0
	b _021EB7FA
_021EB796:
	add r1, r4, #0
	add r2, r6, #0
	bl ov01_021EBB40
	b _021EB7FA
_021EB7A0:
	add r1, r4, #0
	bl ov01_021EBB68
	b _021EB7FA
_021EB7A8:
	add r1, r4, #0
	mov r2, #0
	bl ov01_021EBB40
	b _021EB7FA
_021EB7B2:
	add r1, r4, #0
	bl ov01_021EBB90
	b _021EB7FA
_021EB7BA:
	mov r0, #0x1c
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _021EB7FA
	ldr r0, _021EB800 ; =0x00000F5C
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021EB7FA
	add r0, r0, #4
	ldrh r0, [r2, r0]
	bl PlaySE
	b _021EB7FA
_021EB7DA:
	mov r0, #0x1c
	ldr r1, [r5]
	mul r0, r4
	add r0, r1, r0
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _021EB7FA
	ldr r0, _021EB800 ; =0x00000F5C
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021EB7FA
	add r0, r0, #4
	ldrh r0, [r2, r0]
	mov r1, #0
	bl StopSE
_021EB7FA:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_021EB800: .word 0x00000F5C
	thumb_func_end ov01_021EB700

