#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public ov02_0224663C

	.text

	.text
	thumb_func_start ov02_0224663C
ov02_0224663C: ; 0x0224663C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r2, [r5, #0x10]
	add r0, #0x10
	add r1, r2, #1
	strh r1, [r5, #0x10]
	cmp r2, #0
	ldrh r2, [r5, #0x10]
	beq _02246666
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	lsl r0, r2, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0224667A
_02246666:
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	lsl r0, r2, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0224667A:
	bl _ffix
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	bl GF_SinDegFX32
	mov r2, #8
	ldrsh r2, [r5, r2]
	add r4, r0, #0
	asr r6, r4, #0x1f
	add r1, r6, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	ldr r1, [r5, #0x2c]
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	add r0, r1, r0
	str r0, [r5, #0x20]
	mov r2, #0xa
	ldrsh r2, [r5, r2]
	add r0, r4, #0
	add r1, r6, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r4, #2
	add r3, r7, #0
	lsl r4, r4, #0xa
	add r4, r0, r4
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	ldr r2, [r5, #0x30]
	orr r1, r0
	add r0, r2, r1
	str r0, [r5, #0x24]
	ldrh r1, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	cmp r1, r0
	bhs _022466F8
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
_022466F8:
	ldr r0, [r5, #0x2c]
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x30]
	str r0, [r5, #0x24]
	strh r3, [r5, #0x10]
	ldrh r0, [r5, #0xe]
	sub r0, r0, #1
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _02246710
	mov r3, #1
_02246710:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov02_0224663C

