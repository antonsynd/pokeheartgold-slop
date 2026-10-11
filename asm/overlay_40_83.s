	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D5AC
	.public ov40_0222D66C
	.public ov40_0222D800
	.public ov40_02230970

	.text

	thumb_func_start ov40_02230970
ov40_02230970: ; 0x02230970
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	add r7, r3, #0
	bl ov40_0222D800
	add r1, r5, #0
	str r0, [r4, #4]
	add r0, r4, #0
	add r1, #0x14
	add r2, r6, #0
	bl ov40_0222D5AC
	add r5, #0x14
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov40_0222D66C
	add r3, sp, #8
	mov r1, #0x10
	mov r2, #0x14
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl ManagedSprite_SetPositionXY
	add r3, sp, #8
	mov r1, #0x18
	mov r2, #0x1c
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_020136B4
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x2c]
	bl TextOBJ_SetSpritesDrawFlag
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x28]
	bl ManagedSprite_SetAnim
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov40_02230970

