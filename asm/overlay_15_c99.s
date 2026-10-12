#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FDB2C
	.extern ov15_02200790

	.text

	.text
	thumb_func_start ov15_021FDB2C
ov15_021FDB2C: ; 0x021FDB2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x90
	add r2, r1, #0
	add r1, r0, #0
	ldr r3, _021FDC64 ; =ov15_02200790
	mul r2, r0
	add r1, #0x98
	add r4, r3, r2
	ldrh r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x9a
	ldrh r1, [r5, r1]
	cmp r2, r1
	beq _021FDC28
	add r1, r0, #0
	add r1, #0x98
	ldrh r1, [r5, r1]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0x98
	strh r2, [r5, r1]
	add r1, r0, #0
	add r1, #0x8c
	add r0, #0x90
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [sp, #8]
	ldrh r7, [r4, r1]
	ldrh r1, [r4, r0]
	str r0, [sp, #4]
	sub r0, r1, r7
	bpl _021FDB76
	neg r0, r0
_021FDB76:
	cmp r1, r7
	bhs _021FDB80
	mov r1, #0
	mvn r1, r1
	b _021FDB82
_021FDB80:
	mov r1, #1
_021FDB82:
	mov r2, #2
	lsl r2, r2, #0xe
	cmp r0, r2
	ble _021FDB94
	lsl r2, r2, #1
	sub r0, r2, r0
	mov r2, #0
	mvn r2, r2
	mul r1, r2
_021FDB94:
	cmp r1, #0
	ldr r2, _021FDC68 ; =0x0000012A
	ble _021FDBB0
	ldrh r1, [r5, r2]
	str r1, [sp]
	sub r1, r2, #2
	ldrh r6, [r5, r1]
	ldr r1, [sp]
	bl _s32_div_f
	mul r0, r6
	add r0, r7, r0
	str r0, [sp, #0x14]
	b _021FDBC4
_021FDBB0:
	ldrh r1, [r5, r2]
	str r1, [sp]
	sub r1, r2, #2
	ldrh r6, [r5, r1]
	ldr r1, [sp]
	bl _s32_div_f
	mul r0, r6
	sub r0, r7, r0
	str r0, [sp, #0x14]
_021FDBC4:
	ldr r0, [sp, #8]
	ldr r1, [sp]
	add r0, r4, r0
	ldrh r7, [r0, #2]
	ldr r0, [sp, #4]
	add r0, r4, r0
	ldrh r0, [r0, #2]
	sub r0, r0, r7
	bl _s32_div_f
	mul r0, r6
	add r0, r7, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	add r0, r4, r0
	ldr r7, [r0, #8]
	ldr r0, [sp, #4]
	add r0, r4, r0
	ldr r0, [r0, #8]
	sub r0, r0, r7
	bl _s32_div_f
	mul r0, r6
	add r0, r7, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	add r0, r4, r0
	ldr r7, [r0, #0xc]
	ldr r0, [sp, #4]
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	sub r0, r0, r7
	bl _s32_div_f
	mul r0, r6
	add r1, r7, r0
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r2, [sp, #0x14]
	add r3, r0, #2
	strh r2, [r5, r0]
	ldr r2, [sp, #0x10]
	strh r2, [r5, r3]
	sub r3, r0, #4
	ldr r2, [sp, #0xc]
	add r0, #0x24
	str r2, [r5, r3]
	str r1, [r5, r0]
_021FDC28:
	mov r1, #0x4a
	lsl r1, r1, #2
	add r0, r1, #2
	ldrh r2, [r5, r1]
	ldrh r0, [r5, r0]
	cmp r2, r0
	bne _021FDC60
	sub r0, r1, #4
	mov r2, #0
	ldr r0, [r5, r0]
	mvn r2, r2
	cmp r0, r2
	beq _021FDC60
	add r0, r1, #0
	sub r0, #8
	ldr r3, [r5, r0]
	add r0, r1, #0
	sub r0, #0xc
	str r3, [r5, r0]
	sub r0, r1, #4
	ldr r3, [r5, r0]
	add r0, r1, #0
	sub r0, #8
	str r3, [r5, r0]
	sub r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0
	strh r0, [r5, r1]
_021FDC60:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FDC64: .word ov15_02200790
_021FDC68: .word 0x0000012A
	thumb_func_end ov15_021FDB2C

