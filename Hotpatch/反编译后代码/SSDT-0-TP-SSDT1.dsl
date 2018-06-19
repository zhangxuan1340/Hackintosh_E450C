/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0-TP-SSDT1.aml, Wed Jun 13 10:42:09 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000033 (51)
 *     Revision         0x01
 *     Checksum         0x57
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-SSDT1"
 *     OEM Revision     0x00000100 (256)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "TP-SSDT1", 0x00000100)
{
    Scope (\)
    {
        Method (KOU1, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }
}

