OUTPUT_FORMAT(binary)

ENTRY(init)

SECTIONS {
    . = 0xc0000000;

    .text.init : {
        src/start.o(.text)
    }

    .text : {
        *(.text)
    }

    .data : {
        *(.data)
    }

    textend = ALIGN(0x1000);

    .bss ALIGN(0x1000) : {
        *(.bss)
    }

    bssend = ALIGN(0x1000);

    .unmapped ALIGN(0x1000) : {
       *(.unmapped)
    }

    end = ALIGN(0x1000);
}
