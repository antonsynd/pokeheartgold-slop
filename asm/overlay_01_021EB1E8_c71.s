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
	.public ov01_021EC828
	.public ov01_021EC85C

	.text

	.text
	thumb_func_start ov01_021EC828
ov01_021EC828: ; 0x021EC828
	push {r3, r4}
	mov r1, #0x2e
	ldrsh r1, [r0, r1]
	ldr r2, [r0, #0x24]
	cmp r1, #0
	bge _021EC83A
	mov r1, #0x7f
	sub r2, r1, r2
	b _021EC83A
_021EC83A:
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	asr r4, r1, #2
	mov r3, #0x1f
	cmp r4, #0x1f
	bge _021EC856
_021EC848:
	sub r1, r3, r4
	lsl r2, r1, #2
	add r1, r0, r3
	sub r3, r3, #1
	strb r2, [r1, #4]
	cmp r3, r4
	bgt _021EC848
_021EC856:
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov01_021EC828

	thumb_func_start ov01_021EC85C
ov01_021EC85C: ; 0x021EC85C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #0x28]
	add r1, r2, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x2c]
	blx r4
	ldr r0, [sp]
	mov r6, #0
	ldr r5, [r0, #0x40]
	str r6, [sp, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021EC8D2
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
_021EC88A:
	ldr r0, [sp]
	cmp r5, r0
	beq _021EC8D2
	mov r4, #0
	cmp r6, #0
	ble _021EC8A6
_021EC896:
	add r0, r5, #0
	blx r7
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EC8A6
	add r4, r4, #1
	cmp r4, r6
	blt _021EC896
_021EC8A6:
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _021EC8C6
	add r0, r1, #0
	ldr r1, [sp, #8]
	bl _s32_div_f
	cmp r1, #0
	bne _021EC8C6
	ldr r0, [sp, #0x28]
	add r6, r6, r0
_021EC8C6:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021EC88A
_021EC8D2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov01_021EC85C

