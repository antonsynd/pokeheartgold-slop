#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E5AA8
	.public ov106_021E5BBC
	.public ov106_021E5C30
	.public ov106_021E5CD0
	.public ov106_021E5D08
	.extern _021E6D70
	.extern ov106_021E6D8C

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

	thumb_func_start ov106_021E5BBC
ov106_021E5BBC: ; 0x021E5BBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r1, #0xff
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	bls _021E5C2C
	ldr r0, [sp]
	ldr r7, [sp]
	str r0, [sp, #8]
	add r0, #0x1c
	add r7, #8
	str r0, [sp, #8]
_021E5BDE:
	ldr r1, [sp, #4]
	mov r0, #0x7c
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #8]
	mov r4, #0
	add r6, r0, r2
_021E5BEC:
	lsl r0, r4, #2
	add r5, r6, r0
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _021E5C04
	ldr r1, [r5, #0x6c]
	add r0, r7, #0
	bl NNS_G3dFreeAnmObj
	ldr r0, [r5, #0x5c]
	bl Heap_Free
_021E5C04:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _021E5BEC
	ldr r0, [r6, #0x58]
	bl Heap_Free
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	blo _021E5BDE
_021E5C2C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov106_021E5BBC

	thumb_func_start ov106_021E5C30
ov106_021E5C30: ; 0x021E5C30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r4, _021E5CC8 ; =ov106_021E6D8C
	str r0, [sp]
	add r3, sp, #0x1c
	mov r2, #4
_021E5C3C:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5C3C
	ldr r0, [r4]
	add r2, sp, #0x10
	str r0, [r3]
	ldr r3, _021E5CCC ; =_021E6D70
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #4
	str r0, [r2]
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl Thunk_G3X_Reset
	bl Camera_PushLookAtToNNSGlb
	mov r1, #0xff
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r7, #0
	cmp r0, #0
	bls _021E5CBA
	ldr r4, [sp]
	mov r5, #1
	add r4, #0x1c
	lsl r5, r5, #0xc
_021E5C7C:
	mov r2, #0
	add r3, r4, #0
_021E5C80:
	ldr r1, [r3, #0x6c]
	cmp r1, #0
	beq _021E5C96
	ldr r6, [r1, #8]
	ldr r0, [r1]
	ldrh r6, [r6, #4]
	add r0, r0, r5
	lsl r6, r6, #0xc
	cmp r0, r6
	bge _021E5C96
	str r0, [r1]
_021E5C96:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #4
	blo _021E5C80
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0x1c
	add r3, sp, #0x10
	bl GF3dRender_DrawModel
	mov r0, #0xff
	ldr r1, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r7, r7, #1
	add r4, #0x7c
	cmp r7, r0
	blo _021E5C7C
_021E5CBA:
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5CC8: .word ov106_021E6D8C
_021E5CCC: .word _021E6D70
	thumb_func_end ov106_021E5C30

	thumb_func_start ov106_021E5CD0
ov106_021E5CD0: ; 0x021E5CD0
	push {r4, r5}
	mov r3, #0x7c
	mul r3, r1
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	add r0, r0, r3
	lsl r1, r1, #0xc
_021E5CE0:
	ldr r5, [r0, #0x6c]
	cmp r5, #0
	beq _021E5CFA
	ldr r3, [r5]
	add r4, r3, r1
	ldr r3, [r5, #8]
	ldrh r3, [r3, #4]
	lsl r3, r3, #0xc
	cmp r4, r3
	bge _021E5CFA
	mov r0, #1
	pop {r4, r5}
	bx lr
_021E5CFA:
	add r2, r2, #1
	add r0, r0, #4
	cmp r2, #4
	blo _021E5CE0
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov106_021E5CD0

	thumb_func_start ov106_021E5D08
ov106_021E5D08: ; 0x021E5D08
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _021E5D34
	mov r6, #0xff
	lsl r6, r6, #2
_021E5D1C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov106_021E5CD0
	cmp r0, #1
	bne _021E5D2C
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E5D2C:
	ldr r0, [r5, r6]
	add r4, r4, #1
	cmp r4, r0
	blo _021E5D1C
_021E5D34:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov106_021E5D08

