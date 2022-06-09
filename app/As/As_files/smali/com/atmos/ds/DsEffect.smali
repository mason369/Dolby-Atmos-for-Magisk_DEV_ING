.class public Lcom/atmos/ds/DsEffect;
.super Ljava/lang/Object;
.source "DsEffect.java"


# static fields
.field public static final EFFECT_DS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_DS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field private static final kDvmeEnabledDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final overrideParamNames:[Ljava/lang/String;

.field private static final overrideParams:[[I


# instance fields
.field protected audioEffect:Landroid/media/audiofx/AudioEffect;

.field private audioSessionId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 33
    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/atmos/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 35
    const-string v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/atmos/ds/DsEffect;->EFFECT_TYPE_DS:Ljava/util/UUID;

    .line 36
    const-string v0, "9d4921da-8225-4f29-aefa-39537a041337"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/atmos/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    .line 71
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "endp"

    aput-object v1, v0, v4

    const-string v1, "dvli"

    aput-object v1, v0, v5

    const-string v1, "dvlo"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "vmb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/atmos/ds/DsEffect;->overrideParamNames:[Ljava/lang/String;

    .line 73
    const/16 v0, 0x16

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    sput-object v0, Lcom/atmos/ds/DsEffect;->overrideParams:[[I

    .line 141
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/atmos/ds/DsEffect;->kDvmeEnabledDevices:Ljava/util/List;

    return-void

    .line 73
    :array_0
    .array-data 4
        0x1
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
        -0x140
        -0x140
        0x90
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x2
        -0x140
        -0x140
        0x90
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x2
        -0x140
        -0x140
        0x90
    .end array-data

    :array_4
    .array-data 4
        0x10
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_5
    .array-data 4
        0x20
        0x2
        -0x140
        -0x140
        0x90
    .end array-data

    :array_6
    .array-data 4
        0x40
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_7
    .array-data 4
        0x80
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_8
    .array-data 4
        0x100
        0x2
        -0x140
        -0x140
        0x90
    .end array-data

    :array_9
    .array-data 4
        0x200
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_a
    .array-data 4
        0x400
        0x3
        -0x1f0
        -0x1f0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x800
        0x2
        -0x140
        -0x140
        0x90
    .end array-data

    :array_c
    .array-data 4
        0x1000
        0x2
        -0x140
        -0x140
        0x90
    .end array-data

    :array_d
    .array-data 4
        0x2000
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_e
    .array-data 4
        0x4000
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_f
    .array-data 4
        0x8000
        0x3
        -0x1f0
        -0x1f0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x10000
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_11
    .array-data 4
        0x20000
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_12
    .array-data 4
        0x40000
        0x3
        -0x1f0
        -0x1f0
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x80000
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_14
    .array-data 4
        0x100000
        0x1
        -0x140
        -0x140
        0x90
    .end array-data

    :array_15
    .array-data 4
        0x200000
        0x1
        -0x140
        -0x140
        0x90
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    .line 231
    new-instance v1, Landroid/media/audiofx/AudioEffect;

    sget-object v2, Lcom/atmos/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v3, Lcom/atmos/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v1, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    .line 232
    const-string v1, "DsEffect"

    const-string v2, "Created DS AudioEffect successfully"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v1}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 236
    .local v0, "e":Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v1, "DsEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATED EFFECT Implementor:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connectMode:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uuid:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sessionID:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput p1, p0, Lcom/atmos/ds/DsEffect;->audioSessionId_:I

    .line 245
    invoke-direct {p0}, Lcom/atmos/ds/DsEffect;->sendDapOverrides()V

    .line 246
    invoke-direct {p0}, Lcom/atmos/ds/DsEffect;->sendDvmeOverrides()V

    .line 247
    return-void
.end method

.method private static byteArrayToInt32([B)I
    .locals 2
    .param p0, "ba"    # [B

    .prologue
    .line 347
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static byteArrayToInt32Array([B)[I
    .locals 6
    .param p0, "ba"    # [B

    .prologue
    .line 352
    array-length v3, p0

    .line 353
    .local v3, "srcLength":I
    shr-int/lit8 v1, v3, 0x2

    .line 354
    .local v1, "destLength":I
    new-array v0, v1, [I

    .line 356
    .local v0, "dest":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 358
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v0, v2

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-object v0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "ba"    # [B

    .prologue
    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "HEX("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 369
    .local v1, "b":B
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v1    # "b":B
    :cond_0
    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static int32ArrayToByteArray([I[BI)I
    .locals 6
    .param p0, "value"    # [I
    .param p1, "dst"    # [B
    .param p2, "index"    # I

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, p2

    .end local p2    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    .line 308
    .local v4, "v":I
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "index":I
    .restart local p2    # "index":I
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 309
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "index":I
    .restart local v2    # "index":I
    ushr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 310
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "index":I
    .restart local p2    # "index":I
    ushr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 311
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "index":I
    .restart local v2    # "index":I
    ushr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v4    # "v":I
    :cond_0
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x4

    return v5
.end method

.method private static int32ToByteArray(I[BI)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "dst"    # [B
    .param p2, "index"    # I

    .prologue
    .line 318
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 319
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 320
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .restart local v0    # "index":I
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 321
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 322
    const/4 v1, 0x4

    return v1
.end method

.method private sendDapOverrides()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 102
    const-string v10, "DsEffect"

    const-string v11, "Sending parameter overrides to effect"

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v10, Lcom/atmos/ds/DsEffect;->overrideParams:[[I

    array-length v10, v10

    sget-object v11, Lcom/atmos/ds/DsEffect;->overrideParamNames:[Ljava/lang/String;

    array-length v11, v11

    mul-int v6, v10, v11

    .line 109
    .local v6, "nParams":I
    mul-int/lit8 v10, v6, 0x10

    add-int/lit8 v10, v10, 0x8

    new-array v1, v10, [B

    .line 110
    .local v1, "baValue":[B
    const/4 v4, 0x0

    .line 112
    .local v4, "index":I
    invoke-static {v12, v1, v4}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v4, v10

    .line 114
    invoke-static {v6, v1, v4}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v4, v10

    .line 115
    sget-object v0, Lcom/atmos/ds/DsEffect;->overrideParams:[[I

    .local v0, "arr$":[[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v0, v3

    .line 117
    .local v7, "overrides":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v10, Lcom/atmos/ds/DsEffect;->overrideParamNames:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_0

    .line 120
    aget v10, v7, v12

    invoke-static {v10, v1, v4}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v4, v10

    .line 122
    sget-object v10, Lcom/atmos/ds/DsEffect;->overrideParamNames:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-static {v10}, Lcom/atmos/ds/DsAkSettings;->getAkParamId(Ljava/lang/String;)I

    move-result v8

    .line 123
    .local v8, "paramId":I
    invoke-static {v8, v1, v4}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v4, v10

    .line 125
    const/4 v10, 0x1

    invoke-static {v10, v1, v4}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v4, v10

    .line 127
    add-int/lit8 v10, v2, 0x1

    aget v10, v7, v10

    invoke-static {v10, v1, v4}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v4, v10

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v8    # "paramId":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    .end local v7    # "overrides":[I
    :cond_1
    invoke-virtual {p0, v12, v1}, Lcom/atmos/ds/DsEffect;->setParameter(I[B)I

    move-result v9

    .line 131
    .local v9, "status":I
    if-eqz v9, :cond_2

    .line 133
    const-string v10, "DsEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendDapOverrides(): Error in sending override parameters "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return-void
.end method

.method private sendDvmeOverrides()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 147
    const-string v10, "dvme"

    invoke-static {v10}, Lcom/atmos/ds/DsAkSettings;->getAkParamId(Ljava/lang/String;)I

    move-result v4

    .line 148
    .local v4, "dvmeId":I
    sget-object v10, Lcom/atmos/ds/DsEffect;->overrideParams:[[I

    array-length v10, v10

    sget-object v11, Lcom/atmos/ds/DsEffect;->kDvmeEnabledDevices:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int v8, v10, v11

    .line 149
    .local v8, "nParams":I
    mul-int/lit8 v10, v8, 0x10

    add-int/lit8 v10, v10, 0x8

    new-array v1, v10, [B

    .line 150
    .local v1, "baValue":[B
    const/4 v6, 0x0

    .line 152
    .local v6, "index":I
    invoke-static {v12, v1, v6}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v6, v10

    .line 154
    invoke-static {v8, v1, v6}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v6, v10

    .line 155
    sget-object v0, Lcom/atmos/ds/DsEffect;->overrideParams:[[I

    .local v0, "arr$":[[I
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v0, v5

    .line 157
    .local v3, "devparams":[I
    aget v2, v3, v12

    .line 159
    .local v2, "dev":I
    sget-object v10, Lcom/atmos/ds/DsEffect;->kDvmeEnabledDevices:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 155
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {v2, v1, v6}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v6, v10

    .line 166
    invoke-static {v4, v1, v6}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v6, v10

    .line 168
    const/4 v10, 0x1

    invoke-static {v10, v1, v6}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v6, v10

    .line 170
    invoke-static {v12, v1, v6}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v6, v10

    goto :goto_1

    .line 172
    .end local v2    # "dev":I
    .end local v3    # "devparams":[I
    :cond_1
    invoke-virtual {p0, v12, v1}, Lcom/atmos/ds/DsEffect;->setParameter(I[B)I

    move-result v9

    .line 173
    .local v9, "status":I
    if-eqz v9, :cond_2

    .line 175
    const-string v10, "DsEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendDvmeOverrides(): Error in sending dvme overrides "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    return-void
.end method


# virtual methods
.method addDap2ParamAobs([BILcom/atmos/ds/DsProfileSettings;)I
    .locals 10
    .param p1, "baValue"    # [B
    .param p2, "index"    # I
    .param p3, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    const/4 v9, 0x0

    .line 664
    const-string v7, "aonb"

    invoke-virtual {p3, v7}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v3

    .line 665
    .local v3, "aonb":[I
    const-string v7, "aobf"

    invoke-virtual {p3, v7}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    .line 666
    .local v0, "aobf":[I
    const-string v7, "aocc"

    invoke-virtual {p3, v7}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v2

    .line 667
    .local v2, "aocc":[I
    const-string v7, "aobg"

    invoke-virtual {p3, v7}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v1

    .line 669
    .local v1, "aobg":[I
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v7

    add-int/2addr p2, v7

    .line 671
    const v7, 0x73626f61

    invoke-static {v7, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v7

    add-int/2addr p2, v7

    .line 673
    aget v7, v3, v9

    aget v8, v2, v9

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    invoke-static {v7, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v7

    add-int/2addr p2, v7

    .line 675
    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v7

    add-int/2addr p2, v7

    .line 676
    invoke-static {v2, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v7

    add-int/2addr p2, v7

    .line 677
    invoke-static {v0, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v7

    add-int/2addr p2, v7

    .line 678
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    aget v7, v2, v9

    if-ge v5, v7, :cond_1

    .line 680
    aget v7, v3, v9

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v5

    add-int/lit8 v4, v7, 0x1

    .line 681
    .local v4, "base":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    aget v7, v3, v9

    if-ge v6, v7, :cond_0

    .line 683
    add-int v7, v4, v6

    aget v7, v1, v7

    invoke-static {v7, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v7

    add-int/2addr p2, v7

    .line 681
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 678
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 686
    .end local v4    # "base":I
    .end local v6    # "j":I
    :cond_1
    return p2
.end method

.method addDap2ParamArbs([BILcom/atmos/ds/DsProfileSettings;)I
    .locals 7
    .param p1, "baValue"    # [B
    .param p2, "index"    # I
    .param p3, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 696
    const-string v5, "arnb"

    invoke-virtual {p3, v5}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v4

    .line 697
    .local v4, "arnb":[I
    const-string v5, "arbf"

    invoke-virtual {p3, v5}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    .line 698
    .local v0, "arbf":[I
    const-string v5, "arbl"

    invoke-virtual {p3, v5}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v3

    .line 699
    .local v3, "arbl":[I
    const-string v5, "arbh"

    invoke-virtual {p3, v5}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v1

    .line 700
    .local v1, "arbh":[I
    const-string v5, "arbi"

    invoke-virtual {p3, v5}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v2

    .line 703
    .local v2, "arbi":[I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 705
    const v5, 0x73627261

    invoke-static {v5, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 707
    array-length v5, v4

    array-length v6, v0

    add-int/2addr v5, v6

    array-length v6, v3

    add-int/2addr v5, v6

    array-length v6, v1

    add-int/2addr v5, v6

    array-length v6, v2

    add-int/2addr v5, v6

    invoke-static {v5, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 709
    invoke-static {v4, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 710
    invoke-static {v0, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 711
    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 712
    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 713
    invoke-static {v2, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 714
    return p2
.end method

.method addDap2ParamDfsa([BILcom/atmos/ds/DsProfileSettings;)I
    .locals 2
    .param p1, "baValue"    # [B
    .param p2, "index"    # I
    .param p3, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 724
    const-string v1, "dssa"

    invoke-virtual {p3, v1}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    .line 727
    .local v0, "dssa":[I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 729
    const v1, 0x61736664

    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 731
    const/4 v1, 0x1

    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 733
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 734
    return p2
.end method

.method addDap2ParamDvme([BILcom/atmos/ds/DsProfileSettings;)I
    .locals 5
    .param p1, "baValue"    # [B
    .param p2, "index"    # I
    .param p3, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 744
    const-string v3, "dvme"

    invoke-virtual {p3, v3}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 746
    .local v1, "dvme":I
    sget-object v3, Lcom/atmos/ds/DsEffect;->kDvmeEnabledDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 749
    .local v0, "dev":I
    invoke-static {v0, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 751
    const v3, 0x656d7664

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 753
    const/4 v3, 0x1

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 755
    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 756
    goto :goto_0

    .line 757
    .end local v0    # "dev":I
    :cond_0
    return p2
.end method

.method addDap2ParamGebs([BILcom/atmos/ds/DsProfileSettings;)I
    .locals 5
    .param p1, "baValue"    # [B
    .param p2, "index"    # I
    .param p3, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 626
    const-string v3, "genb"

    invoke-virtual {p3, v3}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v2

    .line 627
    .local v2, "genb":[I
    const-string v3, "gebf"

    invoke-virtual {p3, v3}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    .line 628
    .local v0, "gebf":[I
    const-string v3, "gebg"

    invoke-virtual {p3, v3}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v1

    .line 630
    .local v1, "gebg":[I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 632
    const v3, 0x73626567

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 634
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 636
    invoke-static {v2, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 637
    invoke-static {v0, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 638
    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 639
    return p2
.end method

.method addDap2ParamIebs([BILcom/atmos/ds/DsProfileSettings;)I
    .locals 5
    .param p1, "baValue"    # [B
    .param p2, "index"    # I
    .param p3, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 603
    const-string v3, "ienb"

    invoke-virtual {p3, v3}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v2

    .line 604
    .local v2, "ienb":[I
    const-string v3, "iebf"

    invoke-virtual {p3, v3}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    .line 605
    .local v0, "iebf":[I
    const-string v3, "iebt"

    invoke-virtual {p3, v3}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v1

    .line 607
    .local v1, "iebt":[I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 609
    const v3, 0x73626569

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 611
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v3, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 613
    invoke-static {v2, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 614
    invoke-static {v0, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 615
    invoke-static {v1, p1, p2}, Lcom/atmos/ds/DsEffect;->int32ArrayToByteArray([I[BI)I

    move-result v3

    add-int/2addr p2, v3

    .line 616
    return p2
.end method

.method addDap2ProfileParams([BILcom/atmos/ds/DsProfileSettings;)I
    .locals 0
    .param p1, "baValue"    # [B
    .param p2, "index"    # I
    .param p3, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 777
    invoke-virtual {p0, p1, p2, p3}, Lcom/atmos/ds/DsEffect;->addDap2ParamIebs([BILcom/atmos/ds/DsProfileSettings;)I

    move-result p2

    .line 778
    invoke-virtual {p0, p1, p2, p3}, Lcom/atmos/ds/DsEffect;->addDap2ParamGebs([BILcom/atmos/ds/DsProfileSettings;)I

    move-result p2

    .line 779
    invoke-virtual {p0, p1, p2, p3}, Lcom/atmos/ds/DsEffect;->addDap2ParamAobs([BILcom/atmos/ds/DsProfileSettings;)I

    move-result p2

    .line 780
    invoke-virtual {p0, p1, p2, p3}, Lcom/atmos/ds/DsEffect;->addDap2ParamArbs([BILcom/atmos/ds/DsProfileSettings;)I

    move-result p2

    .line 781
    invoke-virtual {p0, p1, p2, p3}, Lcom/atmos/ds/DsEffect;->addDap2ParamDfsa([BILcom/atmos/ds/DsProfileSettings;)I

    move-result p2

    .line 782
    invoke-virtual {p0, p1, p2, p3}, Lcom/atmos/ds/DsEffect;->addDap2ParamDvme([BILcom/atmos/ds/DsProfileSettings;)I

    move-result p2

    .line 783
    return p2
.end method

.method public defineProfile(ILcom/atmos/ds/DsProfileSettings;)I
    .locals 13
    .param p1, "id"    # I
    .param p2, "profile"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 387
    const-string v10, "DsEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "defineProfile: profile index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    sget-object v10, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 395
    .local v8, "params":[Ljava/lang/Object;
    array-length v5, v8

    .line 396
    .local v5, "nParams":I
    invoke-virtual {p2}, Lcom/atmos/ds/DsProfileSettings;->getAllSettings()Lcom/atmos/ds/DsAkSettings;

    move-result-object v0

    .line 397
    .local v0, "akSettings":Lcom/atmos/ds/DsAkSettings;
    const/4 v3, 0x0

    .line 398
    .local v3, "index":I
    mul-int/lit8 v10, v5, 0x8

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v0}, Lcom/atmos/ds/DsAkSettings;->getValues()[I

    move-result-object v11

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    new-array v1, v10, [B

    .line 400
    .local v1, "baValue":[B
    invoke-static {p1, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 402
    invoke-static {v5, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 403
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 406
    aget-object v10, v8, v2

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/atmos/ds/DsAkSettings;->getAkParamId(Ljava/lang/String;)I

    move-result v7

    .line 407
    .local v7, "paramId":I
    invoke-static {v7, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 409
    aget-object v10, v8, v2

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    .line 410
    .local v4, "length":I
    invoke-static {v4, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 411
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 413
    aget-object v10, v8, v2

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10, v6}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 411
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 403
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    .end local v4    # "length":I
    .end local v6    # "offset":I
    .end local v7    # "paramId":I
    :cond_1
    const/4 v10, 0x5

    invoke-virtual {p0, v10, v1}, Lcom/atmos/ds/DsEffect;->setParameter(I[B)I

    move-result v9

    .line 417
    .local v9, "status":I
    if-eqz v9, :cond_2

    .line 419
    const-string v10, "DsEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "defineProfile: Fail to define profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .end local v9    # "status":I
    :goto_2
    return v9

    .restart local v9    # "status":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method getDap2ParamAobsSize(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 4
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    const/4 v3, 0x0

    .line 657
    const-string v2, "aonb"

    invoke-virtual {p1, v2}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v2

    aget v1, v2, v3

    .line 658
    .local v1, "aonb":I
    const-string v2, "aocc"

    invoke-virtual {p1, v2}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v2

    aget v0, v2, v3

    .line 659
    .local v0, "aocc":I
    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x4

    return v2
.end method

.method getDap2ParamArbsSize(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 2
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 691
    const-string v0, "arnb"

    invoke-virtual {p1, v0}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method getDap2ParamDfsaSize(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 1
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 719
    const/4 v0, 0x4

    return v0
.end method

.method getDap2ParamDvmeSize(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 1
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 739
    sget-object v0, Lcom/atmos/ds/DsEffect;->kDvmeEnabledDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method getDap2ParamGebsSize(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 2
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 621
    const-string v0, "genb"

    invoke-virtual {p1, v0}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method getDap2ParamIebsSize(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 2
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 598
    const-string v0, "ienb"

    invoke-virtual {p1, v0}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method getDap2ProfileParamsSize(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 2
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ParamIebsSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ParamGebsSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ParamArbsSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ParamAobsSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ParamDfsaSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ParamDvmeSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v0

    return v0
.end method

.method getNumDap2ProfileParams()I
    .locals 1

    .prologue
    .line 762
    sget-object v0, Lcom/atmos/ds/DsEffect;->kDvmeEnabledDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public getOffType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 867
    const/4 v1, 0x0

    .line 868
    .local v1, "count":I
    const/4 v2, 0x0

    .line 874
    .local v2, "offType":I
    new-array v0, v3, [B

    .line 875
    .local v0, "baValue":[B
    invoke-virtual {p0, v3, v0}, Lcom/atmos/ds/DsEffect;->getParameter(I[B)I

    move-result v1

    .line 876
    if-eq v1, v3, :cond_0

    .line 878
    const-string v3, "DsEffect"

    const-string v4, "getOffType: Error in getting the effect off type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Wrong processing of EFFECT_PARAM_OFF_TYPE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 883
    :cond_0
    invoke-static {v0}, Lcom/atmos/ds/DsEffect;->byteArrayToInt32([B)I

    move-result v2

    .line 886
    return v2
.end method

.method public getParameter(I[B)I
    .locals 4
    .param p1, "param"    # I
    .param p2, "baValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, "count":I
    iget-object v1, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v1, p1, p2}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v0

    .line 454
    const-string v1, "DsEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameter param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", baValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/atmos/ds/DsEffect;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "DsEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameter returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 849
    const/16 v3, 0x20

    .line 850
    .local v3, "verLen":I
    new-array v4, v3, [B

    .line 851
    .local v4, "version":[B
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4}, Lcom/atmos/ds/DsEffect;->getParameter(I[B)I

    .line 852
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 854
    .local v1, "strFull":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 855
    .local v0, "endPos":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v6, v0}, Ljava/lang/String;-><init>([BII)V

    .line 856
    .local v2, "strVer":Ljava/lang/String;
    return-object v2
.end method

.method public getVisualizerData()[I
    .locals 5

    .prologue
    .line 522
    const-string v3, "DsEffect"

    const-string v4, "getVisualizerData"

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    .line 529
    .local v0, "count":I
    const-string v3, "vcbg"

    invoke-static {v3}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    const-string v4, "vcbe"

    invoke-static {v4}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    add-int v1, v3, v4

    .line 530
    .local v1, "numVisualizerData":I
    mul-int/lit8 v3, v1, 0x4

    new-array v2, v3, [B

    .line 532
    .local v2, "visualizerData":[B
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/atmos/ds/DsEffect;->getParameter(I[B)I

    move-result v0

    .line 533
    array-length v3, v2

    if-eq v0, v3, :cond_0

    .line 535
    const/4 v3, 0x0

    .line 538
    :goto_0
    return-object v3

    :cond_0
    invoke-static {v2}, Lcom/atmos/ds/DsEffect;->byteArrayToInt32Array([B)[I

    move-result-object v3

    goto :goto_0
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 258
    return-void
.end method

.method sendDap2Gebs(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 3
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 644
    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ParamGebsSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-array v0, v2, [B

    .line 646
    .local v0, "baValue":[B
    const/4 v1, 0x0

    .line 648
    .local v1, "index":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v0, v1}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 650
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 651
    invoke-virtual {p0, v0, v1, p1}, Lcom/atmos/ds/DsEffect;->addDap2ParamGebs([BILcom/atmos/ds/DsProfileSettings;)I

    move-result v1

    .line 652
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/atmos/ds/DsEffect;->setParameter(I[B)I

    move-result v2

    return v2
.end method

.method public setAllProfileSettings(Lcom/atmos/ds/DsProfileSettings;)I
    .locals 13
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 796
    const-string v10, "DsEffect"

    const-string v11, "setAllProfileSettings"

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lcom/atmos/ds/DsProfileSettings;->getAllSettings()Lcom/atmos/ds/DsAkSettings;

    move-result-object v0

    .line 803
    .local v0, "akSettings":Lcom/atmos/ds/DsAkSettings;
    sget-object v10, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 805
    .local v8, "params":[Ljava/lang/Object;
    array-length v10, v8

    invoke-virtual {p0}, Lcom/atmos/ds/DsEffect;->getNumDap2ProfileParams()I

    move-result v11

    add-int v5, v10, v11

    .line 806
    .local v5, "nParams":I
    mul-int/lit8 v10, v5, 0xc

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v0}, Lcom/atmos/ds/DsAkSettings;->getValues()[I

    move-result-object v11

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->getDap2ProfileParamsSize(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v11

    add-int/2addr v10, v11

    new-array v1, v10, [B

    .line 810
    .local v1, "baValue":[B
    const/4 v3, 0x0

    .line 812
    .local v3, "index":I
    invoke-static {v12, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 814
    invoke-static {v5, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 815
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v8

    if-ge v2, v10, :cond_1

    .line 818
    invoke-static {v12, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 820
    aget-object v10, v8, v2

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/atmos/ds/DsAkSettings;->getAkParamId(Ljava/lang/String;)I

    move-result v7

    .line 821
    .local v7, "paramId":I
    invoke-static {v7, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 823
    aget-object v10, v8, v2

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    .line 824
    .local v4, "length":I
    invoke-static {v4, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 825
    const/4 v6, 0x0

    .local v6, "offset":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 827
    aget-object v10, v8, v2

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10, v6}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10, v1, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v10

    add-int/2addr v3, v10

    .line 825
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 815
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    .end local v4    # "length":I
    .end local v6    # "offset":I
    .end local v7    # "paramId":I
    :cond_1
    invoke-virtual {p0, v1, v3, p1}, Lcom/atmos/ds/DsEffect;->addDap2ProfileParams([BILcom/atmos/ds/DsProfileSettings;)I

    move-result v3

    .line 831
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v1}, Lcom/atmos/ds/DsEffect;->setParameter(I[B)I

    move-result v9

    .line 832
    .local v9, "result":I
    if-eqz v9, :cond_2

    .line 834
    const-string v10, "DsEffect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setAllProfileSettings(): Received error code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from effect"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_2
    return v9
.end method

.method public setEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setParameter(I[B)I
    .locals 3
    .param p1, "param"    # I
    .param p2, "baValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 436
    const-string v0, "DsEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter param:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", baValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/atmos/ds/DsEffect;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/atmos/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result v0

    return v0
.end method

.method public setSingleSetting(Lcom/atmos/ds/DsProfileSettings;Ljava/lang/String;)I
    .locals 11
    .param p1, "settings"    # Lcom/atmos/ds/DsProfileSettings;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p1, p2}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I

    move-result-object v7

    .line 557
    .local v7, "values":[I
    const-string v8, "DsEffect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSingleSetting: parameter "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", length "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/4 v8, 0x0

    invoke-static {p2, v8}, Lcom/atmos/ds/DsAkSettings;->getAkSettingIndex(Ljava/lang/String;I)I

    move-result v1

    .line 559
    .local v1, "begin":I
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    invoke-static {p2, v8}, Lcom/atmos/ds/DsAkSettings;->getAkSettingIndex(Ljava/lang/String;I)I

    move-result v2

    .line 560
    .local v2, "end":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    .line 562
    :cond_0
    const-string v8, "DsEffect"

    const-string v9, "Attempt to set disallowed parameter and offset combination"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v6, -0x5

    .line 593
    :cond_1
    :goto_0
    return v6

    .line 565
    :cond_2
    invoke-static {p2}, Lcom/atmos/ds/DsAkSettings;->getAkParamId(Ljava/lang/String;)I

    move-result v5

    .line 570
    .local v5, "paramId":I
    array-length v8, v7

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, 0x14

    new-array v0, v8, [B

    .line 571
    .local v0, "baValue":[B
    const/4 v3, 0x0

    .line 576
    .local v3, "index":I
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8, v0, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v8

    add-int/2addr v3, v8

    .line 578
    const/4 v8, 0x1

    invoke-static {v8, v0, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v8

    add-int/2addr v3, v8

    .line 580
    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8, v0, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v8

    add-int/2addr v3, v8

    .line 582
    invoke-static {v5, v0, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v8

    add-int/2addr v3, v8

    .line 584
    array-length v8, v7

    invoke-static {v8, v0, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v8

    add-int/2addr v3, v8

    .line 586
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 587
    aget v8, v7, v4

    invoke-static {v8, v0, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    move-result v8

    add-int/2addr v3, v8

    .line 586
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 588
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/atmos/ds/DsEffect;->setParameter(I[B)I

    move-result v6

    .line 589
    .local v6, "result":I
    if-nez v6, :cond_1

    const-string v8, "gebg"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 593
    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsEffect;->sendDap2Gebs(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v6

    goto :goto_0
.end method

.method public setVisualizerOn(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 471
    const-string v4, "DsEffect"

    const-string v5, "setVisualizerOn"

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    if-eqz p1, :cond_0

    move v1, v2

    .line 478
    .local v1, "on":I
    :goto_0
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 479
    .local v0, "baValue":[B
    invoke-static {v1, v0, v3}, Lcom/atmos/ds/DsEffect;->int32ToByteArray(I[BI)I

    .line 480
    invoke-virtual {p0, v2, v0}, Lcom/atmos/ds/DsEffect;->setParameter(I[B)I

    move-result v2

    return v2

    .end local v0    # "baValue":[B
    .end local v1    # "on":I
    :cond_0
    move v1, v3

    .line 472
    goto :goto_0
.end method
