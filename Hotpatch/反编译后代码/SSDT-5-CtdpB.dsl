/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-5-CtdpB.aml, Wed Jun 13 10:42:09 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000369 (873)
 *     Revision         0x02
 *     Checksum         0x69
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CtdpB"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CtdpB", 0x00001000)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0._PSS, PkgObj)
    External (_SB_.PCI0, DeviceObj)    // Warning: Unknown object
    External (CTPC, IntObj)    // Warning: Unknown object
    External (CTPR, UnknownObj)    // Warning: Unknown object
    External (FTPS, UnknownObj)    // Warning: Unknown object
    External (PNHM, UnknownObj)    // Warning: Unknown object
    External (PNTF, MethodObj)    // Warning: Unknown method, guessing 1 arguments

    Scope (\_SB.PCI0)
    {
        OperationRegion (MBAR, SystemMemory, 0xFED15000, 0x1000)
        Field (MBAR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x9A0), 
            PPL1,   15, 
            PL1E,   1, 
                ,   1, 
            PL1T,   7, 
            Offset (0x9A4), 
            PPL2,   15, 
            PL2E,   1, 
                ,   1, 
            PL2T,   7, 
            Offset (0xF3C), 
            TARN,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TAR1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TAR2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            TAR,    8
        }

        Method (CTCU, 0, NotSerialized)
        {
            Store (PTD2, PPL1)
            Store (One, PL1E)
            Store (One, \CTPC)
            If (LEqual (Zero, \FTPS))
            {
                Store (\CTPC, \CTPR)
            }
            ElseIf (LEqual (\CTPR, \FTPS))
            {
                Store (\CTPC, \CTPR)
                Store (\CTPC, \FTPS)
            }
            Else
            {
                Store (\CTPC, \CTPR)
                Store (\CTPC, \FTPS)
                Increment (\FTPS)
            }

            \PNTF (0x80)
            Subtract (TAR2, One, TAR)
            Store (0x02, CTCL)
        }

        Method (CTCN, 0, NotSerialized)
        {
            If (LEqual (CTCL, One))
            {
                Store (PTDP, PPL1)
                Store (One, PL1E)
                NPPC (TARN)
                Subtract (TARN, One, TAR)
                Store (Zero, CTCL)
            }
            ElseIf (LEqual (CTCL, 0x02))
            {
                Store (Zero, CTCL)
                Subtract (TARN, One, TAR)
                NPPC (TARN)
                Store (PTDP, PPL1)
                Store (One, PL1E)
            }
        }

        Method (CTCD, 0, NotSerialized)
        {
            Store (One, CTCL)
            Subtract (TAR1, One, TAR)
            NPPC (TAR1)
            Store (PTD1, PPL1)
            Store (One, PL1E)
        }

        Method (NPPC, 1, NotSerialized)
        {
            Name (TRAT, Zero)
            Name (PRAT, Zero)
            Name (TMPI, Zero)
            Store (Arg0, TRAT)
            Store (SizeOf (\_PR.CPU0._PSS), TMPI)
            While (LNotEqual (TMPI, Zero))
            {
                Decrement (TMPI)
                Store (DerefOf (Index (DerefOf (Index (\_PR.CPU0._PSS, TMPI)), 0x04)), PRAT)
                ShiftRight (PRAT, 0x08, PRAT)
                If (LGreaterEqual (PRAT, TRAT))
                {
                    Store (TMPI, \CTPC)
                    If (LEqual (Zero, \FTPS))
                    {
                        Store (\CTPC, \CTPR)
                    }
                    ElseIf (LEqual (\CTPR, \FTPS))
                    {
                        Store (\CTPC, \CTPR)
                        Store (\CTPC, \FTPS)
                    }
                    Else
                    {
                        Store (\CTPC, \CTPR)
                        Store (\CTPC, \FTPS)
                        Increment (\FTPS)
                    }

                    \PNTF (0x80)
                    Break
                }
            }
        }

        Method (CLC2, 1, Serialized)
        {
            And (PNHM, 0x0FFF0FF0, Local0)
            Switch (Local0)
            {
                Case (0x000306C0)
                {
                    Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                }
                Case (0x00040650)
                {
                    Return (0xC8)
                }
                Default
                {
                    Return (Divide (Multiply (Arg0, 0x05), 0x04, ))
                }

            }
        }
    }
}

