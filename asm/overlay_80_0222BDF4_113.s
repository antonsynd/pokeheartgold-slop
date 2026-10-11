	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrtCmd_071
	.public ov80_0222E05C

	.text

	thumb_func_start FrtCmd_071
FrtCmd_071: ; 0x0222DFF4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	bl FrontierSystem_GetFrontierMap
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	add r1, sp, #0x10
	add r6, r0, #0
	add r0, r4, #0
	add r1, #2
	add r2, sp, #0x10
	bl ov80_022398E4
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x78
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r0, [r1, r0]
	str r0, [sp, #8]
	mov r0, #0
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r1, [r4]
	ldr r2, [r4, #0x34]
	ldr r3, [r4, #0x38]
	add r0, r6, #0
	bl ov80_0223A00C
	ldr r1, _0222E054 ; =0x0000047B
	mov r0, #5
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	ldr r1, _0222E058 ; =ov80_0222E05C
	add r0, r5, #0
	bl FrontierScriptContext_Pause
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0222E054: .word 0x0000047B
_0222E058: .word ov80_0222E05C
	thumb_func_end FrtCmd_071

	thumb_func_start ov80_0222E05C
ov80_0222E05C: ; 0x0222E05C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl sub_0209680C
	add r4, #0x78
	ldrh r0, [r4]
	cmp r0, #1
	bne _0222E074
	mov r0, #1
	pop {r4, pc}
_0222E074:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov80_0222E05C

