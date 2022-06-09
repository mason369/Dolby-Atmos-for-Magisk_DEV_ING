.class public Lcom/atmos/api/DsFocus;
.super Lcom/atmos/api/DsBase;
.source "DsFocus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DsFocus"


# instance fields
.field protected bandCount_:I

.field protected callbacks_:Lcom/atmos/api/IDsCallbacks;

.field protected dsListener_:Lcom/atmos/api/IDsEvents;

.field protected excitations_:[F

.field protected gains_:[F

.field protected handler_:Landroid/os/Handler;

.field protected legacyClientListener_:Lcom/atmos/api/IDsLegacyClientEvents;

.field protected profileNameListener_:Lcom/atmos/api/IDsProfileNameEvents;

.field protected visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/atmos/api/DsBase;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    .line 58
    iput-object v1, p0, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    .line 64
    iput-object v1, p0, Lcom/atmos/api/DsFocus;->profileNameListener_:Lcom/atmos/api/IDsProfileNameEvents;

    .line 70
    iput-object v1, p0, Lcom/atmos/api/DsFocus;->legacyClientListener_:Lcom/atmos/api/IDsLegacyClientEvents;

    .line 77
    const/16 v0, 0x14

    iput v0, p0, Lcom/atmos/api/DsFocus;->bandCount_:I

    .line 83
    iput-object v1, p0, Lcom/atmos/api/DsFocus;->gains_:[F

    .line 89
    iput-object v1, p0, Lcom/atmos/api/DsFocus;->excitations_:[F

    .line 697
    new-instance v0, Lcom/atmos/api/DsFocus$1;

    invoke-direct {v0, p0}, Lcom/atmos/api/DsFocus$1;-><init>(Lcom/atmos/api/DsFocus;)V

    iput-object v0, p0, Lcom/atmos/api/DsFocus;->callbacks_:Lcom/atmos/api/IDsCallbacks;

    .line 793
    new-instance v0, Lcom/atmos/api/DsFocus$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/atmos/api/DsFocus$2;-><init>(Lcom/atmos/api/DsFocus;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/atmos/api/DsBase;->setConnectionInfo(I)V

    .line 98
    return-void
.end method


# virtual methods
.method public abandonAccessRight()I
    .locals 3

    .prologue
    .line 612
    const/4 v1, -0x6

    .line 615
    .local v1, "error":I
    const/4 v2, 0x1

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsBase;->abandonAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 621
    :goto_0
    return v1

    .line 617
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "abandonAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic abandonAccessRight(I)I
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/atmos/api/DsBase;->abandonAccessRight(I)I

    move-result v0

    return v0
.end method

.method public checkAccessRight()I
    .locals 3

    .prologue
    .line 631
    const/4 v1, -0x1

    .line 634
    .local v1, "ret_val":I
    const/4 v2, 0x1

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsBase;->checkAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 640
    :goto_0
    return v1

    .line 636
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "checkAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic checkAccessRight(I)I
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/atmos/api/DsBase;->checkAccessRight(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getApiVersion()I
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/atmos/api/DsBase;->getApiVersion()I

    move-result v0

    return v0
.end method

.method public getAvailableAccessRight()I
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getDsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/atmos/api/DsBase;->getDsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIeqPreset()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 408
    const/4 v3, 0x0

    .line 409
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 410
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 413
    .local v1, "error":I
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/atmos/api/IDs;->iGetIeqPreset(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 419
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 420
    aget v3, v2, v6

    .line 421
    return v3

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "getIeqPreset"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIeqPresetCount()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 353
    const/4 v3, 0x0

    .line 354
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 355
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 358
    .local v1, "error":I
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/atmos/api/IDs;->iGetIeqPresetCount(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 365
    aget v3, v2, v6

    .line 366
    return v3

    .line 360
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "getIeqPresetCount"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getParameter(I)[I
    .locals 8
    .param p1, "paramId"    # I

    .prologue
    const/4 v6, 0x1

    .line 320
    const/4 v5, 0x0

    .line 321
    .local v5, "ret_vals":[I
    new-array v2, v6, [I

    .line 322
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 325
    .local v1, "error":I
    :try_start_0
    iget-object v6, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    invoke-interface {v6, p1, v2}, Lcom/atmos/api/IDs;->iGetParamLength(I[I)I

    move-result v1

    .line 326
    if-nez v1, :cond_0

    .line 328
    const/4 v6, 0x1

    new-array v4, v6, [I

    .line 329
    .local v4, "profileInt":[I
    iget-object v6, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v4}, Lcom/atmos/api/IDs;->iGetProfile(I[I)I

    move-result v1

    .line 330
    if-nez v1, :cond_0

    .line 332
    const/4 v6, 0x0

    aget v3, v4, v6

    .line 333
    .local v3, "profile":I
    const/4 v6, 0x0

    aget v6, v2, v6

    new-array v5, v6, [I

    .line 334
    iget-object v6, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v3, p1, v5}, Lcom/atmos/api/IDs;->iGetParameter(III[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    .end local v3    # "profile":I
    .end local v4    # "profileInt":[I
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 343
    return-object v5

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "getParameter"

    invoke-virtual {p0, v0, v6}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProfile()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 486
    const/4 v3, 0x0

    .line 487
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 488
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 491
    .local v1, "error":I
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/atmos/api/IDs;->iGetProfile(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 497
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 498
    aget v3, v2, v6

    .line 499
    return v3

    .line 493
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "getProfile"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 431
    const/4 v3, 0x0

    .line 432
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 433
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 436
    .local v1, "error":I
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/atmos/api/IDs;->iGetProfileCount(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 442
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 443
    aget v3, v2, v6

    .line 444
    return v3

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "getProfileCount"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 256
    const/4 v3, -0x1

    .line 257
    .local v3, "ret_val":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 258
    .local v2, "paramInt":[I
    const/4 v1, 0x0

    .line 261
    .local v1, "error":I
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lcom/atmos/api/IDs;->iGetState(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 267
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 268
    aget v3, v2, v6

    .line 269
    return v3

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "getState"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMonoSpeaker()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 566
    const/4 v3, 0x0

    .line 567
    .local v3, "ret_val":Z
    const/4 v5, 0x1

    new-array v2, v5, [Z

    .line 568
    .local v2, "paramBoolean":[Z
    const/4 v1, 0x0

    .line 571
    .local v1, "error":I
    :try_start_0
    iget-object v5, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    invoke-interface {v5, v2}, Lcom/atmos/api/IDs;->iGetMonoSpeaker([Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 579
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 580
    aget-boolean v3, v2, v4

    move v4, v3

    .line 581
    :goto_0
    return v4

    .line 573
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "tag_dolby"

    const-string v6, "error in isMonoSpeaker(tag_she),"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isProfileSettingsModified(I)Z
    .locals 7
    .param p1, "profile"    # I

    .prologue
    const/4 v6, 0x0

    .line 511
    const/4 v3, 0x0

    .line 512
    .local v3, "ret_val":Z
    const/4 v4, 0x1

    new-array v2, v4, [Z

    .line 513
    .local v2, "paramBoolean":[Z
    const/4 v1, 0x0

    .line 516
    .local v1, "error":I
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v5, 0x0

    invoke-interface {v4, v5, p1, v2}, Lcom/atmos/api/IDs;->iGetProfileModified(II[Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 522
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 523
    aget-boolean v3, v2, v6

    .line 524
    return v3

    .line 518
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "isProfileSettingsModified"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic registerClient(Landroid/content/Context;Lcom/atmos/api/IDsAccessEvents;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/atmos/api/IDsAccessEvents;

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/atmos/api/DsBase;->registerClient(Landroid/content/Context;Lcom/atmos/api/IDsAccessEvents;)Z

    move-result v0

    return v0
.end method

.method public registerDsEvents(Lcom/atmos/api/IDsEvents;)V
    .locals 6
    .param p1, "listener"    # Lcom/atmos/api/IDsEvents;

    .prologue
    .line 172
    const/4 v1, -0x6

    .line 176
    .local v1, "error":I
    if-eqz p1, :cond_0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    iget-object v4, p0, Lcom/atmos/api/DsFocus;->callbacks_:Lcom/atmos/api/IDsCallbacks;

    const/4 v5, 0x2

    invoke-interface {v2, v3, v4, v5}, Lcom/atmos/api/IDs;->iRegisterCallback(ILcom/atmos/api/IDsCallbacks;I)V

    .line 179
    iput-object p1, p0, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v1, 0x0

    .line 191
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 192
    return-void

    .line 184
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "registerDsEvents"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerVisualizer(Lcom/atmos/api/IDsVisualizerEvents;)V
    .locals 4
    .param p1, "listener"    # Lcom/atmos/api/IDsVisualizerEvents;

    .prologue
    .line 109
    const/4 v1, -0x6

    .line 113
    .local v1, "error":I
    :try_start_0
    iget v2, p0, Lcom/atmos/api/DsFocus;->bandCount_:I

    if-nez v2, :cond_0

    .line 115
    const-string v2, "DsFocus"

    const-string v3, "graphic equalizer band count NOT initialized yet."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception in registerVisualizer"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "registerVisualizer"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 142
    return-void

    .line 118
    :cond_0
    if-eqz p1, :cond_4

    .line 120
    :try_start_1
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    if-nez v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->gains_:[F

    if-nez v2, :cond_1

    .line 123
    iget v2, p0, Lcom/atmos/api/DsFocus;->bandCount_:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/atmos/api/DsFocus;->gains_:[F

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->excitations_:[F

    if-nez v2, :cond_2

    .line 125
    iget v2, p0, Lcom/atmos/api/DsFocus;->bandCount_:I

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/atmos/api/DsFocus;->excitations_:[F

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    invoke-interface {v2, v3}, Lcom/atmos/api/IDs;->iRegisterVisualizerData(I)V

    .line 128
    iput-object p1, p0, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :cond_4
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public requestAccessRight()I
    .locals 3

    .prologue
    .line 592
    const/4 v1, -0x6

    .line 595
    .local v1, "error":I
    const/4 v2, 0x1

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsBase;->requestAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 601
    :goto_0
    return v1

    .line 597
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "requestAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic requestAccessRight(I)I
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/atmos/api/DsBase;->requestAccessRight(I)I

    move-result v0

    return v0
.end method

.method public resetProfile(I)I
    .locals 5
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v1, 0x0

    .line 542
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/atmos/api/IDs;->iResetProfile(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 548
    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 550
    new-instance v2, Lcom/atmos/api/DsAccessException;

    const-string v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 544
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setProfile"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 556
    return v1
.end method

.method protected setConnectionInfo(I)V
    .locals 0
    .param p1, "access"    # I

    .prologue
    .line 659
    iput p1, p0, Lcom/atmos/api/DsBase;->connectionBridge_:I

    .line 660
    return-void
.end method

.method public setIeqPreset(I)I
    .locals 5
    .param p1, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 384
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/atmos/api/IDs;->iSetIeqPreset(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 392
    new-instance v2, Lcom/atmos/api/DsAccessException;

    const-string v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setIeqPreset"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 398
    return v1
.end method

.method public setParameter(I[I)I
    .locals 9
    .param p1, "paramId"    # I
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v7, 0x0

    .line 288
    .local v7, "error":I
    const/4 v0, 0x1

    :try_start_0
    new-array v8, v0, [I

    .line 289
    .local v8, "paramInt":[I
    iget-object v0, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v8}, Lcom/atmos/api/IDs;->iGetProfile(I[I)I

    move-result v7

    .line 290
    if-nez v7, :cond_0

    .line 292
    const/4 v0, 0x0

    aget v3, v8, v0

    .line 293
    .local v3, "profile":I
    iget-object v0, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v1, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    const/4 v2, 0x0

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/atmos/api/IDs;->iSetParameter(IIII[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 300
    .end local v3    # "profile":I
    .end local v8    # "paramInt":[I
    :cond_0
    :goto_0
    const/4 v0, -0x5

    if-ne v7, v0, :cond_1

    .line 302
    new-instance v0, Lcom/atmos/api/DsAccessException;

    const-string v1, "Exception: access right."

    invoke-direct {v0, v1}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :catch_0
    move-exception v6

    .line 298
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "setParameter"

    invoke-virtual {p0, v6, v0}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 308
    return v7
.end method

.method public setProfile(I)I
    .locals 5
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 462
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/atmos/api/IDs;->iSetProfile(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 468
    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 470
    new-instance v2, Lcom/atmos/api/DsAccessException;

    const-string v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setProfile"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 476
    return v1
.end method

.method public setState(Z)I
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/atmos/api/DsAccessException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v1, 0x1

    .line 232
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/atmos/api/IDs;->iSetState(IIZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 238
    :goto_0
    const/4 v2, -0x5

    if-ne v1, v2, :cond_0

    .line 240
    new-instance v2, Lcom/atmos/api/DsAccessException;

    const-string v3, "Exception: access right."

    invoke-direct {v2, v3}, Lcom/atmos/api/DsAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "setState"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsFocus;->convertErrorCodeToException(I)V

    .line 246
    return v1
.end method

.method public unregisterClient()V
    .locals 5

    .prologue
    .line 672
    const-string v1, "DsFocus"

    const-string v2, "unregisterClient"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    if-eqz v1, :cond_0

    .line 678
    :try_start_0
    iget-object v1, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v2, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    invoke-interface {v1, v2}, Lcom/atmos/api/IDs;->iUnregisterVisualizerData(I)V

    .line 679
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    .line 680
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->gains_:[F

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->excitations_:[F

    .line 682
    iget-object v1, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v2, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    iget-object v3, p0, Lcom/atmos/api/DsFocus;->callbacks_:Lcom/atmos/api/IDsCallbacks;

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/atmos/api/IDs;->iUnregisterCallback(ILcom/atmos/api/IDsCallbacks;I)V

    .line 683
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/atmos/api/DsBase;->unregisterClient()V

    .line 691
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unregisterClient"

    invoke-virtual {p0, v0, v1}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDsEvents()V
    .locals 5

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v2, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    iget-object v3, p0, Lcom/atmos/api/DsFocus;->callbacks_:Lcom/atmos/api/IDsCallbacks;

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/atmos/api/IDs;->iUnregisterCallback(ILcom/atmos/api/IDsCallbacks;I)V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unregisterDsEvents"

    invoke-virtual {p0, v0, v1}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterVisualizer()V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/atmos/api/DsFocus;->iDs_:Lcom/atmos/api/IDs;

    iget v2, p0, Lcom/atmos/api/DsFocus;->clientHandle_:I

    invoke-interface {v1, v2}, Lcom/atmos/api/IDs;->iUnregisterVisualizerData(I)V

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->gains_:[F

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/api/DsFocus;->excitations_:[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unregisterVisualizer"

    invoke-virtual {p0, v0, v1}, Lcom/atmos/api/DsFocus;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
