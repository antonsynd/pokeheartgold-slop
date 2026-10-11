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
	.include "overlay_01_021EFB38.inc"
	.include "global.inc"
	.public ov01_021F12E8
	.public ov01_021F1310

	.text

	.text
	thumb_func_start ov01_021F12E8
ov01_021F12E8: ; 0x021F12E8
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	add r5, sp, #0x10
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0]
	bl sub_02014B08
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_021F12E8

	thumb_func_start ov01_021F1310
ov01_021F1310: ; 0x021F1310
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	add r7, r1, #0
	bl sub_02014BF8
	add r5, r0, #0
	mov r6, #0
_021F131E:
	ldr r0, [r5]
	add r1, r7, #0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r6, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021F1336
	lsl r0, r4, #0x10
	b _021F133A
_021F1336:
	neg r0, r4
	lsl r0, r0, #0x10
_021F133A:
	lsr r0, r0, #0x10
	str r0, [r5]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xc0
	blt _021F131E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F1310

