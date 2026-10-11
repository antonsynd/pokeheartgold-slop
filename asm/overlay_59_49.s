	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223AD20
	.public ov59_0223B3DC
	.public ov59_0223B434
	.public ov59_0223B590
	.public ov59_0223B68C
	.public ov59_0223B740
	.public ov59_0223B8B0
	.public ov59_0223C298

	.text

	thumb_func_start ov59_0223AD20
ov59_0223AD20: ; 0x0223AD20
	push {r4, lr}
	add r4, r0, #0
	bl ov59_0223B434
	add r0, r4, #0
	bl ov59_0223B590
	add r0, r4, #0
	bl ov59_0223B68C
	add r0, r4, #0
	bl ov59_0223B740
	add r0, r4, #0
	bl ov59_0223B8B0
	ldr r0, [r4]
	bl ov59_0223C298
	str r0, [r4, #0x78]
	ldr r0, _0223AD54 ; =ov59_0223B3DC
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	pop {r4, pc}
	nop
_0223AD54: .word ov59_0223B3DC
	thumb_func_end ov59_0223AD20

