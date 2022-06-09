.class public Lcom/atmos/service/DsCallbackManager;
.super Ljava/lang/Object;
.source "DsCallbackManager.java"


# static fields
.field private static final lock_:Ljava/lang/Object;


# instance fields
.field private ds1Callbacks_:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/atmos/api/IDsCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private ds2Callbacks_:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/atmos/api/IDsCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/atmos/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    .line 53
    iput-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    .line 61
    sget-object v1, Lcom/atmos/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "what"    # I
    .param p2, "handle"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 135
    const/4 v6, 0x1

    .line 137
    .local v6, "value":Z
    sget-object v11, Lcom/atmos/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v11

    .line 139
    :try_start_0
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 142
    .local v1, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :pswitch_0
    const/4 v8, 0x1

    if-ne p3, v8, :cond_1

    const/4 v4, 0x1

    .line 152
    .local v4, "isOn":Z
    :goto_2
    :try_start_1
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v8, v4}, Lcom/atmos/api/IDsCallbacks;->onDsOn(Z)V

    goto :goto_1

    .line 219
    .end local v4    # "isOn":Z
    :catch_0
    move-exception v8

    goto :goto_1

    .line 151
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 156
    :pswitch_1
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v8, p3}, Lcom/atmos/api/IDsCallbacks;->onProfileSelected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 226
    .end local v1    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 160
    .restart local v1    # "N":I
    .restart local v3    # "i":I
    :pswitch_2
    :try_start_3
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v8, p3}, Lcom/atmos/api/IDsCallbacks;->onProfileSettingsChanged(I)V

    goto :goto_1

    .line 164
    :pswitch_3
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 165
    .local v7, "vis_handle":I
    if-ne v7, p2, :cond_0

    .line 167
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, [F

    move-object v9, v0

    check-cast v9, [F

    move-object/from16 v0, p6

    check-cast v0, [F

    move-object v10, v0

    check-cast v10, [F

    invoke-interface {v8, v9, v10}, Lcom/atmos/api/IDsCallbacks;->onVisualizerUpdated([F[F)V

    goto :goto_1

    .line 172
    .end local v7    # "vis_handle":I
    :pswitch_4
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 173
    .restart local v7    # "vis_handle":I
    if-ne v7, p2, :cond_0

    .line 175
    const/4 v8, 0x1

    if-ne p3, v8, :cond_2

    const/4 v5, 0x1

    .line 176
    .local v5, "isSuspended":Z
    :goto_3
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v8, v5}, Lcom/atmos/api/IDsCallbacks;->onVisualizerSuspended(Z)V

    goto :goto_1

    .line 175
    .end local v5    # "isSuspended":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 181
    .end local v7    # "vis_handle":I
    :pswitch_5
    const/4 v8, 0x1

    if-ne p3, v8, :cond_3

    const/4 v5, 0x1

    .line 182
    .restart local v5    # "isSuspended":Z
    :goto_4
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v8, v5}, Lcom/atmos/api/IDsCallbacks;->onDsSuspended(Z)V

    goto/16 :goto_1

    .line 181
    .end local v5    # "isSuspended":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 185
    :pswitch_6
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 186
    .local v2, "access_handle":I
    if-ne v2, p2, :cond_0

    .line 188
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-interface {v8, v9, p3}, Lcom/atmos/api/IDsCallbacks;->onAccessRequested(Ljava/lang/String;I)Z

    move-result v6

    goto/16 :goto_1

    .line 192
    .end local v2    # "access_handle":I
    :pswitch_7
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 193
    .restart local v2    # "access_handle":I
    if-ne v2, p2, :cond_0

    .line 195
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-interface {v8, v9, p3}, Lcom/atmos/api/IDsCallbacks;->onAccessForceReleased(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 199
    .end local v2    # "access_handle":I
    :pswitch_8
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 200
    .restart local v2    # "access_handle":I
    if-ne v2, p2, :cond_0

    .line 202
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v8}, Lcom/atmos/api/IDsCallbacks;->onAccessAvailable()V

    goto/16 :goto_1

    .line 206
    .end local v2    # "access_handle":I
    :pswitch_9
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    move-object/from16 v0, p5

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-interface {v8, p3, v9}, Lcom/atmos/api/IDsCallbacks;->onProfileNameChanged(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :pswitch_a
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    .restart local v2    # "access_handle":I
    if-ne v2, p2, :cond_0

    .line 212
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v8}, Lcom/atmos/api/IDsCallbacks;->onLegacyClientSetting()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    goto/16 :goto_1

    .line 225
    .end local v2    # "access_handle":I
    :cond_4
    :try_start_4
    iget-object v8, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 226
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    return v6

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "what"    # I
    .param p2, "handle"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj1"    # Ljava/lang/Object;
    .param p6, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 236
    const/4 v4, 0x1

    .line 237
    .local v4, "value":Z
    const/4 v1, 0x0

    .line 239
    .local v1, "clientHandle":I
    sget-object v7, Lcom/atmos/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v7

    .line 241
    :try_start_0
    iget-object v5, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 242
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 242
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 253
    if-eq p2, v1, :cond_0

    .line 255
    if-ne p3, v6, :cond_1

    move v3, v6

    .line 256
    .local v3, "isOn":Z
    :goto_2
    iget-object v5, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v5, v3}, Lcom/atmos/api/IDsCallbacks;->onDsOn(Z)V

    goto :goto_1

    .line 280
    .end local v3    # "isOn":Z
    :catch_0
    move-exception v5

    goto :goto_1

    .line 255
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 261
    :pswitch_1
    iget-object v5, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 263
    if-eq p2, v1, :cond_0

    .line 265
    iget-object v5, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/atmos/api/IDsCallbacks;

    invoke-interface {v5, p3}, Lcom/atmos/api/IDsCallbacks;->onProfileSelected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 287
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 286
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 287
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    return v4

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public register(Lcom/atmos/api/IDsCallbacks;II)V
    .locals 4
    .param p1, "cb"    # Lcom/atmos/api/IDsCallbacks;
    .param p2, "handle"    # I
    .param p3, "ver"    # I

    .prologue
    .line 95
    sget-object v1, Lcom/atmos/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 105
    :goto_0
    const-string v0, "DsCallbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the register handle is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " the version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    monitor-exit v1

    .line 107
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 74
    sget-object v1, Lcom/atmos/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    .line 86
    :cond_1
    monitor-exit v1

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregister(Lcom/atmos/api/IDsCallbacks;I)V
    .locals 4
    .param p1, "cb"    # Lcom/atmos/api/IDsCallbacks;
    .param p2, "ver"    # I

    .prologue
    .line 115
    sget-object v1, Lcom/atmos/service/DsCallbackManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds1Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 125
    :goto_0
    const-string v0, "DsCallbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback, version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/atmos/service/DsCallbackManager;->ds2Callbacks_:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
