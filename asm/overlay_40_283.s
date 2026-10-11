	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02244B70

	.text

	thumb_func_start ov40_02244B70
ov40_02244B70: ; 0x02244B70
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r1, #0
	ldrh r1, [r4]
	add r6, r2, #0
	cmp r1, #0
	beq _02244B84
	cmp r1, #1
	beq _02244BA6
	b _02244BB4
_02244B84:
	ldr r0, _02244BB8 ; =_021D2AF8
	ldr r0, [r0]
	cmp r0, #0
	bne _02244B90
	bl GF_AssertFail
_02244B90:
	ldr r0, _02244BB8 ; =_021D2AF8
	ldr r1, [r0]
	add r0, r1, #0
	add r0, #0xdc
	str r5, [r0]
	add r1, #0xe0
	str r6, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _02244BB4
_02244BA6:
	ldr r1, _02244BB8 ; =_021D2AF8
	ldr r3, [sp, #0x10]
	ldr r1, [r1]
	mov r2, #0
	bl sub_0202FDA4
	pop {r4, r5, r6, pc}
_02244BB4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02244BB8: .word _021D2AF8
	thumb_func_end ov40_02244B70

