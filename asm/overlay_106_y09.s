#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5AA8

	.text

	.text
	thumb_func_start ov106_021E5AA8
ov106_021E5AA8: ; 0x021E5AA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r0, #8
	mov r1, #0x99
	mov r2, #4
	str r3, [sp, #0x10]
	bl HeapExp_FndInitAllocator
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bls _021E5BAE
_021E5AC8:
	ldr r2, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r1, #0x7c
	add r2, #0x1c
	mul r1, r0
	add r4, r2, r1
	mov r1, #0xc
	mul r1, r0
	ldr r0, [sp, #0xc]
	mov r2, #1
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r3, [sp, #0xc]
	str r2, [sp]
	ldr r1, [r3, r1]
	ldr r0, [sp, #8]
	mov r3, #0x99
	bl GfGfxLoader_LoadFromNarc
	add r1, r4, #0
	add r2, r4, #0
	str r0, [r4, #0x58]
	add r0, r4, #0
	add r1, #0x54
	add r2, #0x58
	bl GF3dRender_InitObjFromHeader
	ldr r0, [r4, #0x58]
	bl NNS_G3dGetTex
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021E5B3A
	ldr r0, [r4, #0x54]
	mov r1, #0
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r4, #0x54]
	mov r1, #0
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r2, #2
	ldr r0, [r4, #0x54]
	mov r1, #0
	lsl r2, r2, #8
	bl NNSi_G3dModifyMatFlag
	mov r2, #1
	ldr r0, [r4, #0x54]
	mov r1, #0
	lsl r2, r2, #0xa
	bl NNSi_G3dModifyMatFlag
_021E5B3A:
	ldr r0, [sp, #4]
	mov r5, #0
	str r0, [sp, #0x20]
	add r0, #8
	str r0, [sp, #0x20]
_021E5B44:
	ldr r0, [sp, #0x14]
	add r0, r0, r5
	ldrb r1, [r0, #4]
	cmp r1, #0xff
	bne _021E5B5A
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0
	str r0, [r1, #0x5c]
	str r0, [r1, #0x6c]
	b _021E5B94
_021E5B5A:
	lsl r0, r5, #2
	add r6, r4, r0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #1
	mov r3, #0x99
	bl GfGfxLoader_LoadFromNarc
	str r0, [r6, #0x5c]
	mov r1, #0
	bl NNS_G3dGetAnmByIdx
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	ldr r2, [r4, #0x54]
	add r1, r7, #0
	bl NNS_G3dAllocAnmObj
	str r0, [r6, #0x6c]
	ldr r2, [r4, #0x54]
	ldr r3, [sp, #0x1c]
	add r1, r7, #0
	bl NNS_G3dAnmObjInit
	ldr r1, [r6, #0x6c]
	add r0, r4, #0
	bl NNS_G3dRenderObjAddAnmObj
_021E5B94:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _021E5B44
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x18]
	cmp r1, r0
	blo _021E5AC8
_021E5BAE:
	mov r2, #0xff
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	lsl r2, r2, #2
	str r1, [r0, r2]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov106_021E5AA8

