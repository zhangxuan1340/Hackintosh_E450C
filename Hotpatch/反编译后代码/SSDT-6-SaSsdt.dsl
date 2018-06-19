/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-6-SaSsdt.aml, Wed Jun 13 10:42:09 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001477 (5239)
 *     Revision         0x01
 *     Checksum         0xBE
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "SaSsdt ", 0x00003000)
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
    External (_SB_.LID_._LID, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.B0D3, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPC_.SCIS, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.VID_, DeviceObj)    // Warning: Unknown object
    External (GUAM, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (LIDS, UnknownObj)    // Warning: Unknown object
    External (S0ID, UnknownObj)    // Warning: Unknown object
    External (WVIS, UnknownObj)    // Warning: Unknown object
    External (WXPF, UnknownObj)    // Warning: Unknown object

    OperationRegion (SANV, SystemMemory, 0x9CF6BC18, 0x0156)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        Offset (0x49), 
        KSV0,   32, 
        KSV1,   8, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUD3,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CADR,   32, 
        CCNT,   8, 
        Offset (0xC8), 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        SC7A,   8
    }

    Scope (\_SB.PCI0.B0D3)
    {
        Name (BARA, 0x80000000)
        Name (BBAR, Zero)
        Name (TBAR, Zero)
        Name (TCMD, Zero)
        Name (MODB, Zero)
        Name (MODC, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LNotEqual (AUVD, 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
            {
                Store (ABAR, BARA)
                If (LNotEqual (ABAH, Zero))
                {
                    Or (BARA, ShiftLeft (ABAH, 0x20), BARA)
                }
            }
        }

        OperationRegion (RPCS, SystemMemory, \XBAS, 0x00018040)
        Field (RPCS, AnyAcc, NoLock, Preserve)
        {
            Offset (0x18004), 
            ACMD,   8, 
            Offset (0x18010), 
            ABAR,   32, 
            ABAH,   32
        }

        OperationRegion (RPCZ, PCI_Config, Zero, 0x40)
        Field (RPCZ, DWordAcc, Lock, Preserve)
        {
            AUVD,   16
        }

        Method (ASTR, 0, NotSerialized)
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
            {
                Store (Zero, BBAR)
                And (ABAR, 0xFFFFFFF0, BBAR)
                If (LNotEqual (ABAH, Zero))
                {
                    Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR)
                }

                Add (BBAR, 0x1000, BBAR)
                OperationRegion (RPCY, SystemMemory, BBAR, 0x25)
                Field (RPCY, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    EM4W,   32, 
                    EMWA,   32, 
                    Offset (0x1C), 
                    ADWA,   32
                }

                Store (AUDA, EMWA)
                Store (AUD3, EM4W)
            }
        }

        Method (VSTR, 1, NotSerialized)
        {
            Name (CONT, 0x03E8)
            Name (ADDR, 0x80000000)
            Store (Arg0, ADDR)
            OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
            Field (CCDC, ByteAcc, NoLock, Preserve)
            {
                CDEC,   32
            }

            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
            {
                If (LNotEqual (CDEC, Zero))
                {
                    Store (Zero, BBAR)
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    If (LNotEqual (ABAH, Zero))
                    {
                        Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR)
                    }

                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }

                    Or (AIRS, 0x02, AIRS)
                    Store (CDEC, AVIC)
                    Or (AIRS, One, AIRS)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }
                }
            }
        }

        Method (CXDC, 0, NotSerialized)
        {
            Name (IDDX, 0x80000000)
            If (LAnd (LNotEqual (CADR, Zero), LNotEqual (CCNT, Zero)))
            {
                Store (CADR, IDDX)
                While (LLess (IDDX, Add (CADR, Multiply (CCNT, 0x04))))
                {
                    VSTR (IDDX)
                    Add (IDDX, 0x04, IDDX)
                }
            }
        }

        Method (ARST, 0, NotSerialized)
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
            {
                And (ABAR, 0xFFFFFFF0, BBAR)
                OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)
                Field (IPCV, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    CRST,   32, 
                    Offset (0x4C), 
                    CORB,   32, 
                    Offset (0x5C), 
                    RIRB,   32, 
                    Offset (0x80), 
                    OSD1,   32, 
                    Offset (0xA0), 
                    OSD2,   32
                }

                And (CORB, 0xFFFFFFFD, CORB)
                And (RIRB, 0xFFFFFFFD, RIRB)
                And (OSD1, 0xFFFFFFFD, OSD1)
                And (OSD2, 0xFFFFFFFD, OSD2)
                And (CRST, 0xFFFFFFFE, CRST)
            }
        }

        Method (AINI, 0, NotSerialized)
        {
            Name (CONT, 0x03E8)
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
            {
                Store (Zero, BBAR)
                And (ABAR, 0xFFFFFFF0, BBAR)
                If (LNotEqual (ABAH, Zero))
                {
                    Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR)
                }

                OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                Field (IPCV, DWordAcc, NoLock, Preserve)
                {
                    GCAP,   16, 
                    Offset (0x08), 
                    GCTL,   32, 
                    Offset (0x0E), 
                    SSTS,   8, 
                    Offset (0x60), 
                    AVIC,   32, 
                    Offset (0x68), 
                    AIRS,   16
                }

                Or (GCTL, One, GCTL)
                Store (0x03E8, CONT)
                While (LAnd (LEqual (And (GCTL, One), Zero), LNotEqual (CONT, Zero)))
                {
                    Stall (One)
                    Decrement (CONT)
                }

                And (GCAP, 0xFFFF, GCAP)
                Or (SSTS, 0x0F, SSTS)
                And (GCTL, 0xFFFFFFFE, GCTL)
                Store (0x03E8, CONT)
                While (LAnd (LEqual (And (GCTL, One), One), LNotEqual (CONT, Zero)))
                {
                    Stall (One)
                    Decrement (CONT)
                }

                Or (GCTL, One, GCTL)
                Store (0x03E8, CONT)
                While (LAnd (LEqual (And (GCTL, One), Zero), LNotEqual (CONT, Zero)))
                {
                    Stall (One)
                    Decrement (CONT)
                }
            }
        }

        Method (ABWA, 1, NotSerialized)
        {
            If (Arg0)
            {
                If (LOr (LEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LEqual (And (ABAR, 0xFFFFC000), Zero)))
                {
                    If (LNotEqual (BARA, 0x80000000))
                    {
                        Store (ABAR, TBAR)
                        Or (TBAR, ShiftLeft (ABAH, 0x20), TBAR)
                        Store (ACMD, TCMD)
                        Store (ShiftRight (BARA, 0x20), ABAH)
                        Store (BARA, ABAR)
                        Store (0x06, ACMD)
                        Store (One, MODB)
                    }
                }
                ElseIf (LNotEqual (And (ACMD, 0x06), 0x06))
                {
                    Store (ACMD, TCMD)
                    Store (0x06, ACMD)
                    Store (One, MODC)
                }
            }
            Else
            {
                If (MODB)
                {
                    If (LEqual (ABAR, BARA))
                    {
                        Store (TBAR, ABAR)
                        Store (ShiftRight (TBAR, 0x20), ABAH)
                        Store (TCMD, ACMD)
                    }
                }

                If (MODC)
                {
                    Store (TCMD, ACMD)
                }
            }
        }

        Method (DCCC, 1, NotSerialized)
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), Zero)))
            {
                And (ABAR, 0xFFFFFFF0, BBAR)
                OperationRegion (IPCV, SystemMemory, BBAR, 0x1020)
                Field (IPCV, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x100C), 
                    AEM4,   32, 
                    AEM5,   32
                }

                If (LEqual (Arg0, Zero))
                {
                    And (AEM4, 0xFFFC0000, AEM4)
                    Or (AEM4, 0x04, AEM4)
                    And (AEM5, 0xFFFC0000, AEM5)
                    Or (AEM5, 0x4B, AEM5)
                }

                If (LEqual (Arg0, One))
                {
                    And (AEM4, 0xFFFC0000, AEM4)
                    Or (AEM4, 0x04, AEM4)
                    And (AEM5, 0xFFFC0000, AEM5)
                    Or (AEM5, 0x5A, AEM5)
                }

                If (LEqual (Arg0, 0x02))
                {
                    And (AEM4, 0xFFFC0000, AEM4)
                    Or (AEM4, 0x10, AEM4)
                    And (AEM5, 0xFFFC0000, AEM5)
                    Or (AEM5, 0xE1, AEM5)
                }

                If (LEqual (Arg0, 0x03))
                {
                    And (AEM4, 0xFFFC0000, AEM4)
                    Or (AEM4, 0x08, AEM4)
                    And (AEM5, 0xFFFC0000, AEM5)
                    Or (AEM5, 0xE1, AEM5)
                }
            }
        }
    }

    Scope (\_SB.PCI0.VID)
    {
        Scope (\_SB.PCI0)
        {
            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            GIVD,   1, 
                ,   2, 
            GUMA,   3, 
            Offset (0x12), 
            Offset (0x14), 
                ,   4, 
            GMFN,   1, 
            Offset (0x18), 
            Offset (0xA4), 
            ASLE,   8, 
            Offset (0xA8), 
            GSSE,   1, 
            GSSB,   14, 
            GSES,   1, 
            Offset (0xB0), 
                ,   12, 
            CDVL,   1, 
            Offset (0xB2), 
            Offset (0xB5), 
            LBPC,   8, 
            Offset (0xBC), 
            ASLS,   32
        }

        OperationRegion (IGDM, SystemMemory, \ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            CPL9,   32, 
            CP10,   32, 
            CP11,   32, 
            CP12,   32, 
            CP13,   32, 
            CP14,   32, 
            CP15,   32, 
            Offset (0x200), 
            SCIE,   1, 
            GEFC,   4, 
            GXFC,   3, 
            GESF,   8, 
            Offset (0x204), 
            PARM,   32, 
            DSLP,   32, 
            Offset (0x300), 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSP,   64, 
            FDSS,   32, 
            STAT,   32, 
            Offset (0x400), 
            GVD1,   49152, 
            PHED,   32, 
            BDDC,   2048
        }

        Name (DBTB, Package (0x15)
        {
            Zero, 
            0x07, 
            0x38, 
            0x01C0, 
            0x0E00, 
            0x3F, 
            0x01C7, 
            0x0E07, 
            0x01F8, 
            0x0E38, 
            0x0FC0, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            0x7000, 
            0x7007, 
            0x7038, 
            0x71C0, 
            0x7E00
        })
        Name (CDCT, Package (0x05)
        {
            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                Zero, 
                Zero
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })
        Name (SUCC, One)
        Name (NVLD, 0x02)
        Name (CRIT, 0x04)
        Name (NCRT, 0x06)
        Method (GSCI, 0, Serialized)
        {
            If (LEqual (GEFC, 0x04))
            {
                Store (GBDA (), GXFC)
            }

            If (LEqual (GEFC, 0x06))
            {
                Store (SBCB (), GXFC)
            }

            Store (Zero, GEFC)
            Store (One, \_SB.PCI0.LPC.SCIS)
            Store (Zero, GSSE)
            Store (Zero, SCIE)
            Return (Zero)
        }

        Method (GBDA, 0, Serialized)
        {
            If (LEqual (GESF, Zero))
            {
                Store (0x0241, PARM)
                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, One))
            {
                Store (0x00200382, PARM)
                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x04))
            {
                And (PARM, 0xEFFF0000, PARM)
                And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM)
                Or (IBTT, PARM, PARM)
                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x05))
            {
                If (\_SB.LID._LID)
                {
                    Store (One, LIDS)
                }
                Else
                {
                    Store (Zero, LIDS)
                }

                Store (IPSC, PARM)
                Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                Add (PARM, 0x0100, PARM)
                Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                Add (PARM, 0x00010000, PARM)
                Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x07))
            {
                Store (GIVD, PARM)
                XOr (PARM, One, PARM)
                Or (PARM, ShiftLeft (GMFN, One), PARM)
                Or (PARM, 0x1800, PARM)
                Or (PARM, 0x00060000, PARM)
                Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15), PARM, PARM)
                Store (One, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x0A))
            {
                Store (Zero, PARM)
                If (ISSC)
                {
                    Or (PARM, 0x03, PARM)
                }

                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x0B))
            {
                Store (KSV0, PARM)
                Store (KSV1, GESF)
                Return (SUCC)
            }

            Store (Zero, GESF)
            Return (CRIT)
        }

        Method (SBCB, 0, Serialized)
        {
            If (LEqual (GESF, Zero))
            {
                Store (0x00220382, PARM)
                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, One))
            {
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x03))
            {
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x04))
            {
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x05))
            {
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x07))
            {
                If (LEqual (S0ID, One))
                {
                    If (LEqual (And (PARM, 0xFF), One))
                    {
                        \GUAM (One)
                    }
                }

                If (LEqual (PARM, Zero))
                {
                    Store (CLID, Local0)
                    If (And (0x80000000, Local0))
                    {
                        And (CLID, 0x0F, CLID)
                        GLID (CLID)
                    }
                }

                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x08))
            {
                If (LEqual (S0ID, One))
                {
                    Store (And (ShiftRight (PARM, 0x08), 0xFF), Local0)
                    If (LEqual (Local0, Zero))
                    {
                        \GUAM (Zero)
                    }
                }

                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x09))
            {
                And (PARM, 0xFF, IBTT)
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x0A))
            {
                And (PARM, 0xFF, IPSC)
                If (And (ShiftRight (PARM, 0x08), 0xFF))
                {
                    And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                    Decrement (IPAT)
                }

                And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x0B))
            {
                And (ShiftRight (PARM, One), One, IF1E)
                If (And (PARM, 0x0001E000))
                {
                    And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                }
                Else
                {
                    And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                }

                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x10))
            {
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x11))
            {
                Store (ShiftLeft (LIDS, 0x08), PARM)
                Add (PARM, 0x0100, PARM)
                Store (Zero, GESF)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x12))
            {
                If (And (PARM, One))
                {
                    If (LEqual (ShiftRight (PARM, One), One))
                    {
                        Store (One, ISSC)
                    }
                    Else
                    {
                        Store (Zero, GESF)
                        Return (CRIT)
                    }
                }
                Else
                {
                    Store (Zero, ISSC)
                }

                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x13))
            {
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x14))
            {
                And (PARM, 0x0F, PAVP)
                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x15))
            {
                If (LEqual (PARM, One))
                {
                    Or (\_SB.PCI0.AUDE, 0x20, \_SB.PCI0.AUDE)
                    \_SB.PCI0.B0D3.ABWA (One)
                    \_SB.PCI0.B0D3.ARST ()
                    \_SB.PCI0.B0D3.ASTR ()
                    \_SB.PCI0.B0D3.AINI ()
                    \_SB.PCI0.B0D3.CXDC ()
                    \_SB.PCI0.B0D3.ABWA (Zero)
                    Notify (\_SB.PCI0, Zero)
                }

                If (LEqual (PARM, Zero))
                {
                    And (\_SB.PCI0.AUDE, 0xDF, \_SB.PCI0.AUDE)
                    Notify (\_SB.PCI0, Zero)
                }

                Store (Zero, GESF)
                Store (Zero, PARM)
                Return (SUCC)
            }

            If (LEqual (GESF, 0x16))
            {
                And (PARM, 0x03, Local0)
                \_SB.PCI0.B0D3.DCCC (Local0)
                Store (Zero, GESF)
                Return (SUCC)
            }

            Store (Zero, GESF)
            Return (SUCC)
        }

        Method (PDRD, 0, NotSerialized)
        {
            If (LNot (DRDY))
            {
                Sleep (ASLP)
            }

            Return (LNot (DRDY))
        }

        Method (PSTS, 0, NotSerialized)
        {
            If (LGreater (CSTS, 0x02))
            {
                Sleep (ASLP)
            }

            Return (LEqual (CSTS, 0x03))
        }

        Method (GNOT, 2, NotSerialized)
        {
            If (PDRD ())
            {
                Return (One)
            }

            Store (Arg0, CEVT)
            Store (0x03, CSTS)
            If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
            {
                If (LNotEqual (Arg0, One))
                {
                    If (LAnd (\WXPF, LNot (\WVIS)))
                    {
                        Notify (\_SB.PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.VID, Arg1)
                    }
                }
            }

            Notify (\_SB.PCI0.VID, 0x80)
            Return (Zero)
        }

        Method (GHDS, 1, NotSerialized)
        {
            Store (Arg0, TIDX)
            Return (GNOT (One, Zero))
        }

        Method (GLID, 1, NotSerialized)
        {
            Store (Arg0, CLID)
            Return (GNOT (0x02, Zero))
        }

        Method (GLIS, 1, NotSerialized)
        {
            Store (Arg0, CLID)
            Return (Zero)
        }

        Method (GDCK, 1, NotSerialized)
        {
            Store (Arg0, CDCK)
            Return (GNOT (0x04, 0x80))
        }

        Method (GDCS, 1, NotSerialized)
        {
            Store (Arg0, CDCK)
        }

        Method (PARD, 0, NotSerialized)
        {
            If (LNot (ARDY))
            {
                Sleep (ASLP)
            }

            Return (LNot (ARDY))
        }

        Method (AINT, 2, NotSerialized)
        {
            If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
            {
                Return (One)
            }

            If (PARD ())
            {
                Return (One)
            }

            If (LEqual (Arg0, 0x02))
            {
                XOr (PFIT, 0x07, PFIT)
                Or (PFIT, 0x80000000, PFIT)
                Store (0x04, ASLC)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (Arg1, BCLP)
                Or (BCLP, 0x80000000, BCLP)
                Store (0x0A, ASLC)
            }
            ElseIf (LEqual (Arg0, 0x03))
            {
                Store (Arg1, PFMB)
                Or (PFMB, 0x80000100, PFMB)
                Store (0x08, ASLC)
            }
            ElseIf (LEqual (Arg0, Zero))
            {
                Store (Arg1, ALSI)
                Store (One, ASLC)
            }
            Else
            {
                Return (One)
            }

            Store (One, ASLE)
            Return (Zero)
        }
    }
}

