	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223C298
	.public ov59_0223C304
	.extern ov59_0223C3F0
	.extern ov59_0223C474
	.extern ov59_0223C584
	.extern ov59_0223C5C4

	.text

	.text
	thumb_func_start ov59_0223C298
ov59_0223C298: ; 0x0223C298
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x28
	add r5, r0, #0
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	mov r1, #0
	str r5, [r4]
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223C2FC ; =ov59_0223C3F0
	mov r2, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl GF_3DVramMan_Create
	str r0, [r4, #4]
	bl ov59_0223C474
	add r0, r4, #0
	add r1, r5, #0
	bl ov59_0223C5C4
	add r0, r4, #0
	bl ov59_0223C584
	add r0, r5, #0
	bl PokepicManager_Create
	str r0, [r4, #0xc]
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r1, _0223C300 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223C2FC: .word ov59_0223C3F0
_0223C300: .word 0x04000008
	thumb_func_end ov59_0223C298

	thumb_func_start ov59_0223C304
ov59_0223C304: ; 0x0223C304
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	bl sub_0201543C
	bl Thunk_G3X_Reset
	bl NNS_G2dSetupSoftwareSpriteCamera
	bl Camera_PushLookAtToNNSGlb
	ldr r2, _0223C348 ; =0x04000440
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
	ldr r0, [r4, #0xc]
	bl PokepicManager_DrawAll
	bl sub_02015460
	ldr r0, _0223C34C ; =0x04000540
	mov r1, #1
	str r1, [r0]
	pop {r4, pc}
	.balign 4, 0
_0223C348: .word 0x04000440
_0223C34C: .word 0x04000540
	thumb_func_end ov59_0223C304

