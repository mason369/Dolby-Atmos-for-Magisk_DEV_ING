.class public Lcom/atmos/service/DsAccessRightManager;
.super Ljava/lang/Object;
.source "DsAccessRightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/service/DsAccessRightManager$1;,
        Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    }
.end annotation


# static fields
.field private static dsVersionMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock_:Ljava/lang/Object;


# instance fields
.field private cbkManager_:Lcom/atmos/service/DsCallbackManager;

.field private dsAccessRightLookupMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dsConnectedAppInfoMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dsManager_:Lcom/atmos/ds/DsManager;

.field private forceAbandonHandle_:I

.field private globalAccessHandle_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/atmos/ds/DsManager;Lcom/atmos/service/DsCallbackManager;)V
    .locals 2
    .param p1, "ds"    # Lcom/atmos/ds/DsManager;
    .param p2, "cbk"    # Lcom/atmos/service/DsCallbackManager;

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 98
    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 261
    const-string v0, "DsAccessRightManager"

    const-string v1, "DsAccessRightManager.DsAccessRightManager"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v1, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iput-object p1, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 266
    iput-object p2, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/atmos/service/DsAccessRightManager;->globalAccessHandle_:I

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearDsAccessRight(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "type"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 154
    .local v0, "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget v1, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    .line 155
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v0    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :cond_0
    return-void
.end method

.method private findDsConnectedApp(Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, -0x1

    .line 223
    .local v0, "handle":I
    const/4 v2, 0x0

    .line 225
    .local v2, "info":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget-object v5, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 227
    .local v4, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 228
    .local v3, "key":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    check-cast v2, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 229
    .restart local v2    # "info":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget-object v5, v2, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    move v0, v3

    .line 235
    .end local v3    # "key":I
    .end local v4    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;>;"
    :cond_1
    return v0
.end method

.method private queryDsAccessRight(Ljava/lang/String;I)I
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 171
    const/4 v7, 0x0

    .line 173
    .local v7, "error":I
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 175
    .local v11, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 176
    .local v10, "key":I
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 177
    .local v2, "appId":I
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/16 v1, 0x9

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 181
    .local v9, "isPermitted":Z
    if-nez v9, :cond_2

    .line 183
    const/4 v7, -0x4

    .line 208
    .end local v2    # "appId":I
    .end local v9    # "isPermitted":Z
    .end local v10    # "key":I
    .end local v11    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    return v7

    .line 188
    .restart local v2    # "appId":I
    .restart local v9    # "isPermitted":Z
    .restart local v10    # "key":I
    .restart local v11    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->restoreCurrentProfiles()V

    .line 189
    invoke-direct {p0}, Lcom/atmos/service/DsAccessRightManager;->restoreSystemProperty()V

    .line 201
    .end local v9    # "isPermitted":Z
    :goto_1
    invoke-direct {p0, v2, v10}, Lcom/atmos/service/DsAccessRightManager;->clearDsAccessRight(II)V

    .line 202
    iput v2, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    .line 203
    sget-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    const/4 v0, 0x2

    if-ne v10, v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private restoreSystemProperty()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 242
    :try_start_0
    iget-object v5, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v5}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v4

    .line 243
    .local v2, "on":Z
    :goto_0
    iget-object v5, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v5}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v3

    .line 244
    .local v3, "profile":I
    if-ne v2, v4, :cond_1

    const-string v0, "on"

    .line 245
    .local v0, "curState":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/atmos/ds/DsProperty;->setStateProperty(Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v4, v3}, Lcom/atmos/ds/DsManager;->setProfileProperties(I)V

    .line 253
    .end local v0    # "curState":Ljava/lang/String;
    .end local v2    # "on":Z
    .end local v3    # "profile":I
    :goto_2
    return-void

    .line 242
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 244
    .restart local v2    # "on":Z
    .restart local v3    # "profile":I
    :cond_1
    const-string v0, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 248
    .end local v2    # "on":Z
    .end local v3    # "profile":I
    :catch_0
    move-exception v1

    .line 250
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "DsAccessRightManager"

    const-string v5, "Exception found in setting DS state property"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private setDsAccessRight(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "type"    # I

    .prologue
    .line 132
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 135
    .local v0, "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget v1, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    .line 136
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v0    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public abandonAccessRight(IILandroid/media/AudioManager;)I
    .locals 12
    .param p1, "handle"    # I
    .param p2, "accessRight"    # I
    .param p3, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    const/4 v2, -0x1

    const/4 v11, 0x0

    .line 424
    const-string v0, "DsAccessRightManager"

    const-string v1, "DsAccessRightManager.abandonAccessRight"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v10, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v10

    .line 428
    packed-switch p2, :pswitch_data_0

    .line 466
    :cond_0
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v10

    return v11

    .line 433
    :pswitch_1
    iget v0, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    if-eq v0, v2, :cond_2

    .line 435
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    iget v1, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/16 v1, 0x8

    iget v2, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    .line 441
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/atmos/service/DsAccessRightManager;->clearDsAccessRight(II)V

    .line 443
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 448
    .local v7, "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget-object v9, v7, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    .line 449
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {p3, v9}, Landroid/media/AudioManager;->isAppInFocus(Ljava/lang/String;)Z

    move-result v8

    .line 450
    .local v8, "isFocused":Z
    if-nez v8, :cond_0

    .line 452
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->restoreCurrentProfiles()V

    .line 453
    invoke-direct {p0}, Lcom/atmos/service/DsAccessRightManager;->restoreSystemProperty()V

    goto :goto_0

    .line 467
    .end local v7    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    .end local v8    # "isFocused":Z
    .end local v9    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addDsConnectedApp(ILjava/lang/String;I)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "connection"    # I

    .prologue
    .line 299
    const-string v1, "DsAccessRightManager"

    const-string v2, "DsAccessRightManager.addDsConnectedApp"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v2, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_0
    new-instance v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;-><init>(Lcom/atmos/service/DsAccessRightManager;Lcom/atmos/service/DsAccessRightManager$1;)V

    .line 304
    .local v0, "mDsConnectedAppInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iput-object p2, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    .line 305
    iget v1, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I

    or-int/2addr v1, p3

    iput v1, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I

    .line 306
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    monitor-exit v2

    .line 308
    return-void

    .line 307
    .end local v0    # "mDsConnectedAppInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkAccessRight(II)I
    .locals 4
    .param p1, "handle"    # I
    .param p2, "accessRight"    # I

    .prologue
    .line 483
    const-string v1, "DsAccessRightManager"

    const-string v2, "DsAccessRightManager.checkAccessRight"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v2, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v2

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 490
    .local v0, "appId":I
    if-ne v0, p1, :cond_0

    .line 492
    const/4 v1, 0x2

    monitor-exit v2

    .line 499
    .end local v0    # "appId":I
    :goto_0
    return v1

    .line 496
    .restart local v0    # "appId":I
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 500
    .end local v0    # "appId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 499
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public doAccessForAudioFocusChange(Ljava/lang/String;I)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    .line 681
    const-string v0, "DsAccessRightManager"

    const-string v1, "DsAccessRightManager.doAccessForAudioFocusChange."

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    sget-object v12, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v12

    .line 685
    :try_start_0
    invoke-direct {p0, p1}, Lcom/atmos/service/DsAccessRightManager;->findDsConnectedApp(Ljava/lang/String;)I

    move-result v2

    .line 686
    .local v2, "handle":I
    if-eq v2, v4, :cond_3

    .line 688
    if-eq p2, v7, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 691
    .local v11, "info":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget v3, v11, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    .line 692
    .local v3, "type":I
    and-int/lit8 v0, v3, 0x1

    if-ne v0, v7, :cond_2

    .line 694
    invoke-direct {p0, v2, v3}, Lcom/atmos/service/DsAccessRightManager;->clearDsAccessRight(II)V

    .line 695
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 696
    if-ne p2, v7, :cond_1

    .line 698
    iput v2, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    .line 700
    :cond_1
    sget-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 702
    sget-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_2
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->restoreCurrentProfiles()V

    .line 706
    invoke-direct {p0}, Lcom/atmos/service/DsAccessRightManager;->restoreSystemProperty()V

    .line 714
    .end local v3    # "type":I
    .end local v11    # "info":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :cond_3
    :goto_0
    monitor-exit v12

    .line 715
    return-void

    .line 710
    :cond_4
    iget-object v4, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, v2

    invoke-virtual/range {v4 .. v10}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 711
    const/4 v0, -0x1

    iput v0, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    goto :goto_0

    .line 714
    .end local v2    # "handle":I
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doAccessForLegacyClient(IZ)Z
    .locals 13
    .param p1, "handle"    # I
    .param p2, "isSetting"    # Z

    .prologue
    .line 727
    const/4 v10, 0x0

    .line 728
    .local v10, "isClearedAccess":Z
    const/4 v9, 0x0

    .line 729
    .local v9, "isAgreed":Z
    invoke-virtual {p0, p1}, Lcom/atmos/service/DsAccessRightManager;->queryDsVersion(I)I

    move-result v7

    .line 730
    .local v7, "dsVersion":I
    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    .line 732
    if-eqz p2, :cond_2

    .line 734
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 736
    .local v12, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 737
    .local v11, "key":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 738
    .local v2, "appId":I
    const/4 v0, 0x2

    if-ne v11, v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 742
    if-eqz v9, :cond_1

    .line 744
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0}, Lcom/atmos/service/DsAccessRightManager;->clearDsAccessRight(II)V

    .line 745
    const/4 v10, 0x1

    .line 746
    iput v2, p0, Lcom/atmos/service/DsAccessRightManager;->globalAccessHandle_:I

    .line 758
    .end local v2    # "appId":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "key":I
    .end local v12    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    return v10

    .line 754
    :cond_2
    iget v0, p0, Lcom/atmos/service/DsAccessRightManager;->globalAccessHandle_:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/atmos/service/DsAccessRightManager;->setDsAccessRight(II)V

    .line 755
    const/4 v0, -0x1

    iput v0, p0, Lcom/atmos/service/DsAccessRightManager;->globalAccessHandle_:I

    goto :goto_0
.end method

.method public isAppAccessPermitted(I)Z
    .locals 8
    .param p1, "handle"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 533
    const-string v3, "DsAccessRightManager"

    const-string v4, "DsAccessRightManager.isAppAccessPermitted."

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v1, 0x0

    .line 536
    .local v1, "value":Z
    sget-object v4, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v4

    .line 538
    :try_start_0
    sget-object v3, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 540
    sget-object v3, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 541
    .local v2, "version":I
    if-ne v2, v6, :cond_3

    .line 543
    iget-object v3, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    :cond_0
    const/4 v1, 0x0

    .line 568
    .end local v2    # "version":I
    :cond_1
    :goto_0
    monitor-exit v4

    .line 569
    return v1

    .line 551
    .restart local v2    # "version":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 554
    :cond_3
    if-ne v2, v7, :cond_1

    .line 556
    iget-object v3, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 557
    .local v0, "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget v3, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    and-int/lit8 v3, v3, 0x1

    if-eq v3, v6, :cond_4

    iget v3, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_5

    .line 560
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 564
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 568
    .end local v0    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    .end local v2    # "version":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isGlobalSettings(I)Z
    .locals 7
    .param p1, "handle"    # I

    .prologue
    const/4 v6, 0x2

    .line 643
    const/4 v2, 0x0

    .line 645
    .local v2, "isGlobal":Z
    if-nez p1, :cond_1

    .line 647
    const/4 v2, 0x1

    .line 669
    :cond_0
    :goto_0
    return v2

    .line 651
    :cond_1
    sget-object v4, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    sget-object v4, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 654
    .local v3, "version":I
    if-ne v3, v6, :cond_2

    .line 656
    iget-object v4, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 657
    .local v1, "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget v0, v1, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    .line 658
    .local v0, "accessRight":I
    and-int/lit8 v4, v0, 0x2

    if-ne v4, v6, :cond_0

    .line 660
    const/4 v2, 0x1

    goto :goto_0

    .line 665
    .end local v0    # "accessRight":I
    .end local v1    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public queryDsVersion(I)I
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 627
    .local v0, "dsVersion":I
    sget-object v1, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    sget-object v1, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 631
    :cond_0
    return v0
.end method

.method public registerDsVersion(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "version"    # I

    .prologue
    .line 581
    sget-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 280
    sget-object v1, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDsConnectedApp(I)V
    .locals 9
    .param p1, "handle"    # I

    .prologue
    const/4 v2, -0x1

    .line 318
    const-string v0, "DsAccessRightManager"

    const-string v1, "DsAccessRightManager.removeDsConnectedApp"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v8, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v8

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 325
    .local v7, "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget v0, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    if-eq v0, v2, :cond_1

    .line 327
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    iget v1, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/16 v1, 0x8

    iget v2, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/atmos/service/DsAccessRightManager;->forceAbandonHandle_:I

    .line 334
    :cond_1
    iget v0, v7, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->restoreCurrentProfiles()V

    .line 337
    invoke-direct {p0}, Lcom/atmos/service/DsAccessRightManager;->restoreSystemProperty()V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    iget v1, v7, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appCurrentAccessRight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v7    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :cond_3
    monitor-exit v8

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAccessRight(IILandroid/media/AudioManager;)I
    .locals 7
    .param p1, "handle"    # I
    .param p2, "accessRight"    # I
    .param p3, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 357
    const-string v4, "DsAccessRightManager"

    const-string v5, "DsAccessRightManager.requestAccessRight"

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v2, -0x6

    .line 360
    .local v2, "error":I
    sget-object v5, Lcom/atmos/service/DsAccessRightManager;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 363
    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    iget-object v4, p0, Lcom/atmos/service/DsAccessRightManager;->dsAccessRightLookupMap_:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 366
    .local v1, "currentHandler":I
    if-ne v1, p1, :cond_0

    .line 368
    const/4 v4, -0x1

    monitor-exit v5

    .line 409
    .end local v1    # "currentHandler":I
    :goto_0
    return v4

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/atmos/service/DsAccessRightManager;->dsConnectedAppInfoMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;

    .line 374
    .local v0, "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    iget v4, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->connectionBridge:I

    and-int/2addr v4, p2

    if-eq v4, p2, :cond_1

    .line 376
    const/4 v4, -0x2

    monitor-exit v5

    goto :goto_0

    .line 408
    .end local v0    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 380
    .restart local v0    # "appInfo":Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
    :cond_1
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 382
    :try_start_1
    iget-object v4, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/media/AudioManager;->isAppInFocus(Ljava/lang/String;)Z

    move-result v3

    .line 383
    .local v3, "isFocused":Z
    if-nez v3, :cond_2

    .line 385
    const/4 v4, -0x3

    monitor-exit v5

    goto :goto_0

    .line 389
    .end local v3    # "isFocused":Z
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 408
    :cond_3
    :goto_1
    :pswitch_0
    monitor-exit v5

    move v4, v2

    .line 409
    goto :goto_0

    .line 394
    :pswitch_1
    iget-object v4, v0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->appPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, p2}, Lcom/atmos/service/DsAccessRightManager;->queryDsAccessRight(Ljava/lang/String;I)I

    move-result v2

    .line 395
    if-nez v2, :cond_3

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/atmos/service/DsAccessRightManager;->setDsAccessRight(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    const/4 v2, 0x0

    goto :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public unRegisterDsVersion(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 592
    sget-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    sget-object v0, Lcom/atmos/service/DsAccessRightManager;->dsVersionMap_:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_0
    return-void
.end method
