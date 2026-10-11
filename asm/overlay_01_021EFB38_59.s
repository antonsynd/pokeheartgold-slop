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
	.public ov01_021F0F08
	.public ov01_021F0FB8
	.extern ov01_021F1224
	.extern ov01_021F1250
	.extern ov01_02209B64

	.text

	.text
	thumb_func_start ov01_021F0F08
ov01_021F0F08: ; 0x021F0F08
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _021F0FAC ; =ov01_02209B64
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0F1C
	bl GF_AssertFail
_021F0F1C:
	ldr r0, _021F0FAC ; =ov01_02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F0F2A
	bl GF_AssertFail
_021F0F2A:
	mov r1, #0x12
	mov r0, #4
	lsl r1, r1, #0xa
	bl Heap_Alloc
	ldr r2, _021F0FAC ; =ov01_02209B64
	mov r3, #0x12
	ldr r1, [r2]
	lsl r3, r3, #0xa
	str r0, [r1, #0xc]
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r2, [r2]
	ldr r0, _021F0FB0 ; =ov01_021F1224
	ldr r1, _021F0FB4 ; =ov01_021F1250
	ldr r2, [r2, #0xc]
	bl sub_02014DB4
	ldr r1, _021F0FAC ; =ov01_02209B64
	ldr r2, [r1]
	str r0, [r2, #8]
	ldr r0, [r1]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021F0F64
	bl GF_AssertFail
_021F0F64:
	ldr r0, _021F0FAC ; =ov01_02209B64
	mov r1, #1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_02015528
	ldr r0, _021F0FAC ; =ov01_02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl sub_02015524
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #4
	str r2, [sp]
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, r0, #0
	ldr r0, _021F0FAC ; =ov01_02209B64
	mov r2, #0
	ldr r0, [r0]
	add r3, r2, #0
	ldr r0, [r0, #8]
	bl sub_0201526C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021F0FAC: .word ov01_02209B64
_021F0FB0: .word ov01_021F1224
_021F0FB4: .word ov01_021F1250
	thumb_func_end ov01_021F0F08

	thumb_func_start ov01_021F0FB8
ov01_021F0FB8: ; 0x021F0FB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _021F1004 ; =ov01_02209B64
	ldr r0, [r0]
	cmp r0, #0
	bne _021F0FD4
	bl GF_AssertFail
_021F0FD4:
	ldr r0, _021F1004 ; =ov01_02209B64
	ldr r0, [r0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021F0FE2
	bl GF_AssertFail
_021F0FE2:
	mov r4, #0
	cmp r5, #0
	bls _021F0FFE
	ldr r6, _021F1004 ; =ov01_02209B64
	add r7, sp, #0
_021F0FEC:
	ldr r0, [r6]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r2, r7, #0
	bl sub_02015484
	add r4, r4, #1
	cmp r4, r5
	blo _021F0FEC
_021F0FFE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F1004: .word ov01_02209B64
	thumb_func_end ov01_021F0FB8

