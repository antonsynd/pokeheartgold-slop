	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E77F8
	.public ov102_021E7888
	.public ov102_021E7934
	.public ov102_021E7A4C
	.public ov102_021E7AA4
	.public ov102_021E8D50
	.public ov102_021E8D60
	.public ov102_021E909C
	.public ov102_021EC648

	.text

	thumb_func_start ov102_021E7888
ov102_021E7888: ; 0x021E7888
	push {r3, r4, r5, lr}
	mov r1, #0x7c
	mov r2, #0x22
	add r5, r0, #0
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x7c
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl OverlayManager_GetArgs
	str r0, [r4]
	bl sub_02090D70
	str r0, [r4, #4]
	ldr r0, [r4]
	bl sub_02090E44
	str r0, [r4, #0x74]
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4]
	add r1, #0x10
	add r2, #8
	bl sub_02090D8C
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021E78D4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x64
	add r1, #8
	bl ov102_021E7934
_021E78D4:
	ldr r1, [r4]
	mov r0, #0x22
	bl sub_02091880
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	bl ov102_021E909C
	str r0, [r4, #0x14]
	mov r0, #0x22
	str r0, [sp]
	ldr r0, _021E7924 ; =ov102_021EC648
	ldr r2, _021E7928 ; =ov102_021E77F8
	mov r1, #5
	add r3, r4, #0
	bl TouchHitboxController_Create
	str r0, [r4, #0x40]
	mov r1, #0
	str r1, [r4, #0x44]
	add r0, r4, #0
	str r1, [r4, #0x48]
	add r0, #0x6b
	strb r1, [r0]
	str r1, [r4, #0x2c]
	add r0, r4, #0
	str r1, [r4, #0x28]
	add r0, #0x4e
	strh r1, [r0]
	ldr r1, _021E792C ; =ov102_021E7AA4
	add r0, r4, #0
	bl ov102_021E7A4C
	ldr r1, _021E7930 ; =ov102_021E8D60
	add r0, r4, #0
	bl ov102_021E8D50
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7924: .word ov102_021EC648
_021E7928: .word ov102_021E77F8
_021E792C: .word ov102_021E7AA4
_021E7930: .word ov102_021E8D60
	thumb_func_end ov102_021E7888

