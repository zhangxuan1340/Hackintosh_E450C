/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-ESEL.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000004D (77)
 *     Revision         0x02
 *     Checksum         0x5A
 *     OEM ID           "hack"
 *     OEM Table ID     "ESEL"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "ESEL", 0x00000000)
{
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.XHC.ESEL, 0, NotSerialized)
    {
    }
}

