/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-XOSI#win8.aml, Sun Jun 17 23:19:39 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A2 (162)
 *     Revision         0x02
 *     Checksum         0xA2
 *     OEM ID           "hack"
 *     OEM Table ID     "XOSI"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "XOSI", 0x00000000)
{
    Method (XOSI, 1, NotSerialized)
    {
        Store (Package (0x07)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP1", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2009", 
                "Windows 2012"
            }, Local0)
        Return (LNotEqual (Ones, Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }
}

