#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F2490.inc"
	.include "global.inc"
	.public ov14_021F2DE8
	.public ov14_021F2E78
	.extern ov14_021F2C1C
	.extern ov14_021F2DC4

    .text

	.text
	thumb_func_start ov14_021F2DE8
ov14_021F2DE8: ; 0x021F2DE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r5, r0, #0
	str r1, [sp, #4]
	add r6, r4, #0
_021F2DF4:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [sp, #4]
	add r2, r4, #0
	mov r3, #0xac
	bl PCStorage_GetMonDataByIndexPair
	cmp r0, #0
	bne _021F2E10
	ldr r0, [r5, #0x34]
	mov r1, #0
	add r2, r0, r4
	b _021F2E56
_021F2E10:
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl ov14_021E60C0
	add r7, r0, #0
	ldr r0, [r5, #0x34]
	add r1, r7, #0
	add r2, sp, #0xc
	bl ov14_021F2DC4
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [r5, #0x34]
	ldr r1, _021F2E6C ; =0x00000458
	ldr r0, [r0, #0x14]
	add r1, r2, r1
	mov r2, #2
	add r1, r1, r6
	lsl r2, r2, #8
	bl MIi_CpuCopy32
	ldr r0, [sp, #8]
	bl Heap_Free
	add r0, r7, #0
	bl Boxmon_GetIconPalette
	ldr r1, [r5, #0x34]
	add r2, r1, r4
	ldr r1, _021F2E70 ; =0x00004076
	strb r0, [r2, r1]
	ldr r0, [r5, #0x34]
	mov r1, #1
	add r2, r0, r4
_021F2E56:
	ldr r0, _021F2E74 ; =0x00004058
	add r4, r4, #1
	strb r1, [r2, r0]
	mov r0, #2
	lsl r0, r0, #8
	add r6, r6, r0
	cmp r4, #0x1e
	blo _021F2DF4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2E6C: .word 0x00000458
_021F2E70: .word 0x00004076
_021F2E74: .word 0x00004058
	thumb_func_end ov14_021F2DE8

	thumb_func_start ov14_021F2E78
ov14_021F2E78: ; 0x021F2E78
	push {r3, r4, r5, r6, r7, lr}
	add r6, r3, #0
	mov r3, #2
	add r7, r1, #0
	add r4, r2, #0
	add r1, r4, #0
	add r2, r7, #0
	lsl r3, r3, #8
	add r5, r0, #0
	bl ov14_021F2C1C
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #3
	bl ManagedSprite_SetPaletteOverride
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov14_021F2E78

