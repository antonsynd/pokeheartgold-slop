#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E895C
	.public ov14_021E89B8
	.public ov14_021E8A7C
	.public ov14_021E8ACC
	.public ov14_021E8B1C
	.extern ov14_021E60C0
	.extern ov14_021F7D0C
	.extern ov14_021F7D14

    .text

	.text
	thumb_func_start ov14_021E895C
ov14_021E895C: ; 0x021E895C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #1
_021E8968:
	add r0, r7, #0
	lsl r0, r4
	tst r0, r6
	beq _021E8976
	add r0, r4, #0
	add r0, #0x3a
	b _021E897A
_021E8976:
	add r0, r4, #0
	add r0, #0x1a
_021E897A:
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0x12
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x34]
	add r3, r4, #0
	add r3, #0xf
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x14]
	mov r1, #5
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _021E8968
	ldr r0, [r5, #0x34]
	mov r1, #5
	ldr r0, [r0, #0x14]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov14_021E895C

	thumb_func_start ov14_021E89B8
ov14_021E89B8: ; 0x021E89B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	mov r1, #0x3c
	bl Heap_Alloc
	str r0, [r5, #0x18]
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E89EE
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	mov r2, #0
	bl ov14_021E60C0
	str r0, [r4]
	mov r0, #2
	strb r0, [r4, #0x11]
	mov r0, #0x1e
	strb r0, [r4, #0x13]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	b _021E8A06
_021E89EE:
	ldr r0, [r5, #8]
	str r0, [r4]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [r5, #8]
	bl Party_GetCount
	strb r0, [r4, #0x13]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
_021E8A06:
	strb r0, [r4, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [r4, #4]
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfile
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208AD34
	mov r0, #0
	strb r0, [r4, #0x12]
	ldr r1, _021E8A74 ; =ov14_021F7D0C
	add r0, r4, #0
	bl sub_02089D40
	mov r0, #0
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	strh r0, [r4, #0x18]
	ldr r0, [r5]
	ldr r0, [r0]
	bl SaveArray_IsNatDexEnabled
	str r0, [r4, #0x1c]
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_SpecialRibbons_Get
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02088288
	str r0, [r4, #0x2c]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0208828C
	str r0, [r4, #0x34]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #4]
	mov r2, #9
	str r0, [r4, #0x30]
	ldr r0, _021E8A78 ; =gOverlayTemplate_PokemonSummary
	bl OverlayManager_New
	str r0, [r5, #0x14]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8A74: .word ov14_021F7D0C
_021E8A78: .word gOverlayTemplate_PokemonSummary
	thumb_func_end ov14_021E89B8

	thumb_func_start ov14_021E8A7C
ov14_021E8A7C: ; 0x021E8A7C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x27
	ldrb r1, [r1]
	ldr r0, [r4, #0x18]
	cmp r1, #0
	bne _021E8AA8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldrb r2, [r0, #0x14]
	cmp r1, #0x1e
	bhs _021E8AA0
	add r1, r4, #0
	add r1, #0x21
	strb r2, [r1]
	b _021E8AA8
_021E8AA0:
	add r1, r4, #0
	add r2, #0x1e
	add r1, #0x21
	strb r2, [r1]
_021E8AA8:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #0x1e
	bhs _021E8AC0
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _021E8AC0
	ldrb r1, [r4, #0x1f]
	ldr r0, [r4, #4]
	bl PCStorage_SetBoxModified
_021E8AC0:
	ldr r0, [r4, #0x18]
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8A7C

	thumb_func_start ov14_021E8ACC
ov14_021E8ACC: ; 0x021E8ACC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl Save_Bag_Get
	ldr r1, _021E8B10 ; =ov14_021F7D14
	mov r2, #9
	bl Bag_CreateView
	str r0, [r4, #0x18]
	ldr r1, [r4]
	mov r2, #1
	ldr r0, [r1, #4]
	mov r3, #0
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [r1]
	bl sub_0207789C
	ldr r0, _021E8B14 ; =FS_OVERLAY_ID(OVY_15)
	mov r1, #2
	bl HandleLoadOverlay
	ldr r0, _021E8B18 ; =ov15_022008B8
	ldr r1, [r4, #0x18]
	mov r2, #9
	bl OverlayManager_New
	str r0, [r4, #0x14]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021E8B10: .word ov14_021F7D14
_021E8B14: .word FS_OVERLAY_ID(OVY_15)
_021E8B18: .word ov15_022008B8
	thumb_func_end ov14_021E8ACC

	thumb_func_start ov14_021E8B1C
ov14_021E8B1C: ; 0x021E8B1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E8B38 ; =FS_OVERLAY_ID(OVY_15)
	bl UnloadOverlayByID
	ldr r0, [r4, #0x18]
	bl BagView_GetItemId
	strh r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E8B38: .word FS_OVERLAY_ID(OVY_15)
	thumb_func_end ov14_021E8B1C

