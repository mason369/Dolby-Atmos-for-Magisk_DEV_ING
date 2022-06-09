.class public Lcom/atmos/daxappCoreUI/DsClientSettings;
.super Ljava/lang/Object;
.source "DsClientSettings.java"


# static fields
.field public static final INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;


# instance fields
.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/atmos/daxappCoreUI/DsClientSettings;

    invoke-direct {v0}, Lcom/atmos/daxappCoreUI/DsClientSettings;-><init>()V

    sput-object v0, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    return-void
.end method

.method private requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z
    .locals 3
    .param p1, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "success":Z
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDialogEnhancerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z
    .locals 3
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    sget-object v2, Lcom/atmos/api/DsParams;->DialogEnhancementEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v2}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/atmos/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    .line 97
    .local v0, "values":[I
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGeqOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z
    .locals 3
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v2}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/atmos/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    .line 67
    .local v0, "values":[I
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getGraphicEqualizerBandGains(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)[I
    .locals 1
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/atmos/api/DsParams;->GraphicEqualizerBandGains:Lcom/atmos/api/DsParams;

    invoke-virtual {v0}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/atmos/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getHeadphoneVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z
    .locals 3
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    sget-object v2, Lcom/atmos/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/atmos/api/DsParams;

    invoke-virtual {v2}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/atmos/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    .line 157
    .local v0, "values":[I
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIeqPreset(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)I
    .locals 1
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, -0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/atmos/api/DsGlobalEx;->getIeqPreset()I

    move-result v0

    goto :goto_0
.end method

.method public getSpeakerVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z
    .locals 3
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/atmos/api/DsParams;

    invoke-virtual {v2}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/atmos/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    .line 187
    .local v0, "values":[I
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getVolumeLevellerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z
    .locals 3
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v2}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/atmos/api/DsGlobalEx;->getParameter(I)[I

    move-result-object v0

    .line 127
    .local v0, "values":[I
    aget v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setDialogEnhancerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z
    .locals 5
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    invoke-direct {p0, p2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_1
    aput v1, v4, v2

    .line 81
    :try_start_0
    sget-object v1, Lcom/atmos/api/DsParams;->DialogEnhancementEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v1}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/atmos/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 88
    goto :goto_0

    :cond_2
    move v1, v3

    .line 79
    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGeqOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z
    .locals 5
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v2

    .line 45
    :cond_1
    invoke-direct {p0, p2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_1
    aput v1, v4, v2

    .line 51
    :try_start_0
    sget-object v1, Lcom/atmos/api/DsParams;->GraphicEqualizerEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v1}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/atmos/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 58
    goto :goto_0

    :cond_2
    move v1, v3

    .line 49
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setGraphicEqualizerBandGains(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;[I)Z
    .locals 3
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p3, "values"    # [I

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    invoke-direct {p0, p2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    :try_start_0
    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerBandGains:Lcom/atmos/api/DsParams;

    invoke-virtual {v2}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v2

    invoke-virtual {p2, v2, p3}, Lcom/atmos/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setHeadphoneVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z
    .locals 5
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 135
    :cond_1
    invoke-direct {p0, p2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_1
    aput v1, v4, v2

    .line 141
    :try_start_0
    sget-object v1, Lcom/atmos/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/atmos/api/DsParams;

    invoke-virtual {v1}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/atmos/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 148
    goto :goto_0

    :cond_2
    move v1, v3

    .line 139
    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIeqPreset(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;I)Z
    .locals 3
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p3, "ieq"    # I

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    invoke-direct {p0, p2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {p2, p3}, Lcom/atmos/api/DsGlobalEx;->setIeqPreset(I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const/4 v1, 0x1

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSpeakerVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z
    .locals 5
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    invoke-direct {p0, p2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_1
    aput v1, v4, v2

    .line 171
    :try_start_0
    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/atmos/api/DsParams;

    invoke-virtual {v1}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/atmos/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 178
    goto :goto_0

    :cond_2
    move v1, v3

    .line 169
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolumeLevellerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z
    .locals 5
    .param p1, "activity"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p3, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 105
    :cond_1
    invoke-direct {p0, p2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->requestDsAccessRight(Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    if-nez p3, :cond_2

    move v1, v2

    :goto_1
    aput v1, v4, v2

    .line 111
    :try_start_0
    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v1}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v1

    iget-object v4, p0, Lcom/atmos/daxappCoreUI/DsClientSettings;->mValues:[I

    invoke-virtual {p2, v1, v4}, Lcom/atmos/api/DsGlobalEx;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 118
    goto :goto_0

    :cond_2
    move v1, v3

    .line 109
    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method
