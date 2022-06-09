.class public Lcom/atmos/api/DsGlobalEx;
.super Lcom/atmos/api/DsGlobal;
.source "DsGlobalEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/atmos/api/DsGlobal;-><init>()V

    return-void
.end method


# virtual methods
.method public getProfileName(I)Lcom/atmos/api/DsProfileName;
    .locals 6
    .param p1, "profile"    # I

    .prologue
    .line 122
    const/4 v1, -0x6

    .line 123
    .local v1, "error":I
    const/4 v4, 0x1

    new-array v3, v4, [Lcom/atmos/api/DsProfileName;

    .line 124
    .local v3, "paramName":[Lcom/atmos/api/DsProfileName;
    const/4 v2, 0x0

    .line 128
    .local v2, "name":Lcom/atmos/api/DsProfileName;
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsGlobalEx;->iDs_:Lcom/atmos/api/IDs;

    iget v5, p0, Lcom/atmos/api/DsGlobalEx;->clientHandle_:I

    invoke-interface {v4, v5, p1, v3}, Lcom/atmos/api/IDs;->iGetProfileName(II[Lcom/atmos/api/DsProfileName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsGlobalEx;->convertErrorCodeToException(I)V

    .line 135
    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 136
    return-object v2

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "getIeqPreset"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsGlobalEx;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProfileName(ILcom/atmos/api/DsProfileName;)I
    .locals 4
    .param p1, "profile"    # I
    .param p2, "name"    # Lcom/atmos/api/DsProfileName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, -0x6

    .line 94
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsGlobalEx;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsGlobalEx;->clientHandle_:I

    invoke-interface {v2, v3, p1, p2}, Lcom/atmos/api/IDs;->iSetProfileName(IILcom/atmos/api/DsProfileName;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 102
    new-instance v2, Lcom/atmos/api/DsAccessException;

    const-string v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setProfileName"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsGlobalEx;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsGlobalEx;->convertErrorCodeToException(I)V

    .line 108
    return v1
.end method
