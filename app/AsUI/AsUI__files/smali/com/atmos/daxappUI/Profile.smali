.class public Lcom/atmos/daxappUI/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field private mIconDisabled:I

.field private mIconNormal:I

.field private mIconSelected:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "iconSelected"    # I
    .param p2, "iconNormal"    # I
    .param p3, "iconDisabled"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/atmos/daxappUI/Profile;->mIconSelected:I

    .line 20
    iput p2, p0, Lcom/atmos/daxappUI/Profile;->mIconNormal:I

    .line 21
    iput p3, p0, Lcom/atmos/daxappUI/Profile;->mIconDisabled:I

    .line 22
    return-void
.end method


# virtual methods
.method public getIcon(ZZ)I
    .locals 1
    .param p1, "selected"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 25
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/atmos/daxappUI/Profile;->mIconSelected:I

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/atmos/daxappUI/Profile;->mIconNormal:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/atmos/daxappUI/Profile;->mIconDisabled:I

    goto :goto_0
.end method
