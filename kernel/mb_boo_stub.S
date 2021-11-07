section .multiboot_header
mbh_start:
    dd 0xE85250D6           ; magic number
    dd 0                    ; platdorm (0 for i386, 2 for mips)
    dd mbh_end - mbh_start  ; header length
    ; checksum = -(magic + architecture + header length)
    dd 0x10000000 - (0xE85250D6 + 0 + (mbh_end - mbh_start))

    ; multiboot header tags
    ; this gets information about the underlying system.
    ; we're gonna ignore this for now

    ; End tag to the header
    dw 0    ; End type
    dw 0    ; End Flags
    dd 9    ; Size

mbh_end: