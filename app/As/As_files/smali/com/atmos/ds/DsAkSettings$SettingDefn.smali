.class public Lcom/atmos/ds/DsAkSettings$SettingDefn;
.super Ljava/lang/Object;
.source "DsAkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/ds/DsAkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SettingDefn"
.end annotation


# instance fields
.field public offset:I

.field public parameter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/atmos/ds/DsAkSettings$SettingDefn;->parameter:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/atmos/ds/DsAkSettings$SettingDefn;->offset:I

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 81
    instance-of v0, p1, Lcom/atmos/ds/DsAkSettings$SettingDefn;

    if-nez v0, :cond_0

    .line 83
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/ds/DsAkSettings$SettingDefn;

    iget-object v0, v0, Lcom/atmos/ds/DsAkSettings$SettingDefn;->parameter:Ljava/lang/String;

    iget-object v2, p0, Lcom/atmos/ds/DsAkSettings$SettingDefn;->parameter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/atmos/ds/DsAkSettings$SettingDefn;

    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p1, Lcom/atmos/ds/DsAkSettings$SettingDefn;->offset:I

    iget v2, p0, Lcom/atmos/ds/DsAkSettings$SettingDefn;->offset:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/atmos/ds/DsAkSettings$SettingDefn;->parameter:Ljava/lang/String;

    invoke-static {v0}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->access$100()[Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    move-result-object v1

    array-length v1, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/atmos/ds/DsAkSettings$SettingDefn;->offset:I

    add-int/2addr v0, v1

    return v0
.end method
