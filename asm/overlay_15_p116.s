#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FDD70
	.public ov15_021FDF20

	.text

	.text
	thumb_func_start ov15_021FDD70
ov15_021FDD70: ; 0x021FDD70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	mov r0, #0xf
	mov r1, #6
	bl NARC_New
	str r0, [sp, #0x10]
	ldr r0, _021FDF14 ; =0x00000808
	mov r1, #6
	add r0, r7, r0
	mov r2, #4
	bl HeapExp_FndInitAllocator
	ldr r0, _021FDF18 ; =0x0000081C
	add r4, r7, r0
	ldr r0, _021FDF1C ; =0x00000615
	ldrb r0, [r7, r0]
	cmp r0, #0
	bne _021FDDA8
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x41
	str r0, [sp, #4]
	mov r0, #0x49
	mov r1, #0x37
	str r0, [sp]
	b _021FDDB6
_021FDDA8:
	mov r0, #0x4c
	str r0, [sp, #8]
	mov r0, #0x54
	str r0, [sp, #4]
	mov r0, #0x5c
	mov r1, #0x4a
	str r0, [sp]
_021FDDB6:
	ldr r0, [sp, #0x10]
	mov r2, #6
	bl NARC_AllocAndReadWholeMember
	add r1, r4, #0
	add r2, r4, #0
	str r0, [r4, #0x58]
	add r0, r4, #0
	add r1, #0x54
	add r2, #0x58
	bl GF3dRender_InitObjFromHeader
	ldr r0, [r4, #0x58]
	bl NNS_G3dGetTex
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x54]
	mov r1, #1
	mov r2, #0x40
	bl NNSi_G3dModifyMatFlag
	ldr r0, [r4, #0x54]
	mov r1, #1
	mov r2, #0x80
	bl NNSi_G3dModifyMatFlag
	mov r1, #1
	ldr r0, [r4, #0x54]
	lsl r2, r1, #9
	bl NNSi_G3dModifyMatFlag
	mov r1, #1
	ldr r0, [r4, #0x54]
	lsl r2, r1, #0xa
	bl NNSi_G3dModifyMatFlag
	mov r2, #0x3f
	ldr r0, [r4, #0x54]
	mov r1, #1
	lsl r2, r2, #0x18
	bl NNSi_G3dModifyPolygonAttrMask
	mov r6, #0
	add r5, r4, #0
_021FDE0E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	add r1, r1, r6
	mov r2, #6
	bl NARC_AllocAndReadWholeMember
	mov r1, #0
	str r0, [r5, #0x5c]
	bl NNS_G3dGetAnmByIdx
	str r0, [sp, #0x14]
	ldr r0, _021FDF14 ; =0x00000808
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0x54]
	add r0, r7, r0
	bl NNS_G3dAllocAnmObj
	add r1, r5, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	ldr r2, [r4, #0x54]
	ldr r3, [sp, #0xc]
	bl NNS_G3dAnmObjInit
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	add r1, r1, r6
	mov r2, #6
	bl NARC_AllocAndReadWholeMember
	mov r1, #0
	str r0, [r5, #0x7c]
	bl NNS_G3dGetAnmByIdx
	str r0, [sp, #0x18]
	ldr r0, _021FDF14 ; =0x00000808
	ldr r1, [sp, #0x18]
	ldr r2, [r4, #0x54]
	add r0, r7, r0
	bl NNS_G3dAllocAnmObj
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	ldr r2, [r4, #0x54]
	ldr r3, [sp, #0xc]
	bl NNS_G3dAnmObjInit
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #8
	blo _021FDE0E
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	mov r2, #6
	bl NARC_AllocAndReadWholeMember
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	mov r1, #0
	bl NNS_G3dGetAnmByIdx
	add r5, r0, #0
	ldr r0, _021FDF14 ; =0x00000808
	ldr r2, [r4, #0x54]
	add r0, r7, r0
	add r1, r5, #0
	bl NNS_G3dAllocAnmObj
	add r1, r4, #0
	add r1, #0xe0
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	ldr r2, [r4, #0x54]
	ldr r3, [sp, #0xc]
	add r1, r5, #0
	bl NNS_G3dAnmObjInit
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r0, #0x64
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0xe4
	str r1, [r0]
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1]
	add r0, r4, #0
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0xa0
	ldr r1, [r1]
	bl NNS_G3dRenderObjAddAnmObj
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1]
	add r0, r4, #0
	lsl r1, r1, #2
	add r1, r4, r1
	add r1, #0xc0
	ldr r1, [r1]
	bl NNS_G3dRenderObjAddAnmObj
	add r0, r4, #0
	add r4, #0xe0
	ldr r1, [r4]
	bl NNS_G3dRenderObjAddAnmObj
	ldr r0, [sp, #0x10]
	bl NARC_Delete
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FDF14: .word 0x00000808
_021FDF18: .word 0x0000081C
_021FDF1C: .word 0x00000615
	thumb_func_end ov15_021FDD70

	thumb_func_start ov15_021FDF20
ov15_021FDF20: ; 0x021FDF20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021FDF80 ; =0x0000081C
	ldr r7, _021FDF84 ; =0x00000808
	add r0, r5, r0
	str r0, [sp]
	mov r6, #0
	add r4, r0, #0
_021FDF30:
	add r1, r4, #0
	add r1, #0xa0
	ldr r1, [r1]
	add r0, r5, r7
	bl NNS_G3dFreeAnmObj
	add r1, r4, #0
	add r1, #0xc0
	ldr r1, [r1]
	add r0, r5, r7
	bl NNS_G3dFreeAnmObj
	ldr r0, [r4, #0x5c]
	bl Heap_Free
	ldr r0, [r4, #0x7c]
	bl Heap_Free
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blo _021FDF30
	ldr r1, [sp]
	ldr r0, _021FDF84 ; =0x00000808
	add r1, #0xe0
	ldr r1, [r1]
	add r0, r5, r0
	bl NNS_G3dFreeAnmObj
	ldr r0, [sp]
	add r0, #0x9c
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, [sp]
	ldr r0, [r0, #0x58]
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FDF80: .word 0x0000081C
_021FDF84: .word 0x00000808
	thumb_func_end ov15_021FDF20

