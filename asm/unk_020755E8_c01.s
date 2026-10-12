#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "unk_020755E8.inc"
	.include "global.inc"
	.public sub_02075630
	.extern _020FFEE8
	.extern _020FFEFC
	.extern _020FFF14
	.extern sub_020755E8

	.text
	thumb_func_start sub_02075630
sub_02075630: ; 0x02075630
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl SpriteSystem_Alloc
	add r1, r5, #0
	add r1, #0xac
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	bl SpriteManager_New
	add r1, r5, #0
	add r1, #0xb0
	add r2, sp, #0x3c
	ldr r4, _02075764 ; =_020FFF14
	str r0, [r1]
	ldmia r4!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	ldr r6, _02075768 ; =_020FFEE8
	stmia r2!, {r0, r1}
	add r4, sp, #0x28
	ldmia r6!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r6]
	add r1, r3, #0
	str r0, [r4]
	mov r0, #0x10
	str r0, [sp, #0x28]
	add r0, r5, #0
	add r0, #0xac
	ldr r0, [r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xac
	add r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0x10
	bl SpriteSystem_InitSprites
	ldr r4, _0207576C ; =_020FFEFC
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xac
	add r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1]
	bl SpriteSystem_InitManagerWithCapacities
	add r0, r5, #0
	add r0, #0xac
	ldr r6, [r0]
	add r0, r5, #0
	add r0, #0xb0
	ldr r4, [r0]
	ldr r1, [r5, #0x5c]
	mov r0, #0xef
	bl NARC_New
	add r7, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0xb
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0xc
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0xd
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0xe
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add r0, r7, #0
	bl NARC_Delete
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xac
	add r1, #0xb0
	ldr r0, [r0]
	ldr r1, [r1]
	mov r2, #0x80
	mov r3, #0x48
	bl sub_020755E8
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #1
	add r5, #0xb8
	str r0, [r5]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02075764: .word _020FFF14
_02075768: .word _020FFEE8
_0207576C: .word _020FFEFC
	thumb_func_end sub_02075630

