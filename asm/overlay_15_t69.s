#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FD7D0
	.public ov15_021FD810
	.public ov15_021FD850
	.public ov15_021FD93C
	.extern ov15_021FDAD0
	.extern ov15_021FDAF4
	.extern ov15_021FDD70
	.extern ov15_02200500
	.extern ov15_0220050C
	.extern ov15_0220053C
	.extern ov15_02201304

	.text

	.text
	thumb_func_start ov15_021FD7D0
ov15_021FD7D0: ; 0x021FD7D0
	push {r4, r5}
	mov r4, #0x25
	lsl r4, r4, #6
	add r0, r0, r4
	mov r4, #0
	strb r4, [r0, #2]
	strb r1, [r0]
	ldrb r5, [r0, #1]
	mov r4, #0xf
	mov r1, #0xf
	and r1, r2
	bic r5, r4
	orr r1, r5
	strb r1, [r0, #1]
	lsl r2, r3, #0x1c
	ldrb r5, [r0, #1]
	mov r1, #0xf0
	lsr r2, r2, #0x18
	bic r5, r1
	orr r2, r5
	strb r2, [r0, #1]
	ldr r2, [sp, #8]
	str r2, [r0, #4]
	ldrb r2, [r0, #3]
	bic r2, r4
	strb r2, [r0, #3]
	ldrb r2, [r0, #3]
	bic r2, r1
	strb r2, [r0, #3]
	mov r0, #0x23
	pop {r4, r5}
	bx lr
	thumb_func_end ov15_021FD7D0

	thumb_func_start ov15_021FD810
ov15_021FD810: ; 0x021FD810
	push {r4, r5, r6, lr}
	add r6, r2, #0
	mov r2, #0x25
	add r4, r0, #0
	lsl r2, r2, #6
	add r0, r4, r2
	mov r5, #1
	strb r5, [r0, #2]
	strb r1, [r0]
	str r3, [r0, #4]
	ldrb r5, [r0, #3]
	mov r3, #0xf
	bic r5, r3
	strb r5, [r0, #3]
	ldrb r5, [r0, #3]
	mov r3, #0xf0
	bic r5, r3
	strb r5, [r0, #3]
	lsr r0, r2, #2
	add r5, r4, r0
	lsl r4, r1, #2
	ldr r0, [r5, r4]
	mov r1, #0
	bl ManagedSprite_SetAnimationFrame
	ldr r0, [r5, r4]
	add r1, r6, #0
	bl ManagedSprite_SetAnim
	mov r0, #0x23
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov15_021FD810

	thumb_func_start ov15_021FD850
ov15_021FD850: ; 0x021FD850
	push {r3, r4, r5, lr}
	mov r5, #0x25
	lsl r5, r5, #6
	add r4, r0, r5
	ldrb r1, [r4, #2]
	cmp r1, #1
	bne _021FD874
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r1, r0, r1
	lsr r0, r5, #2
	ldr r0, [r1, r0]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021FD936
	ldr r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021FD874:
	ldrb r2, [r4, #3]
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1c
	beq _021FD886
	cmp r1, #1
	beq _021FD8B6
	cmp r1, #2
	beq _021FD910
	b _021FD936
_021FD886:
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r1, r0, r1
	lsr r0, r5, #2
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	ldrb r2, [r4, #3]
	mov r1, #0xf
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r4, #3]
	b _021FD936
_021FD8B6:
	add r1, r2, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x1c
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xf0
	lsl r2, r2, #0x1c
	bic r1, r3
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r4, #3]
	ldrb r1, [r4, #3]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #4
	bne _021FD936
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r1, r0, r1
	lsr r0, r5, #2
	ldr r0, [r1, r0]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	ldrb r1, [r4, #3]
	mov r0, #0xf0
	bic r1, r0
	strb r1, [r4, #3]
	ldrb r2, [r4, #3]
	mov r1, #0xf
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0xf
	and r1, r2
	orr r0, r1
	strb r0, [r4, #3]
	b _021FD936
_021FD910:
	mov r1, #0xf0
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x1c
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #3]
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #2
	bne _021FD936
	ldr r0, [r4, #4]
	pop {r3, r4, r5, pc}
_021FD936:
	mov r0, #0x23
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov15_021FD850

	thumb_func_start ov15_021FD93C
ov15_021FD93C: ; 0x021FD93C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	bl GF3dRender_InitSimpleManager
	ldr r2, _021FDA94 ; =0x04000060
	ldr r0, _021FDA98 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _021FDA9C ; =0x00007FFF
	add r1, r0, #0
	add r3, r0, #0
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r0, _021FDAA0 ; =0x00003DEF
	ldr r1, _021FDAA4 ; =0x0000294A
	mov r2, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _021FDAA0 ; =0x00003DEF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	mov r0, #0x1f
	mov r1, #0
	str r0, [sp]
	mov r0, #0xf
	mov r2, #3
	add r3, r1, #0
	str r1, [sp, #4]
	bl NNS_G3dGlbPolygonAttr
	ldr r2, _021FDA94 ; =0x04000060
	ldr r0, _021FDA98 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021FDAA8 ; =ov15_02201304
	bl G3X_SetEdgeColorTable
	mov r0, #0
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #6
	bl Camera_New
	ldr r2, _021FDAAC ; =0x00000818
	ldr r4, _021FDAB0 ; =ov15_02200500
	str r0, [r5, r2]
	add r0, r2, #0
	add r0, #0xec
	add r3, r5, r0
	ldmia r4!, {r0, r1}
	add r6, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, _021FDAB4 ; =ov15_0220053C
	str r0, [r3]
	add r0, r2, #0
	add r0, #0xf8
	add r3, r5, r0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r3, _021FDAB8 ; =0x0000091C
	ldrb r0, [r5, r3]
	add r1, r3, #0
	sub r1, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	add r2, r3, #0
	str r0, [sp, #8]
	add r3, r3, #2
	sub r2, #8
	ldrh r3, [r5, r3]
	ldr r1, [r5, r1]
	add r0, r6, #0
	add r2, r5, r2
	bl Camera_Init_FromTargetDistanceAndAngle
	ldr r0, _021FDABC ; =0x00000934
	ldr r3, _021FDAC0 ; =ov15_0220050C
	add r2, r5, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, _021FDAC4 ; =0x00000808
	add r0, r5, r0
	bl ov15_021FDAD0
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r0, _021FDAC4 ; =0x00000808
	add r1, #0x64
	ldrb r1, [r1]
	add r0, r5, r0
	mov r2, #7
	add r1, r1, #1
	bl ov15_021FDAF4
	ldr r2, _021FDAAC ; =0x00000818
	mov r0, #0x7b
	ldr r1, _021FDAC8 ; =0x006A4000
	ldr r2, [r5, r2]
	lsl r0, r0, #0xc
	bl Camera_SetPerspectiveClippingPlane
	ldr r0, _021FDAAC ; =0x00000818
	ldr r0, [r5, r0]
	bl Camera_SetStaticPtr
	mov r6, #1
	ldr r7, _021FDA9C ; =0x00007FFF
	mov r4, #0
	lsl r6, r6, #0xc
_021FDA58:
	mov r2, #0
	add r0, r4, #0
	add r1, r6, #0
	add r3, r2, #0
	bl NNS_G3dGlbLightVector
	add r0, r4, #0
	add r1, r7, #0
	bl NNS_G3dGlbLightColor
	add r4, r4, #1
	cmp r4, #4
	blo _021FDA58
	add r0, r5, #0
	bl ov15_021FDD70
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r1, _021FDACC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021FDA94: .word 0x04000060
_021FDA98: .word 0xFFFFCFFF
_021FDA9C: .word 0x00007FFF
_021FDAA0: .word 0x00003DEF
_021FDAA4: .word 0x0000294A
_021FDAA8: .word ov15_02201304
_021FDAAC: .word 0x00000818
_021FDAB0: .word ov15_02200500
_021FDAB4: .word ov15_0220053C
_021FDAB8: .word 0x0000091C
_021FDABC: .word 0x00000934
_021FDAC0: .word ov15_0220050C
_021FDAC4: .word 0x00000808
_021FDAC8: .word 0x006A4000
_021FDACC: .word 0x04000008
	thumb_func_end ov15_021FD93C

