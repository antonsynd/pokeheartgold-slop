	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242B90
	.public ov81_02242BC8
	.public ov81_02242C48
	.public ov81_02243598

	.text

	thumb_func_start ov81_02242B90
ov81_02242B90: ; 0x02242B90
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02242BC0 ; =ov81_02243598
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r1, _02242BC4 ; =0x00100010
	add r0, r2, #0
	add r2, r1, #0
	bl ObjCharTransfer_InitEx
	mov r0, #8
	mov r1, #0x64
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_02242BC0: .word ov81_02243598
_02242BC4: .word 0x00100010
	thumb_func_end ov81_02242B90

	thumb_func_start ov81_02242BC8
ov81_02242BC8: ; 0x02242BC8
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02242C30 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02242C34 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02242C38 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _02242C3C ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02242C40 ; =0xBFFF0000
	ldr r0, _02242C44 ; =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.balign 4, 0
_02242C30: .word 0x04000008
_02242C34: .word 0xFFFFCFFD
_02242C38: .word 0x0000CFFB
_02242C3C: .word 0x00007FFF
_02242C40: .word 0xBFFF0000
_02242C44: .word 0x04000580
	thumb_func_end ov81_02242BC8

	thumb_func_start ov81_02242C48
ov81_02242C48: ; 0x02242C48
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	ldr r2, _02242C78 ; =0x04000440
	mov r3, #0
	add r1, r2, #0
	str r3, [r2]
	add r1, #0x14
	str r3, [r1]
	mov r0, #2
	str r0, [r2]
	str r3, [r1]
	bl NNS_G3dGlbFlushP
	bl NNS_G2dSetupSoftwareSpriteCamera
	add r0, r4, #0
	bl PokepicManager_DrawAll
	ldr r0, _02242C7C ; =0x04000540
	mov r1, #1
	str r1, [r0]
	pop {r4, pc}
	.balign 4, 0
_02242C78: .word 0x04000440
_02242C7C: .word 0x04000540
	thumb_func_end ov81_02242C48

