.class public Lcom/atmos/api/DsTuningProviderContent;
.super Ljava/lang/Object;
.source "DsTuningProviderContent.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.atmos.dax.api.TuningProvider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TNAME:Ljava/lang/String; = "tunings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.atmos.dax.api.TuningProvider/tunings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/atmos/api/DsTuningProviderContent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
