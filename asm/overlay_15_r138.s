#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_02200458

	.text

	.text
	thumb_func_start ov15_02200458
ov15_02200458: ; 0x02200458
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	cmp r7, #1
	beq _0220046C
	cmp r7, #0
	beq _0220046C
	bl GF_AssertFail
_0220046C:
	add r0, sp, #0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r6, #0
	add r4, r6, #0
_0220047A:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r0, r0, r4
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	blo _0220048C
	bl GF_AssertFail
_0220048C:
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r0, r4
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _022004A2
	ldrb r2, [r1, #0xc]
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, r2]
_022004A2:
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #8
	blt _0220047A
	mov r6, #0
	add r4, sp, #0
_022004AE:
	ldrb r0, [r4]
	cmp r0, #0
	beq _022004C2
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
	b _022004CE
_022004C2:
	mov r0, #0x9d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_022004CE:
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, #8
	blt _022004AE
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov15_02200458

