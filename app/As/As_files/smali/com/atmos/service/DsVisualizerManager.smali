.class public Lcom/atmos/service/DsVisualizerManager;
.super Ljava/lang/Object;
.source "DsVisualizerManager.java"


# static fields
.field private static final lock_:Ljava/lang/Object;


# instance fields
.field private cbkManager_:Lcom/atmos/service/DsCallbackManager;

.field private final cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

.field private dsManager_:Lcom/atmos/ds/DsManager;

.field private excitations_:[F

.field private gains_:[F

.field private geqBandCount_:I

.field private isVisualizerSuspended_:Z

.field private noVisualizerCounter_:I

.field private previousVisualizerSize_:I

.field private visualizerHandler_:Landroid/os/Handler;

.field private visualizerList_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private visualizerThread_:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/atmos/ds/DsManager;Lcom/atmos/service/DsCallbackManager;)V
    .locals 2
    .param p1, "ds"    # Lcom/atmos/ds/DsManager;
    .param p2, "cbk"    # Lcom/atmos/service/DsCallbackManager;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    .line 75
    iput-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    .line 82
    iput-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    .line 89
    iput-boolean v0, p0, Lcom/atmos/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    .line 96
    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    .line 103
    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->previousVisualizerSize_:I

    .line 117
    const/16 v0, 0x14

    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->geqBandCount_:I

    .line 124
    iput-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 131
    iput-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 249
    new-instance v0, Lcom/atmos/service/DsVisualizerManager$1;

    invoke-direct {v0, p0}, Lcom/atmos/service/DsVisualizerManager$1;-><init>(Lcom/atmos/service/DsVisualizerManager;)V

    iput-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    .line 147
    sget-object v1, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iput-object p1, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 150
    iput-object p2, p0, Lcom/atmos/service/DsVisualizerManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    .line 152
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->geqBandCount_:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    .line 153
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->geqBandCount_:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/atmos/service/DsVisualizerManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/service/DsVisualizerManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/atmos/service/DsVisualizerManager;->visualizerUpdate()V

    return-void
.end method

.method private invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .param p1, "what"    # I
    .param p2, "handle"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 465
    sget-object v10, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v10

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 471
    :try_start_1
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 473
    .local v8, "i":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 474
    .local v2, "vis_handle":I
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    move v1, p1

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    .end local v2    # "vis_handle":I
    .end local v8    # "i":Ljava/lang/Integer;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 479
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "DsVisualizerManager"

    const-string v1, "Exception found in invokeVisualizerCbk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v10

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private startVisualizer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 355
    sget-object v2, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v1}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 361
    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/atmos/ds/DsManager;->setVisualizerOn(Z)I

    .line 363
    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 365
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "visualiser thread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    .line 366
    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 371
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    iget-object v3, p0, Lcom/atmos/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    const-string v1, "DsVisualizerManager"

    const-string v3, "Visualizer thread is started."

    invoke-static {v1, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    return-void

    .line 378
    :cond_2
    :try_start_2
    const-string v1, "DsVisualizerManager"

    const-string v3, "DS is off, will start visualizer thread when it switches to on."

    invoke-static {v1, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "DsVisualizerManager"

    const-string v3, "Exception found in startVisualizer"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private stopVisualizer()V
    .locals 5

    .prologue
    .line 396
    sget-object v3, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/atmos/ds/DsManager;->setVisualizerOn(Z)I

    .line 404
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 407
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    .line 408
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerThread_:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    iget v2, p0, Lcom/atmos/service/DsVisualizerManager;->geqBandCount_:I

    if-ge v1, v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 420
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    const/4 v4, 0x0

    aput v4, v2, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsVisualizerManager"

    const-string v4, "Exception found in stopVisualizer"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 422
    .restart local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    .line 423
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    return-void
.end method

.method private visualizerUpdate()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    .line 264
    sget-object v10, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v10

    .line 266
    const/4 v9, 0x0

    .line 269
    .local v9, "len":I
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    invoke-virtual {v0, v1, v2}, Lcom/atmos/ds/DsManager;->getVisualizerData([F[F)I

    move-result v9

    .line 270
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->previousVisualizerSize_:I

    if-eq v9, v0, :cond_0

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    .line 274
    :cond_0
    iput v9, p0, Lcom/atmos/service/DsVisualizerManager;->previousVisualizerSize_:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_0
    if-nez v9, :cond_3

    .line 284
    :try_start_1
    iget-boolean v0, p0, Lcom/atmos/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    if-nez v0, :cond_1

    .line 287
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    .line 288
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    .line 293
    const-string v0, "DsVisualizerManager"

    const-string v1, "VISUALIZER_SUSPENDED true"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/atmos/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V

    .line 340
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerHandler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/service/DsVisualizerManager;->cbkOnVisualizerUpdate_:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    :cond_2
    monitor-exit v10

    .line 346
    return-void

    .line 276
    :catch_0
    move-exception v7

    .line 278
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "DsVisualizerManager"

    const-string v1, "Exception in visualizerUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 345
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 302
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/atmos/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    if-eqz v0, :cond_4

    .line 305
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    .line 306
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/atmos/service/DsVisualizerManager;->noVisualizerCounter_:I

    .line 311
    const-string v0, "DsVisualizerManager"

    const-string v1, "VISUALIZER_SUSPENDED false"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/atmos/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 321
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 323
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget v0, p0, Lcom/atmos/service/DsVisualizerManager;->geqBandCount_:I

    if-ge v8, v0, :cond_5

    .line 325
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    const/4 v1, 0x0

    aput v1, v0, v8

    .line 326
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    const/4 v1, 0x0

    aput v1, v0, v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 330
    .end local v8    # "i":I
    :catch_1
    move-exception v7

    .line 332
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "DsVisualizerManager"

    const-string v1, "Exception found in visualizerUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    iget-object v6, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/atmos/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public register(I)V
    .locals 9
    .param p1, "handle"    # I

    .prologue
    .line 188
    sget-object v8, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v8

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 193
    .local v7, "size":I
    if-nez v7, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/atmos/service/DsVisualizerManager;->startVisualizer()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-boolean v0, p0, Lcom/atmos/service/DsVisualizerManager;->isVisualizerSuspended_:Z

    if-eqz v0, :cond_1

    .line 202
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/atmos/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V

    .line 204
    :cond_1
    const-string v0, "DsVisualizerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add a visualizer handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v7    # "size":I
    :cond_2
    monitor-exit v8

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 163
    sget-object v3, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v3

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 169
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 171
    iget-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    .line 175
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    .line 176
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    .line 177
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/atmos/service/DsVisualizerManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 179
    monitor-exit v3

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public toggleVisualizer(Z)V
    .locals 9
    .param p1, "on"    # Z

    .prologue
    .line 432
    sget-object v8, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v8

    .line 434
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 438
    .local v7, "size":I
    if-lez v7, :cond_0

    .line 440
    if-eqz p1, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/atmos/service/DsVisualizerManager;->startVisualizer()V

    .line 455
    .end local v7    # "size":I
    :cond_0
    :goto_0
    monitor-exit v8

    .line 456
    return-void

    .line 448
    .restart local v7    # "size":I
    :cond_1
    invoke-direct {p0}, Lcom/atmos/service/DsVisualizerManager;->stopVisualizer()V

    .line 451
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/atmos/service/DsVisualizerManager;->gains_:[F

    iget-object v6, p0, Lcom/atmos/service/DsVisualizerManager;->excitations_:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/atmos/service/DsVisualizerManager;->invokeVisualizerCbk(IIIILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    .end local v7    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregister(I)V
    .locals 7
    .param p1, "handle"    # I

    .prologue
    .line 215
    sget-object v4, Lcom/atmos/service/DsVisualizerManager;->lock_:Ljava/lang/Object;

    monitor-enter v4

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 220
    .local v2, "size":I
    if-nez v2, :cond_0

    .line 222
    const-string v3, "DsVisualizerManager"

    const-string v5, "No client registering, do nothing."

    invoke-static {v3, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    monitor-exit v4

    .line 242
    .end local v2    # "size":I
    :goto_0
    return-void

    .line 225
    .restart local v2    # "size":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 227
    iget-object v3, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 229
    iget-object v3, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    const-string v3, "DsVisualizerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove a visualzier handle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/atmos/service/DsVisualizerManager;->visualizerList_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 232
    .local v1, "newSize":I
    if-nez v1, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/atmos/service/DsVisualizerManager;->stopVisualizer()V

    .line 241
    .end local v0    # "i":I
    .end local v1    # "newSize":I
    .end local v2    # "size":I
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 225
    .restart local v0    # "i":I
    .restart local v2    # "size":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
