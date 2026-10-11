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
	.include "overlay_01_021F944C.inc"
	.include "global.inc"
	.public ov01_021FA930
	.public ov01_021FA97C
	.public ov01_021FAB9C
	.extern FldObjSys_ReadMModelFromNarc
	.extern ov01_021FA108
	.extern ov01_021FA1D0
	.extern ov01_021FA28C
	.extern ov01_021FA2A0
	.extern ov01_021FA2AC
	.extern ov01_021FA2D4
	.extern ov01_021FA31C
	.extern ov01_021FA3DC

	.text

	.text
	thumb_func_start ov01_021FA930
ov01_021FA930: ; 0x021FA930
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021FA948
	add r0, r5, #0
	bl ov01_021F72DC
	cmp r0, #0
	bne _021FA972
_021FA948:
	add r0, r5, #0
	bl MapObject_GetSpriteID
	add r6, r0, #0
	add r0, r5, #0
	bl MapObject_GetManager
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0205E420
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov01_021FA108
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205E38C
	pop {r3, r4, r5, r6, r7, pc}
_021FA972:
	add r0, r5, #0
	add r1, r4, #0
	bl ov01_021FA97C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021FA930

	thumb_func_start ov01_021FA97C
ov01_021FA97C: ; 0x021FA97C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r6, r0, #0
	str r1, [sp, #8]
	bl ov01_021FA3DC
	add r7, r0, #0
	bl ov01_021FA1D0
	str r0, [sp, #0x14]
	add r0, r6, #0
	bl ov01_021F72DC
	str r0, [sp, #0x10]
	mov r0, #4
	mov r1, #0x58
	bl Heap_AllocAtEnd
	mov r1, #0
	mov r2, #0x58
	add r5, r0, #0
	bl memset
	ldr r0, [sp, #8]
	str r0, [r5]
	add r0, r6, #0
	str r6, [r5, #0x50]
	bl MapObject_GetID
	cmp r0, #0xff
	bne _021FA9CE
	add r0, r6, #0
	bl ov01_021F72DC
	bl sub_02023F90
	mov r1, #0
	bl NNS_G3dMdlGetMdlFogEnableFlag
	str r0, [sp, #0x1c]
	b _021FA9D2
_021FA9CE:
	mov r0, #0
	str r0, [sp, #0x1c]
_021FA9D2:
	add r0, r6, #0
	bl MapObject_GetSpriteID
	str r0, [sp, #0x18]
	bl ov01_021FA28C
	ldr r4, _021FAB90 ; =ov01_02207294
_021FA9E0:
	ldrh r1, [r4]
	cmp r1, r0
	beq _021FA9EE
	add r4, r4, #4
	ldrh r1, [r4]
	cmp r1, #0xff
	bne _021FA9E0
_021FA9EE:
	cmp r1, #0xff
	bne _021FA9F6
	bl GF_AssertFail
_021FA9F6:
	ldrh r1, [r4, #2]
	add r0, r7, #0
	mov r2, #0
	bl FldObjSys_ReadMModelFromNarc
	str r0, [r5, #8]
	ldr r0, [sp, #0x18]
	bl ov01_021FA2A0
	ldr r4, _021FAB94 ; =ov01_022072CC
_021FAA0A:
	ldrh r1, [r4]
	cmp r1, r0
	beq _021FAA18
	add r4, r4, #4
	ldrh r1, [r4]
	cmp r1, #0xff
	bne _021FAA0A
_021FAA18:
	cmp r1, #0xff
	bne _021FAA20
	bl GF_AssertFail
_021FAA20:
	ldrh r1, [r4, #2]
	add r0, r7, #0
	mov r2, #0
	bl FldObjSys_ReadMModelFromNarc
	add r1, r5, #0
	add r1, #0x14
	str r0, [r5, #0xc]
	bl sub_02026E18
	ldr r0, [sp, #0x18]
	bl GetMoveModelNoBySpriteId
	add r1, r0, #0
	bpl _021FAA44
	bl GF_AssertFail
	mov r1, #0
_021FAA44:
	add r0, r7, #0
	mov r2, #0
	bl FldObjSys_ReadMModelFromNarc
	str r0, [r5, #0x10]
	bl NNS_G3dGetTex
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	bl ov01_021FA2AC
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x14
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x28
	add r2, r4, #0
	bl sub_02023E2C
	ldr r0, [sp, #0x10]
	bl sub_02023E68
	add r3, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	ldr r0, [sp, #0x14]
	add r1, #0x28
	add r2, r4, #0
	bl ov01_021FA31C
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _021FAA98
	bl GF_AssertFail
_021FAA98:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _021FAAAA
	ldr r0, [r5, #0x24]
	bl sub_02023F90
	mov r1, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
_021FAAAA:
	ldr r0, [sp, #0x10]
	bl sub_02023EF4
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023EE0
	ldr r0, [sp, #0x10]
	bl sub_02023F70
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F40
	ldr r0, [sp, #0x10]
	bl sub_02023F30
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02023F1C
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_02023F04
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl sub_02023EA4
	ldr r0, [r5, #0x24]
	bl sub_02023FC0
	add r0, r6, #0
	bl MapObject_CheckFlag24
	cmp r0, #1
	bne _021FAB4A
	add r0, r6, #0
	mov r1, #2
	bl MapObject_GetPriorityPlusValue
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #1
	bl sub_02060FA8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl MetatileBehavior_IsReflective
	cmp r0, #1
	bne _021FAB18
	mov r4, #2
	b _021FAB28
_021FAB18:
	add r0, r4, #0
	bl MetatileBehavior_IsPuddle
	cmp r0, #1
	bne _021FAB26
	mov r4, #0
	b _021FAB28
_021FAB26:
	mov r4, #1
_021FAB28:
	add r0, r6, #0
	add r1, sp, #0x20
	bl MapObject_CopyPositionVector
	add r0, r6, #0
	bl ov01_021F146C
	ldr r1, [sp, #0xc]
	str r4, [sp]
	str r1, [sp, #4]
	add r1, r5, #0
	ldr r2, [r5, #0x24]
	add r1, #0x28
	add r3, sp, #0x20
	bl ov01_021FDE64
	str r0, [r5, #0x54]
_021FAB4A:
	add r0, r6, #0
	bl sub_0205E420
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x18]
	add r2, r6, #0
	bl ov01_021FA108
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl sub_0205E38C
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl MapObjectManager_GetPriority
	ldr r0, _021FAB98 ; =ov01_021FAB9C
	add r1, r5, #0
	mov r2, #0xff
	bl SysTask_CreateOnVWaitQueue
	add r4, r0, #0
	bne _021FAB82
	bl GF_AssertFail
_021FAB82:
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021FAB9C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FAB90: .word ov01_02207294
_021FAB94: .word ov01_022072CC
_021FAB98: .word ov01_021FAB9C
	thumb_func_end ov01_021FA97C

	thumb_func_start ov01_021FAB9C
ov01_021FAB9C: ; 0x021FAB9C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x50]
	cmp r0, #0
	beq _021FABB0
	cmp r0, #1
	beq _021FAC08
	pop {r4, r5, r6, pc}
_021FABB0:
	add r0, r4, #0
	bl MapObject_CheckActive
	cmp r0, #0
	beq _021FABC4
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #0
	bne _021FABF4
_021FABC4:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021FABCE
	bl sub_02068B48
_021FABCE:
	ldr r0, [r5, #0x24]
	bl sub_02023DA4
	ldr r0, [r5, #8]
	bl Heap_Free
	ldr r0, [r5, #0xc]
	bl Heap_Free
	ldr r0, [r5, #0x10]
	bl Heap_Free
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
	pop {r4, r5, r6, pc}
_021FABF4:
	add r0, r4, #0
	bl MapObject_GetSpriteID
	ldr r1, [r5]
	cmp r1, r0
	beq _021FAC40
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021FAC08:
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #0
	bne _021FAC40
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021FAC1C
	bl sub_02068B48
_021FAC1C:
	ldr r0, [r5, #0x24]
	bl sub_02023DA4
	ldr r0, [r5, #8]
	bl Heap_Free
	ldr r0, [r5, #0xc]
	bl Heap_Free
	ldr r0, [r5, #0x10]
	bl Heap_Free
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_021FAC40:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021FAB9C

