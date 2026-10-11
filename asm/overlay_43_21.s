	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A960

	.text

	thumb_func_start ov43_0222A960
ov43_0222A960: ; 0x0222A960
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	bl YesNoPrompt_Destroy
	ldr r0, [r4, #0x5c]
	bl TouchscreenListMenuSpawner_Destroy
	ldr r0, [r4, #0x7c]
	bl String_Delete
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	bl String_Delete
	ldr r0, [r4, #0x74]
	bl String_Delete
	ldr r0, [r4, #0x78]
	bl String_Delete
	add r4, #0x64
	add r0, r4, #0
	bl RemoveWindow
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov43_0222A960

