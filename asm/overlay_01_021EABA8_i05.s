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
	.include "overlay_01_021EABA8.inc"
	.include "global.inc"
	.public ov01_021EACBC
	.extern ov01_02206464
	.extern ov01_02206478
	.extern ov01_02209B60

	.text

	.text
	thumb_func_start ov01_021EACBC
ov01_021EACBC: ; 0x021EACBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _021EAD74
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021EACEA
	ldrb r0, [r5, #7]
	cmp r0, r1
	bne _021EACE4
	ldrh r0, [r5, #0x2e]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strh r0, [r5, #0x2e]
	pop {r3, r4, r5, r6, r7, pc}
_021EACE4:
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021EACEA:
	ldr r2, [r5, #0x30]
	mov r0, #0x24
	mul r0, r2
	strb r1, [r5, #7]
	mov r2, #1
	str r2, [r5, #0x28]
	ldr r2, _021EAD78 ; =ov01_02209B60
	ldr r3, _021EAD7C ; =ov01_02206478
	ldr r2, [r2]
	add r0, r3, r0
	cmp r2, #0
	bne _021EAD26
	ldrh r0, [r0, #4]
	sub r1, r1, #1
	add r2, r5, #0
	strh r0, [r5, #0x2c]
	mov r0, #0x14
	add r4, r1, #0
	mul r4, r0
	ldr r0, _021EAD80 ; =ov01_02206464
	add r2, #8
	add r3, r0, r4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldrb r1, [r5, #7]
	ldr r0, _021EAD78 ; =ov01_02209B60
	str r1, [r0]
	b _021EAD6A
_021EAD26:
	sub r2, r1, #1
	mov r1, #0x14
	add r4, r2, #0
	mul r4, r1
	ldr r1, _021EAD80 ; =ov01_02206464
	add r6, r5, #0
	ldrh r1, [r1, r4]
	add r6, #0xc
	mov r3, #0
	strh r1, [r5, #0x2c]
	ldrh r0, [r0, #4]
	add r2, r6, #0
	strh r0, [r5, #8]
	ldr r0, _021EAD84 ; =ov01_02206464 + 4
	strh r3, [r5, #0xa]
	add r7, r0, r4
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r7]
	str r0, [r6]
	ldr r1, [r2]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r2]
	ldr r1, [r5, #0x10]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	sub r0, r3, #1
	mul r0, r1
	str r0, [r5, #0x14]
	ldr r0, _021EAD78 ; =ov01_02209B60
	str r3, [r0]
_021EAD6A:
	ldr r0, _021EAD88 ; =ov01_02206464 + 16
	ldr r0, [r0, r4]
	strb r0, [r5, #4]
	mov r0, #0
	strb r0, [r5, #5]
_021EAD74:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAD78: .word ov01_02209B60
_021EAD7C: .word ov01_02206478
_021EAD80: .word ov01_02206464
_021EAD84: .word ov01_02206464 + 4
_021EAD88: .word ov01_02206464 + 16
	thumb_func_end ov01_021EACBC

