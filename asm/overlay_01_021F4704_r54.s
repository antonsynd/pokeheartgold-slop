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
	.include "overlay_01_021F4704.inc"
	.include "global.inc"
	.public ov01_021F6614
	.public ov01_021F6620

	.text

	.text
	thumb_func_start ov01_021F6614
ov01_021F6614: ; 0x021F6614
	push {r3, lr}
	bl SysTask_GetData
	mov r1, #1
	str r1, [r0, #0x20]
	pop {r3, pc}
	thumb_func_end ov01_021F6614

	thumb_func_start ov01_021F6620
ov01_021F6620: ; 0x021F6620
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021F6630
	mov r0, #5
	strb r0, [r4, #0x18]
_021F6630:
	ldrb r0, [r4, #0x18]
	cmp r0, #5
	bls _021F6638
	b _021F676A
_021F6638:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F6644: ; jump table
	.short _021F6650 - _021F6644 - 2 ; case 0
	.short _021F6680 - _021F6644 - 2 ; case 1
	.short _021F66B6 - _021F6644 - 2 ; case 2
	.short _021F66D4 - _021F6644 - 2 ; case 3
	.short _021F676A - _021F6644 - 2 ; case 4
	.short _021F6758 - _021F6644 - 2 ; case 5
_021F6650:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #0xe
	ldr r5, [r4, #8]
	lsl r0, r0, #0xc
	cmp r5, r0
	bgt _021F6662
	mov r0, #2
	b _021F6666
_021F6662:
	add r5, r0, #0
	mov r0, #1
_021F6666:
	strb r0, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r0, [r4]
	ldr r3, [r2]
	ldr r2, [r4, #0x2c]
	add r1, r5, #0
	add r2, r3, r2
	bl NARC_ReadFile
	ldr r0, [r4, #0x2c]
	add r0, r0, r5
	str r0, [r4, #0x2c]
	pop {r4, r5, r6, pc}
_021F6680:
	ldr r2, [r4, #0x2c]
	ldr r0, [r4, #8]
	sub r5, r0, r2
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r5, r0
	ble _021F6694
	add r5, r0, #0
	mov r6, #0
	b _021F6696
_021F6694:
	mov r6, #1
_021F6696:
	ldr r3, [r4, #0x10]
	ldr r0, [r4]
	ldr r3, [r3]
	add r1, r5, #0
	add r2, r3, r2
	bl NARC_ReadFile
	cmp r6, #0
	beq _021F66AE
	mov r0, #2
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021F66AE:
	ldr r0, [r4, #0x2c]
	add r0, r0, r5
	str r0, [r4, #0x2c]
	pop {r4, r5, r6, pc}
_021F66B6:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F66CE
	bl GF3dRender_ResTexIsLoaded
	cmp r0, #1
	bne _021F66CE
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, [r0]
	bl GF3dRender_BindModelSet
_021F66CE:
	mov r0, #3
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021F66D4:
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	bl NNS_G3dGetMdlSet
	add r5, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, #1
	beq _021F66E8
	bl GF_AssertFail
_021F66E8:
	cmp r5, #0
	beq _021F670C
	add r1, r5, #0
	add r1, #8
	beq _021F6700
	ldrb r0, [r5, #9]
	cmp r0, #0
	bls _021F6700
	ldrh r0, [r5, #0xe]
	add r0, r1, r0
	add r0, r0, #4
	b _021F6702
_021F6700:
	mov r0, #0
_021F6702:
	cmp r0, #0
	beq _021F670C
	ldr r0, [r0]
	add r5, r5, r0
	b _021F670E
_021F670C:
	mov r5, #0
_021F670E:
	cmp r5, #0
	bne _021F6716
	bl GF_AssertFail
_021F6716:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl NNS_G3dRenderObjInit
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F672A
	bl GF_AssertFail
_021F672A:
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #0x28]
	bl ov01_02204698
	cmp r0, #0
	beq _021F674C
	ldr r0, [r4, #4]
	bl sub_02054E20
	cmp r0, #0
	bne _021F674C
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0xc]
	bl ov01_02204678
_021F674C:
	ldr r0, [r4, #0x1c]
	mov r1, #1
	str r1, [r0]
	mov r0, #5
	strb r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021F6758:
	ldr r0, [r4, #0x24]
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_021F676A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov01_021F6620

