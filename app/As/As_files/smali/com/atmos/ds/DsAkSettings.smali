.class public Lcom/atmos/ds/DsAkSettings;
.super Ljava/lang/Object;
.source "DsAkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/ds/DsAkSettings$SettingDefn;,
        Lcom/atmos/ds/DsAkSettings$ParameterDefn;
    }
.end annotation


# static fields
.field private static akAllParamDefinitions_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static akParam_aonb_:I

.field private static akParam_gebf_:[I

.field private static akParam_genb_:I

.field private static akParam_ienb_:I

.field private static final akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

.field public static akSettableParamDefinitions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static constantAkParamsDefined_:Z

.field private static settingsDefaults_:[I

.field private static settingsDefinitions_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/atmos/ds/DsAkSettings$SettingDefn;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private values_:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/16 v11, 0x28

    const/16 v10, 0x14

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 104
    const/16 v1, 0x40

    new-array v1, v1, [Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    new-instance v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v3, "bver"

    const/4 v4, 0x5

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v3, "bndl"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v12, v4, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v3, "ocf"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v8, v9, v4}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v12

    const/4 v2, 0x3

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "preg"

    const/16 v5, -0x820

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v8, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vdhe"

    invoke-direct {v3, v4, v8, v9, v12}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vspe"

    invoke-direct {v3, v4, v8, v9, v12}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dssf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v8, v10, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvli"

    const/16 v5, -0x280

    invoke-direct {v3, v4, v8, v5, v9}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvlo"

    const/16 v5, -0x280

    invoke-direct {v3, v4, v8, v5, v9}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvle"

    invoke-direct {v3, v4, v8, v9, v8}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvmc"

    const/16 v5, -0x140

    const/16 v6, 0x140

    invoke-direct {v3, v4, v8, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvme"

    invoke-direct {v3, v4, v8, v9, v8}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ienb"

    invoke-direct {v3, v4, v8, v8, v11}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "iebf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v10, v10, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ieon"

    invoke-direct {v3, v4, v8, v9, v8}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "deon"

    invoke-direct {v3, v4, v8, v9, v8}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ngon"

    invoke-direct {v3, v4, v8, v9, v12}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "geon"

    invoke-direct {v3, v4, v8, v9, v8}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "genb"

    invoke-direct {v3, v4, v8, v8, v11}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "gebf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v10, v10, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v3, "aonb"

    invoke-direct {v2, v3, v8, v8, v11}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v10

    const/16 v2, 0x15

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aobf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v11, v10, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aobg"

    const/16 v5, 0x149

    const/16 v6, -0x1e0

    const/16 v7, 0x1e0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aoon"

    invoke-direct {v3, v4, v8, v9, v12}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x18

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arnb"

    invoke-direct {v3, v4, v8, v8, v11}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x19

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v11, v10, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "plb"

    const/16 v5, 0x120

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "plmd"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ven"

    invoke-direct {v3, v4, v8, v9, v8}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnnb"

    invoke-direct {v3, v4, v8, v8, v10}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnbf"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v10, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnbg"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v10, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x20

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vnbe"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v10, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x21

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcnb"

    invoke-direct {v3, v4, v8, v8, v11}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x22

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcbf"

    const/16 v5, 0x4e20

    invoke-direct {v3, v4, v10, v10, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x23

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcbg"

    const/16 v5, -0xc0

    const/16 v6, 0x240

    invoke-direct {v3, v4, v10, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x24

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vcbe"

    const/16 v5, -0xc0

    const/16 v6, 0x240

    invoke-direct {v3, v4, v10, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x25

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ver"

    const/4 v5, 0x4

    const/16 v6, -0x8000

    const/16 v7, 0x7fff

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x26

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "pstg"

    const/16 v5, -0x820

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v8, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x27

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dhsb"

    const/16 v5, 0x60

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v3, "dhrg"

    const/16 v4, -0x820

    const/16 v5, 0x60

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v11

    const/16 v2, 0x29

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dssb"

    const/16 v5, 0x60

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dssa"

    const/4 v5, 0x5

    const/16 v6, 0x1e

    invoke-direct {v3, v4, v8, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dvla"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "iebt"

    const/16 v5, -0x1e0

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v10, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "iea"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "dea"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "ded"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x30

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "gebg"

    const/16 v5, -0x240

    const/16 v6, 0x240

    invoke-direct {v3, v4, v10, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x31

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "aocc"

    const/16 v5, 0x8

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x32

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbi"

    invoke-direct {v3, v4, v11, v9, v8}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x33

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbl"

    const/16 v5, -0x820

    invoke-direct {v3, v4, v11, v5, v9}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x34

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arbh"

    const/16 v5, -0x820

    invoke-direct {v3, v4, v11, v5, v9}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x35

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "arod"

    const/16 v5, 0xc0

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x36

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "artp"

    const/16 v5, 0x10

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x37

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "endp"

    const/4 v5, 0x6

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x38

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "mxou"

    const/16 v5, 0x8

    invoke-direct {v3, v4, v8, v8, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x39

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vol"

    const/16 v5, -0x800

    const/16 v6, 0x1e0

    invoke-direct {v3, v4, v8, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vmon"

    invoke-direct {v3, v4, v8, v9, v12}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "vmb"

    const/16 v5, 0xf0

    invoke-direct {v3, v4, v8, v9, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcmf"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v12, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcvd"

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v3, v4, v12, v5, v6}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcsz"

    const/16 v5, 0x7fff

    invoke-direct {v3, v4, v8, v8, v5}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    new-instance v3, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    const-string v4, "lcpt"

    const/16 v5, 0xa8

    const/16 v6, -0x80

    const/16 v7, 0x7f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/atmos/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v3, v1, v2

    sput-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    .line 182
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    .line 187
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/atmos/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    .line 192
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcom/atmos/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    .line 197
    sput-boolean v9, Lcom/atmos/ds/DsAkSettings;->constantAkParamsDefined_:Z

    .line 202
    const/4 v1, -0x1

    sput v1, Lcom/atmos/ds/DsAkSettings;->akParam_genb_:I

    .line 203
    const/4 v1, -0x1

    sput v1, Lcom/atmos/ds/DsAkSettings;->akParam_ienb_:I

    .line 204
    const/4 v1, -0x1

    sput v1, Lcom/atmos/ds/DsAkSettings;->akParam_aonb_:I

    .line 205
    const/4 v1, 0x0

    sput-object v1, Lcom/atmos/ds/DsAkSettings;->akParam_gebf_:[I

    .line 528
    const/4 v0, 0x0

    .local v0, "paramIndex":I
    :goto_0
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 530
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    sget-object v0, Lcom/atmos/ds/DsAkSettings;->settingsDefaults_:[I

    sget-object v1, Lcom/atmos/ds/DsAkSettings;->settingsDefaults_:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/ds/DsAkSettings;->values_:[I

    .line 544
    return-void
.end method

.method public constructor <init>(Lcom/atmos/ds/DsAkSettings;)V
    .locals 2
    .param p1, "c"    # Lcom/atmos/ds/DsAkSettings;

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    invoke-virtual {p1}, Lcom/atmos/ds/DsAkSettings;->getValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/atmos/ds/DsAkSettings;->getValues()[I

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/ds/DsAkSettings;->values_:[I

    .line 554
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 2
    .param p1, "settings"    # [[I

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/atmos/ds/DsAkSettings;-><init>()V

    .line 565
    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsAkSettings;->set([[I)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    const-string v0, "DsAkSettings"

    const-string v1, "Input settings array does not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/atmos/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100()[Lcom/atmos/ds/DsAkSettings$ParameterDefn;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    return-object v0
.end method

.method private static defineSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 484
    const/4 v4, 0x0

    .local v4, "paramIndex":I
    const/4 v0, 0x0

    .local v0, "elemIndex":I
    const/4 v3, 0x0

    .local v3, "nElemPerParam":I
    const/4 v1, 0x0

    .line 489
    .local v1, "elemLen":I
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 491
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v5}, Lcom/atmos/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 492
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    add-int/2addr v1, v5

    .line 489
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 494
    :cond_1
    new-array v5, v1, [I

    sput-object v5, Lcom/atmos/ds/DsAkSettings;->settingsDefaults_:[I

    .line 499
    const/4 v4, 0x0

    :goto_1
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 501
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v5}, Lcom/atmos/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget v3, v5, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 504
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 506
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/atmos/ds/DsAkSettings$SettingDefn;

    sget-object v7, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/atmos/ds/DsAkSettings$SettingDefn;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->settingsDefaults_:[I

    aput v8, v5, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    .line 499
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 512
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 514
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/atmos/ds/DsAkSettings$SettingDefn;

    sget-object v7, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Lcom/atmos/ds/DsAkSettings$SettingDefn;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->settingsDefaults_:[I

    aput v8, v5, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 521
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public static getAkParamId(Ljava/lang/String;)I
    .locals 5
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 410
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 412
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " unidentified!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, -0x1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 415
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v2, v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int v1, v2, v3

    .line 418
    .local v1, "paramId":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 420
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getAkParamIndex(Ljava/lang/String;)I
    .locals 4
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 394
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 395
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 396
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAkParamIndex: parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getAkSettingIndex(Ljava/lang/String;I)I
    .locals 3
    .param p0, "parameter"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 436
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/atmos/ds/DsAkSettings$SettingDefn;

    invoke-direct {v2, p0, p1}, Lcom/atmos/ds/DsAkSettings$SettingDefn;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 437
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getGeqBandCount()I
    .locals 1

    .prologue
    .line 290
    sget v0, Lcom/atmos/ds/DsAkSettings;->akParam_genb_:I

    .line 291
    .local v0, "bandCount":I
    return v0
.end method

.method public static getParamArrayLength(Ljava/lang/String;)I
    .locals 2
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p0}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    iget v0, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    goto :goto_0
.end method

.method public static isAkParamLengthValid(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "parameter"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 459
    const/4 v1, 0x1

    .line 460
    .local v1, "ret":Z
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    invoke-static {p0}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 463
    .local v0, "i":I
    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    if-eq p1, v2, :cond_0

    .line 465
    const/4 v1, 0x0

    .line 466
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configuration file, the AK parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " values length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is NOT compatible to the defined length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v0    # "i":I
    :cond_0
    return v1
.end method

.method public static isConstantAkParamsDefined()Z
    .locals 1

    .prologue
    .line 447
    sget-boolean v0, Lcom/atmos/ds/DsAkSettings;->constantAkParamsDefined_:Z

    return v0
.end method

.method private static isParamSettable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "vdhe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vspe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ngon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ieon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dhsb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dhrg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dssb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dssa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dssf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvla"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iebt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gebg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aoon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "plb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "plmd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vmon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vmb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvli"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvlo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dvmc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ienb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iebf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "genb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gebf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aonb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aobf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aobg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arnb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aocc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arbh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "arod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "artp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isParamValueConflicted(III)Z
    .locals 5
    .param p1, "paramIndex"    # I
    .param p2, "offset"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, 0x2

    .line 598
    const/4 v0, 0x0

    .line 600
    .local v0, "ret":Z
    sget-boolean v1, Lcom/atmos/ds/DsAkSettings;->constantAkParamsDefined_:Z

    if-eqz v1, :cond_5

    .line 602
    const-string v1, "genb"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_1

    sget v1, Lcom/atmos/ds/DsAkSettings;->akParam_genb_:I

    if-eq p3, v1, :cond_1

    .line 604
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/atmos/ds/DsAkSettings;->akParam_genb_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x1

    .line 634
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    const-string v1, "ienb"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_2

    sget v1, Lcom/atmos/ds/DsAkSettings;->akParam_ienb_:I

    if-eq p3, v1, :cond_2

    .line 609
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ienb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/atmos/ds/DsAkSettings;->akParam_ienb_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, 0x1

    goto :goto_0

    .line 612
    :cond_2
    const-string v1, "aonb"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_3

    sget v1, Lcom/atmos/ds/DsAkSettings;->akParam_aonb_:I

    if-eq p3, v1, :cond_3

    .line 614
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aonb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/atmos/ds/DsAkSettings;->akParam_aonb_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, 0x1

    goto :goto_0

    .line 617
    :cond_3
    const-string v1, "arnb"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_4

    sget v1, Lcom/atmos/ds/DsAkSettings;->akParam_aonb_:I

    if-eq p3, v1, :cond_4

    .line 619
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arnb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/atmos/ds/DsAkSettings;->akParam_aonb_:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 622
    :cond_4
    const-string v1, "aocc"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eq p3, v4, :cond_0

    .line 624
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aocc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 630
    :cond_5
    const-string v1, "DsAkSettings"

    const-string v2, "Settable settings not defined yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isValidParamValue(II)Z
    .locals 1
    .param p0, "index"    # I
    .param p1, "value"    # I

    .prologue
    .line 326
    sget-object v0, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->lowerBound:I

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->upperBound:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setConstantAkParam(Ljava/lang/String;[I)V
    .locals 6
    .param p0, "parameter"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "i":I
    const-string v1, "genb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of GEq bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "gebf"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 232
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 233
    const-string v1, "gebg"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 234
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 235
    const-string v1, "vcbf"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 236
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 237
    const-string v1, "vcbg"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 238
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 239
    const-string v1, "vcbe"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 240
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 241
    aget v1, p1, v4

    sput v1, Lcom/atmos/ds/DsAkSettings;->akParam_genb_:I

    .line 276
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/atmos/ds/DsAkSettings;->constantAkParamsDefined_:Z

    if-nez v1, :cond_1

    sget v1, Lcom/atmos/ds/DsAkSettings;->akParam_genb_:I

    if-eq v1, v5, :cond_1

    sget v1, Lcom/atmos/ds/DsAkSettings;->akParam_ienb_:I

    if-eq v1, v5, :cond_1

    sget v1, Lcom/atmos/ds/DsAkSettings;->akParam_aonb_:I

    if-eq v1, v5, :cond_1

    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParam_gebf_:[I

    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->defineSettings()V

    .line 279
    const/4 v1, 0x1

    sput-boolean v1, Lcom/atmos/ds/DsAkSettings;->constantAkParamsDefined_:Z

    .line 281
    :cond_1
    return-void

    .line 243
    :cond_2
    const-string v1, "ienb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of IEq bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "iebf"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 247
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 248
    const-string v1, "iebt"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 249
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 250
    aget v1, p1, v4

    sput v1, Lcom/atmos/ds/DsAkSettings;->akParam_ienb_:I

    goto :goto_0

    .line 252
    :cond_3
    const-string v1, "aonb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const-string v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of Audio Optimizer bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "aobf"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 256
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 257
    const-string v1, "aobg"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 258
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 259
    const-string v1, "arbf"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 261
    const-string v1, "arbi"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 262
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 263
    const-string v1, "arbl"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 264
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 265
    const-string v1, "arbh"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 266
    sget-object v1, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 267
    aget v1, p1, v4

    sput v1, Lcom/atmos/ds/DsAkSettings;->akParam_aonb_:I

    goto/16 :goto_0

    .line 269
    :cond_4
    const-string v1, "gebf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "DsAkSettings"

    const-string v2, "Initializing the graphic equalizer band center frequencies"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sput-object p1, Lcom/atmos/ds/DsAkSettings;->akParam_gebf_:[I

    goto/16 :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;I)I
    .locals 4
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 746
    invoke-static {p1, p2}, Lcom/atmos/ds/DsAkSettings;->getAkSettingIndex(Ljava/lang/String;I)I

    move-result v0

    .line 747
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 748
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " combination is not gettable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/atmos/ds/DsAkSettings;->values_:[I

    aget v1, v1, v0

    return v1
.end method

.method getValues()[I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/atmos/ds/DsAkSettings;->values_:[I

    return-object v0
.end method

.method public set(Ljava/lang/String;II)I
    .locals 5
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 690
    invoke-static {p1}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    .line 691
    .local v1, "paramIndex":I
    invoke-direct {p0, v1, p2, p3}, Lcom/atmos/ds/DsAkSettings;->isParamValueConflicted(III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The parameter value conflicts with the pre-defined value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 693
    :cond_0
    invoke-static {p1, p2}, Lcom/atmos/ds/DsAkSettings;->getAkSettingIndex(Ljava/lang/String;I)I

    move-result v0

    .line 694
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 695
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " combination is not settable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 697
    :cond_1
    invoke-static {v1, p3}, Lcom/atmos/ds/DsAkSettings;->isValidParamValue(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 699
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is out of valid range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->lowerBound:I

    if-ge p3, v2, :cond_2

    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget p3, v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->lowerBound:I

    .line 701
    :cond_2
    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->upperBound:I

    if-le p3, v2, :cond_3

    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget p3, v2, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->upperBound:I

    .line 702
    :cond_3
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clamp the value to the upper/lower bound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_0
    iget-object v2, p0, Lcom/atmos/ds/DsAkSettings;->values_:[I

    aput p3, v2, v0

    .line 708
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set: (parameter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return p3

    .line 704
    :cond_4
    const-string v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eror---->Clamp the value to the upper/lower bound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public set([[I)V
    .locals 9
    .param p1, "settings"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 644
    move-object v0, p1

    .local v0, "arr$":[[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 646
    .local v1, "fpv":[I
    array-length v5, v1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 647
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Each setting must contain an array of 3 ints declared as int[3]"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 648
    :cond_0
    const/4 v5, 0x0

    aget v2, v1, v5

    .line 649
    .local v2, "i":I
    sget-object v5, Lcom/atmos/ds/DsAkSettings;->akParams_:[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    const/4 v6, 0x1

    aget v6, v1, v6

    aget v7, v1, v8

    invoke-virtual {p0, v5, v6, v7}, Lcom/atmos/ds/DsAkSettings;->set(Ljava/lang/String;II)I

    move-result v5

    aput v5, v1, v8

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 651
    .end local v1    # "fpv":[I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
