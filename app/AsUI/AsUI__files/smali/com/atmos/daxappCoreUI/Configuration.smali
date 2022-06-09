.class public Lcom/atmos/daxappCoreUI/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static dynamicInstance:Lcom/atmos/daxappCoreUI/Configuration;


# instance fields
.field private maxEditGain:F

.field private maxEditGain_DS2:I

.field private minEditGain:F

.field private minEditGain_DS2:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const v5, 0x7fffffff

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v2, -0x3ec00000    # -12.0f

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    .line 25
    const/high16 v2, 0x41400000    # 12.0f

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain:F

    .line 81
    const/16 v2, -0xc

    sget v3, Lcom/atmos/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain_DS2:I

    .line 82
    const/16 v2, 0xc

    sget v3, Lcom/atmos/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain:F

    .line 32
    iget v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    float-to-int v2, v2

    sget v3, Lcom/atmos/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain_DS2:I

    .line 33
    iget v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain:F

    float-to-int v2, v2

    sget v3, Lcom/atmos/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v2, v3

    iput v2, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain_DS2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    iput v4, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    .line 36
    iput v4, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain:F

    .line 38
    iput v5, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain_DS2:I

    .line 39
    iput v5, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    .line 40
    const-string v2, "DsUI::MainActivity"

    const-string v3, "Some of values from configuration.xml were not float type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "npe":Ljava/lang/NullPointerException;
    iput v4, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    .line 43
    iput v4, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain:F

    .line 45
    iput v5, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain_DS2:I

    .line 46
    iput v5, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    .line 47
    const-string v2, "DsUI::MainActivity"

    const-string v3, "Some of values from configuration.xml were not loaded!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/atmos/daxappCoreUI/Configuration;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lcom/atmos/daxappCoreUI/Configuration;->dynamicInstance:Lcom/atmos/daxappCoreUI/Configuration;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/atmos/daxappCoreUI/Configuration;

    invoke-direct {v0, p0}, Lcom/atmos/daxappCoreUI/Configuration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/atmos/daxappCoreUI/Configuration;->dynamicInstance:Lcom/atmos/daxappCoreUI/Configuration;

    .line 61
    :cond_0
    sget-object v0, Lcom/atmos/daxappCoreUI/Configuration;->dynamicInstance:Lcom/atmos/daxappCoreUI/Configuration;

    return-object v0
.end method


# virtual methods
.method public getMaxEditGain()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/high16 v0, 0x41400000    # 12.0f

    .line 68
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain:F

    goto :goto_0
.end method

.method public getMaxEditGain_DS2()I
    .locals 2

    .prologue
    .line 85
    const v0, 0x7fffffff

    iget v1, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    if-ne v0, v1, :cond_0

    .line 86
    const/16 v0, 0xc

    .line 88
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/atmos/daxappCoreUI/Configuration;->maxEditGain_DS2:I

    goto :goto_0
.end method

.method public getMinEditGain()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/high16 v0, -0x3ec00000    # -12.0f

    .line 75
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    goto :goto_0
.end method

.method public getMinEditGain_DS2()I
    .locals 2

    .prologue
    .line 92
    const/high16 v0, 0x4f000000

    iget v1, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 93
    const/16 v0, -0xc

    .line 95
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/atmos/daxappCoreUI/Configuration;->minEditGain_DS2:I

    goto :goto_0
.end method
