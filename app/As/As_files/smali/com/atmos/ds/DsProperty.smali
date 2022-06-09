.class public Lcom/atmos/ds/DsProperty;
.super Ljava/lang/Object;
.source "DsProperty.java"


# static fields
.field private static final lock_:Ljava/lang/Object;

.field private static sysProp_:Ljava/lang/Class;

.field private static systemPropertyGet_:Ljava/lang/reflect/Method;

.field private static systemPropertySet_:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    .line 58
    sput-object v1, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    .line 65
    sput-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    .line 72
    sput-object v1, Lcom/atmos/ds/DsProperty;->systemPropertyGet_:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static getMonoSpeakerProperty()Ljava/lang/String;
    .locals 9

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, "ret":Ljava/lang/String;
    sget-object v4, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v4

    .line 298
    :try_start_0
    sget-object v3, Lcom/atmos/ds/DsProperty;->systemPropertyGet_:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "dolby.monospeaker"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "false"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 305
    return-object v2

    .line 300
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DsProperty"

    const-string v5, "Exception in getMonoSpeakerProperty"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static getStateProperty()Ljava/lang/String;
    .locals 9

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "ret":Ljava/lang/String;
    sget-object v4, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v4

    .line 106
    :try_start_0
    sget-object v3, Lcom/atmos/ds/DsProperty;->systemPropertyGet_:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "dolby.ds.state"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "false"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 113
    return-object v2

    .line 108
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DsProperty"

    const-string v5, "Exception in getStateProperty"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static init()V
    .locals 7

    .prologue
    .line 80
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    .line 85
    sget-object v1, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const-string v3, "set"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    .line 86
    sget-object v1, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/atmos/ds/DsProperty;->systemPropertyGet_:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 93
    return-void

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in DsPropertyUtil.init"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setDialogEnhancerProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 165
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.dialogenhancer.state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 172
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setDialogEnhancerProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setGeqStateProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 237
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 241
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.graphiceq.state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 248
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setGeqStateProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setHeadphoneVirtualizerProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.hpvirtualizer.state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 191
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setHeadphoneVirtualizerProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setIeqPresetProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 275
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.intelligenteq.preset"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 286
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setIeqPresetProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setIeqStateProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 256
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.intelligenteq.state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 267
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setIeqStateProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setProfileNameProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.profile.name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setProfileNameProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setSpeakerVirtualizerProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 199
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 203
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.spkvirtualizer.state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 210
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setSpeakerVirtualizerProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setStateProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p0}, Lcom/atmos/service/DsService;->setDsOnOffStateChange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 134
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setStateProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setVolumeLevellerProperty(Ljava/lang/String;)V
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 218
    sget-object v2, Lcom/atmos/ds/DsProperty;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 222
    :try_start_0
    sget-object v1, Lcom/atmos/ds/DsProperty;->systemPropertySet_:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/atmos/ds/DsProperty;->sysProp_:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dolby.ds.volumeleveler.state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 229
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DsProperty"

    const-string v3, "Exception in setVolumeLevellerProperty"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
