.class public Lcom/atmos/daxappUI/Assets;
.super Ljava/lang/Object;
.source "Assets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/daxappUI/Assets$1;,
        Lcom/atmos/daxappUI/Assets$FontType;
    }
.end annotation


# static fields
.field private static sFontLight:Landroid/graphics/Typeface;

.field private static sFontMedium:Landroid/graphics/Typeface;

.field private static sFontRegular:Landroid/graphics/Typeface;


# direct methods
.method public static final getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "type"    # Lcom/atmos/daxappUI/Assets$FontType;

    .prologue
    .line 38
    sget-object v0, Lcom/atmos/daxappUI/Assets$1;->$SwitchMap$com$dolby$daxappUI$Assets$FontType:[I

    invoke-virtual {p0}, Lcom/atmos/daxappUI/Assets$FontType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    sget-object v0, Lcom/atmos/daxappUI/Assets;->sFontRegular:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/atmos/daxappUI/Assets;->sFontLight:Landroid/graphics/Typeface;

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v0, Lcom/atmos/daxappUI/Assets;->sFontMedium:Landroid/graphics/Typeface;

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/atmos/daxappUI/Assets;->sFontRegular:Landroid/graphics/Typeface;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/atmos/daxappUI/Assets;->sFontLight:Landroid/graphics/Typeface;

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Roboto-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/atmos/daxappUI/Assets;->sFontMedium:Landroid/graphics/Typeface;

    .line 34
    return-void
.end method
