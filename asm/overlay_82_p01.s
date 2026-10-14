	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223DE20
	.public ov82_0223DF74
	.extern ov82_0223DFBC
	.extern ov82_0223E2A4
	.extern ov82_0223E2EC
	.extern ov82_0223E5D4
	.extern ov82_0223E7E8
	.extern ov82_0223E820
	.extern ov82_0223E888
	.extern ov82_0223E8C4
	.extern ov82_0223F2F8
	.extern ov82_0223F834

	.text

	.text
	thumb_func_start ov82_0223DE20
ov82_0223DE20: ; 0x0223DE20
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldrb r1, [r4, #0x18]
	cmp r1, #0xff
	beq _0223DE4A
	ldr r1, [r5]
	cmp r1, #2
	bne _0223DE4A
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	bne _0223DE4A
	bl ov82_0223F834
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov82_0223F2F8
_0223DE4A:
	ldr r0, [r5]
	cmp r0, #6
	bls _0223DE52
	b _0223DF68
_0223DE52:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DE5E: ; jump table
	.short _0223DE86 - _0223DE5E - 2 ; case 0
	.short _0223DE6C - _0223DE5E - 2 ; case 1
	.short _0223DE9C - _0223DE5E - 2 ; case 2
	.short _0223DEEE - _0223DE5E - 2 ; case 3
	.short _0223DF30 - _0223DE5E - 2 ; case 4
	.short _0223DF46 - _0223DE5E - 2 ; case 5
	.short _0223DF54 - _0223DE5E - 2 ; case 6
_0223DE6C:
	add r0, r4, #0
	bl ov82_0223E2A4
	cmp r0, #1
	bne _0223DE82
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov82_0223F2F8
	b _0223DE86
_0223DE82:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223DE86:
	add r0, r4, #0
	bl ov82_0223DFBC
	cmp r0, #1
	bne _0223DF68
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov82_0223F2F8
	b _0223DF68
_0223DE9C:
	add r0, r4, #0
	bl ov82_0223E2EC
	cmp r0, #1
	bne _0223DF68
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0223DEB8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov82_0223F2F8
	b _0223DF68
_0223DEB8:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _0223DECC
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov82_0223F2F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223DECC:
	ldrb r0, [r4, #9]
	bl ov80_0223792C
	cmp r0, #1
	bne _0223DEE2
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov82_0223F2F8
	b _0223DF68
_0223DEE2:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov82_0223F2F8
	b _0223DF68
_0223DEEE:
	add r0, r4, #0
	bl ov82_0223E5D4
	cmp r0, #1
	bne _0223DF68
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _0223DF0E
	mov r0, #0
	strb r0, [r4, #0x19]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov82_0223F2F8
	b _0223DF68
_0223DF0E:
	ldrb r0, [r4, #9]
	bl ov80_0223792C
	cmp r0, #1
	bne _0223DF24
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov82_0223F2F8
	b _0223DF68
_0223DF24:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov82_0223F2F8
	b _0223DF68
_0223DF30:
	add r0, r4, #0
	bl ov82_0223E7E8
	cmp r0, #1
	bne _0223DF68
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #5
	bl ov82_0223F2F8
	b _0223DF68
_0223DF46:
	add r0, r4, #0
	bl ov82_0223E820
	cmp r0, #1
	bne _0223DF68
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223DF54:
	add r0, r4, #0
	bl ov82_0223E888
	cmp r0, #1
	bne _0223DF68
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov82_0223F2F8
_0223DF68:
	add r4, #0xa8
	ldr r0, [r4]
	bl SpriteList_RenderAndAnimateSprites
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov82_0223DE20

	thumb_func_start ov82_0223DF74
ov82_0223DF74: ; 0x0223DF74
	push {r4, lr}
	add r4, r0, #0
	bl OverlayManager_GetData
	mov r1, #0x21
	lsl r1, r1, #4
	ldrb r2, [r0, #0xd]
	ldr r1, [r0, r1]
	strh r2, [r1]
	bl ov82_0223E8C4
	add r0, r4, #0
	bl OverlayManager_FreeData
	ldr r2, _0223DFB4 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x69
	bl Heap_Destroy
	ldr r0, _0223DFB8 ; =FS_OVERLAY_ID(OVY_80)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r4, pc}
	nop
_0223DFB4: .word 0x04000304
_0223DFB8: .word FS_OVERLAY_ID(OVY_80)
	thumb_func_end ov82_0223DF74

