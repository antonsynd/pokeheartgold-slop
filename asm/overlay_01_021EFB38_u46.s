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
	.public ov01_021F0B78
	.extern ov01_021EFE34
	.extern ov01_021F0C40

	.text

	.text
	thumb_func_start ov01_021F0B78
ov01_021F0B78: ; 0x021F0B78
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r6, r2, #0
	add r5, r3, #0
	cmp r0, #0
	beq _021F0B94
	bl GF_AssertFail
_021F0B94:
	mov r2, #0
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x10]
	add r4, #0x18
	ldr r0, [r0, #4]
	add r3, r6, #0
	ldr r1, [r0, #0x1c]
	add r0, r7, #0
	add r0, #0xd8
	str r1, [r0]
	add r0, r7, #0
	str r2, [r7, #0x14]
	add r0, #0xe4
	str r4, [r0]
	add r0, r7, #0
	mov r1, #0xff
	bl ov01_021EFE34
	mov r4, #0
_021F0BBA:
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	ldr r0, [sp, #0x18]
	mul r0, r1
	add r1, r5, #0
	bl _u32_div_f
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021F0BE2
	add r0, r7, r4
	strb r6, [r0, #0x18]
	b _021F0BEA
_021F0BE2:
	ldr r0, [sp, #0x18]
	sub r1, r0, r6
	add r0, r7, r4
	strb r1, [r0, #0x18]
_021F0BEA:
	add r4, r4, #1
	cmp r4, #0xc0
	blt _021F0BBA
	ldr r0, _021F0C34 ; =0x04000048
	mov r1, #0x3f
	ldrh r3, [r0]
	ldr r2, [sp, #0x1c]
	bic r3, r1
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r1
	ldr r1, [sp, #0x20]
	orr r1, r3
	strh r1, [r0, #2]
	add r1, r0, #0
	mov r3, #0
	sub r1, #8
	strh r3, [r1]
	mov r1, #0xc0
	sub r0, r0, #4
	strh r1, [r0]
	lsl r3, r2, #0x15
	ldr r1, [r3]
	ldr r0, _021F0C38 ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r2, #8
	orr r0, r1
	str r0, [r3]
	ldr r0, _021F0C3C ; =ov01_021F0C40
	add r1, r7, #0
	lsl r2, r2, #5
	bl SysTask_CreateOnVWaitQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F0C34: .word 0x04000048
_021F0C38: .word 0xFFFF1FFF
_021F0C3C: .word ov01_021F0C40
	thumb_func_end ov01_021F0B78

