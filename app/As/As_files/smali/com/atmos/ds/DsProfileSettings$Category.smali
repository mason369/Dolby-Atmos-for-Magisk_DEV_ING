.class public final enum Lcom/atmos/ds/DsProfileSettings$Category;
.super Ljava/lang/Enum;
.source "DsProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/ds/DsProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/atmos/ds/DsProfileSettings$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/atmos/ds/DsProfileSettings$Category;

.field private static final CATEGORY:[Lcom/atmos/ds/DsProfileSettings$Category;

.field public static final enum CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

.field public static final enum GAME:Lcom/atmos/ds/DsProfileSettings$Category;

.field public static final enum MOVIE:Lcom/atmos/ds/DsProfileSettings$Category;

.field public static final enum MUSIC:Lcom/atmos/ds/DsProfileSettings$Category;

.field private static final NAME:[Ljava/lang/String;

.field public static final enum VOICE:Lcom/atmos/ds/DsProfileSettings$Category;


# instance fields
.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/atmos/ds/DsProfileSettings$Category;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v2, v2}, Lcom/atmos/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->MUSIC:Lcom/atmos/ds/DsProfileSettings$Category;

    .line 46
    new-instance v0, Lcom/atmos/ds/DsProfileSettings$Category;

    const-string v1, "MOVIE"

    invoke-direct {v0, v1, v3, v3}, Lcom/atmos/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->MOVIE:Lcom/atmos/ds/DsProfileSettings$Category;

    .line 47
    new-instance v0, Lcom/atmos/ds/DsProfileSettings$Category;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v4, v4}, Lcom/atmos/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->GAME:Lcom/atmos/ds/DsProfileSettings$Category;

    .line 48
    new-instance v0, Lcom/atmos/ds/DsProfileSettings$Category;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v5, v5}, Lcom/atmos/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->VOICE:Lcom/atmos/ds/DsProfileSettings$Category;

    .line 49
    new-instance v0, Lcom/atmos/ds/DsProfileSettings$Category;

    const-string v1, "CUSTOMIZED"

    invoke-direct {v0, v1, v6, v6}, Lcom/atmos/ds/DsProfileSettings$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/atmos/ds/DsProfileSettings$Category;

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->MUSIC:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->MOVIE:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->GAME:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->VOICE:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v6

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->$VALUES:[Lcom/atmos/ds/DsProfileSettings$Category;

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Music"

    aput-object v1, v0, v2

    const-string v1, "Movie"

    aput-object v1, v0, v3

    const-string v1, "Game"

    aput-object v1, v0, v4

    const-string v1, "Voice"

    aput-object v1, v0, v5

    const-string v1, "Customized"

    aput-object v1, v0, v6

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->NAME:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/atmos/ds/DsProfileSettings$Category;

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->MUSIC:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->MOVIE:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->GAME:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->VOICE:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/atmos/ds/DsProfileSettings$Category;->CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

    aput-object v1, v0, v6

    sput-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->CATEGORY:[Lcom/atmos/ds/DsProfileSettings$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/atmos/ds/DsProfileSettings$Category;->value_:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/atmos/ds/DsProfileSettings$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/atmos/ds/DsProfileSettings$Category;

    return-object v0
.end method

.method public static values()[Lcom/atmos/ds/DsProfileSettings$Category;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->$VALUES:[Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-virtual {v0}, [Lcom/atmos/ds/DsProfileSettings$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/atmos/ds/DsProfileSettings$Category;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/atmos/ds/DsProfileSettings$Category;->NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/atmos/ds/DsProfileSettings$Category;->value_:I

    aget-object v0, v0, v1

    return-object v0
.end method
