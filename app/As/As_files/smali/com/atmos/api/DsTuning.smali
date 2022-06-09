.class public Lcom/atmos/api/DsTuning;
.super Lcom/atmos/api/DsBase;
.source "DsTuning.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/atmos/api/DsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abandonAccessRight()I
    .locals 3

    .prologue
    .line 69
    const/4 v1, -0x6

    .line 72
    .local v1, "error":I
    const/4 v2, 0x4

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsBase;->abandonAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "abandonAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsTuning;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic abandonAccessRight(I)I
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/atmos/api/DsBase;->abandonAccessRight(I)I

    move-result v0

    return v0
.end method

.method public activateTuning(ILjava/lang/String;)I
    .locals 4
    .param p1, "endpointPort"    # I
    .param p2, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v1, -0x6

    .line 126
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsTuning;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsTuning;->clientHandle_:I

    invoke-interface {v2, v3, p1, p2}, Lcom/atmos/api/IDs;->iActivateTuning(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 134
    new-instance v2, Lcom/atmos/api/DsAccessException;

    const-string v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "activateTuning"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsTuning;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsTuning;->convertErrorCodeToException(I)V

    .line 140
    return v1
.end method

.method public checkAccessRight()I
    .locals 3

    .prologue
    .line 88
    const/4 v1, -0x1

    .line 91
    .local v1, "ret_val":I
    const/4 v2, 0x4

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsBase;->checkAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "checkAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsTuning;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic checkAccessRight(I)I
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/atmos/api/DsBase;->checkAccessRight(I)I

    move-result v0

    return v0
.end method

.method public deactivateTuning(ILjava/lang/String;)I
    .locals 4
    .param p1, "endpointPort"    # I
    .param p2, "productId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v1, -0x6

    .line 159
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsTuning;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsTuning;->clientHandle_:I

    invoke-interface {v2, v3, p1, p2}, Lcom/atmos/api/IDs;->iDeactivateTuning(IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 167
    new-instance v2, Lcom/atmos/api/DsAccessException;

    const-string v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "deactivateTuning"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsTuning;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsTuning;->convertErrorCodeToException(I)V

    .line 173
    return v1
.end method

.method public bridge synthetic getApiVersion()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/atmos/api/DsBase;->getApiVersion()I

    move-result v0

    return v0
.end method

.method public getAvailableAccessRight()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic getDsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/atmos/api/DsBase;->getDsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic registerClient(Landroid/content/Context;Lcom/atmos/api/IDsAccessEvents;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/atmos/api/IDsAccessEvents;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/atmos/api/DsBase;->registerClient(Landroid/content/Context;Lcom/atmos/api/IDsAccessEvents;)Z

    move-result v0

    return v0
.end method

.method public requestAccessRight()I
    .locals 3

    .prologue
    .line 49
    const/4 v1, -0x6

    .line 52
    .local v1, "error":I
    const/4 v2, 0x4

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsBase;->requestAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 58
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "requestAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsTuning;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic requestAccessRight(I)I
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/atmos/api/DsBase;->requestAccessRight(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic unregisterClient()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/atmos/api/DsBase;->unregisterClient()V

    return-void
.end method
