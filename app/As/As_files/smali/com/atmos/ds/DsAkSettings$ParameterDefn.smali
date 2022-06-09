.class public Lcom/atmos/ds/DsAkSettings$ParameterDefn;
.super Ljava/lang/Object;
.source "DsAkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/ds/DsAkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterDefn"
.end annotation


# instance fields
.field public len:I

.field public lowerBound:I

.field public paramName:Ljava/lang/String;

.field public upperBound:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "lowerBound"    # I
    .param p4, "upperBound"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    .line 43
    iput p3, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->lowerBound:I

    .line 44
    iput p4, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->upperBound:I

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v0, p1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    if-nez v0, :cond_0

    .line 55
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    iget-object v0, v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    iget-object v2, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    iget v0, v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    iget v2, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->len:I

    if-ne v0, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    iget v0, v0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->lowerBound:I

    iget v2, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->lowerBound:I

    if-ne v0, v2, :cond_1

    check-cast p1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;

    .end local p1    # "other":Ljava/lang/Object;
    iget v0, p1, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->upperBound:I

    iget v2, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->upperBound:I

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
    .line 62
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->access$000()Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/atmos/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
