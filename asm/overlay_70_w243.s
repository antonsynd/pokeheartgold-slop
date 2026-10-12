#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0223F3D8
	.public ov70_0223F470
	.public ov70_0223F508
	.public ov70_0223F634
	.public ov70_0223F658
	.public ov70_0223F684
	.public ov70_0223F6E4
	.extern ov70_0223E490
	.extern ov70_0223F1D8
	.extern ov70_0223F2BC
	.extern ov70_0223F370
	.extern ov70_02245084
	.extern ov70_02245910
	.extern ov70_02245AAC
	.extern ov70_022465EC

	.text

	.text
	thumb_func_start ov70_0223F3D8
ov70_0223F3D8: ; 0x0223F3D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	mov r1, #0x65
	str r0, [sp, #0xc]
	add r6, r3, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, _0223F468 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	add r5, r6, #0
	mov r4, #1
	add r5, #0x10
	mov r7, #0
_0223F404:
	add r0, r5, #0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0223F404
	mov r3, #0
	ldr r0, _0223F46C ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r0, #0x10
	bl ov70_0223F1D8
	ldr r2, [sp, #0x34]
	sub r0, r2, #1
	cmp r0, #1
	bhi _0223F446
	mov r3, #0
	str r3, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _0223F46C ; =0x00010200
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x10
	bl ov70_0223F2BC
_0223F446:
	mov r1, #0
	ldr r0, _0223F46C ; =0x00010200
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r6, #0x20
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	mov r3, #2
	bl ov70_0223F370
	ldr r0, [sp, #0x14]
	bl String_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F468: .word 0x000F0200
_0223F46C: .word 0x00010200
	thumb_func_end ov70_0223F3D8

	thumb_func_start ov70_0223F470
ov70_0223F470: ; 0x0223F470
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	mov r1, #0x65
	str r0, [sp, #0xc]
	add r6, r3, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x14]
	mov r2, #0
	ldr r0, _0223F500 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	add r3, r2, #0
	bl ov70_02245084
	add r5, r6, #0
	mov r4, #1
	add r5, #0x10
	mov r7, #0
_0223F49C:
	add r0, r5, #0
	add r1, r7, #0
	bl FillWindowPixelBuffer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0223F49C
	mov r3, #0
	ldr r0, _0223F504 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	add r0, #0x10
	bl ov70_0223F1D8
	ldr r2, [sp, #0x34]
	sub r0, r2, #1
	cmp r0, #1
	bhi _0223F4DE
	mov r3, #0
	str r3, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _0223F504 ; =0x00010200
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x10
	bl ov70_0223F2BC
_0223F4DE:
	mov r3, #0
	ldr r0, _0223F504 ; =0x00010200
	str r3, [sp]
	str r0, [sp, #4]
	add r6, #0x20
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	str r3, [sp, #8]
	bl ov70_0223F370
	ldr r0, [sp, #0x14]
	bl String_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F500: .word 0x000F0200
_0223F504: .word 0x00010200
	thumb_func_end ov70_0223F470

	thumb_func_start ov70_0223F508
ov70_0223F508: ; 0x0223F508
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x3d
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r7, [sp, #0x38]
	bl String_New
	str r0, [sp, #0x18]
	mov r0, #0xb
	mov r1, #0x3d
	bl String_New
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	mov r1, #0x77
	bl GetBoxMonData
	ldr r0, [sp, #0xc]
	mov r1, #0x6f
	mov r2, #0
	bl GetBoxMonData
	add r6, r0, #1
	ldr r0, [sp, #0xc]
	bl CalcBoxMonLevel
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x68
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r1, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r3, r1, #0
	bl BufferIntegerAsString
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x6c
	mov r3, #0x3d
	bl ReadMsgData_ExpandPlaceholders
	str r0, [sp, #0x1c]
	cmp r6, #3
	beq _0223F586
	ldr r1, _0223F624 ; =ov70_02245910
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	bl ReadMsgDataIntoString
_0223F586:
	ldr r5, [sp, #8]
	mov r4, #0
_0223F58A:
	add r0, r5, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0223F58A
	mov r2, #0
	ldr r0, _0223F628 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x20]
	add r3, r2, #0
	bl ov70_02245084
	mov r2, #0
	ldr r0, _0223F62C ; =0x00010200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	add r0, #0x10
	add r3, r2, #0
	bl ov70_02245084
	mov r0, #2
	str r0, [sp]
	ldr r0, _0223F62C ; =0x00010200
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x1c]
	add r0, #0x20
	add r3, r2, #0
	bl ov70_02245084
	cmp r6, #3
	beq _0223F5F6
	sub r0, r6, #1
	mov r3, #0
	lsl r1, r0, #2
	ldr r0, _0223F630 ; =ov70_022465EC
	str r3, [sp]
	ldr r0, [r0, r1]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	mov r2, #0x46
	add r0, #0x10
	str r0, [sp, #8]
	bl ov70_02245084
_0223F5F6:
	ldr r0, [sp, #0xc]
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	strh r0, [r7]
	ldr r0, [sp, #0x10]
	strb r6, [r7, #2]
	strb r0, [r7, #3]
	ldr r0, [sp, #0x1c]
	bl String_Delete
	ldr r0, [sp, #0x14]
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl String_Delete
	ldr r0, [sp, #0x20]
	bl String_Delete
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F624: .word ov70_02245910
_0223F628: .word 0x000F0200
_0223F62C: .word 0x00010200
_0223F630: .word ov70_022465EC
	thumb_func_end ov70_0223F508

	thumb_func_start ov70_0223F634
ov70_0223F634: ; 0x0223F634
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0
	add r3, r0, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4a
	mov r1, #0xd
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov70_0223F634

	thumb_func_start ov70_0223F658
ov70_0223F658: ; 0x0223F658
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r2, #0
	lsl r2, r1, #2
	ldr r1, _0223F680 ; =ov70_02245AAC
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, sp, #8
	ldr r1, [r1, r2]
	str r0, [sp, #4]
	mov r0, #0x4a
	mov r2, #0
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	ldr r1, [sp, #8]
	lsr r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0223F680: .word ov70_02245AAC
	thumb_func_end ov70_0223F658

	thumb_func_start ov70_0223F684
ov70_0223F684: ; 0x0223F684
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0223F6DC ; =0x000001EE
	add r5, r0, #0
	mov r0, #0x3d
	bl Heap_Alloc
	add r4, r0, #0
	ldr r2, _0223F6DC ; =0x000001EE
	mov r0, #0
	add r1, r4, #0
	bl MIi_CpuClearFast
	mov r2, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, #0x4a
	mov r1, #0xc
	add r3, r5, #0
	bl GfGfxLoader_LoadFromNarc_GetSizeOut
	add r7, r0, #0
	ldr r0, [sp, #8]
	ldr r5, _0223F6E0 ; =0x00000000
	lsr r3, r0, #1
	beq _0223F6D0
	ldr r0, _0223F6DC ; =0x000001EE
	add r6, r7, #0
	mov r1, #1
_0223F6C0:
	ldrh r2, [r6]
	cmp r2, r0
	bhs _0223F6C8
	strb r1, [r4, r2]
_0223F6C8:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, r3
	blo _0223F6C0
_0223F6D0:
	add r0, r7, #0
	bl Heap_Free
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223F6DC: .word 0x000001EE
_0223F6E0: .word 0x00000000
	thumb_func_end ov70_0223F684

	thumb_func_start ov70_0223F6E4
ov70_0223F6E4: ; 0x0223F6E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x12
	add r4, r1, #0
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	bl ov70_0223E490
	cmp r0, #0
	beq _0223F718
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Mon_UpdateShayminForm
	bl SizeOfStructPokemon
	add r2, r0, #0
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl MIi_CpuCopyFast
	b _0223F730
_0223F718:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl BoxMon_UpdateShayminForm
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl CopyBoxPokemonToPokemon
_0223F730:
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r5, r0
	mov r2, #8
	bl CopyU16StringArrayN
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetTrainerID_VisibleHalf
	mov r1, #0x47
	lsl r1, r1, #2
	strh r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl WifiHistory_GetPlayerCountry
	ldr r1, _0223F798 ; =0x0000011E
	strb r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	bl WiFiHistory_GetPlayerRegion
	ldr r1, _0223F79C ; =0x0000011F
	strb r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetAvatar
	mov r1, #0x12
	lsl r1, r1, #4
	strb r0, [r5, r1]
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetTrainerGender
	add r1, r5, #0
	add r1, #0xf6
	strb r0, [r1]
	ldr r0, _0223F7A0 ; =0x00000122
	mov r1, #GAME_VERSION
	strb r1, [r5, r0]
	mov r1, #2
	add r0, r0, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0223F798: .word 0x0000011E
_0223F79C: .word 0x0000011F
_0223F7A0: .word 0x00000122
	thumb_func_end ov70_0223F6E4

