.class Lcom/atmos/api/DsBase;
.super Ljava/lang/Object;
.source "DsBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DsBase"

.field private static final VERSION:I = 0x1


# instance fields
.field protected DsClientInfo_:Lcom/atmos/api/DsClientInfo;

.field protected accessListener_:Lcom/atmos/api/IDsAccessEvents;

.field protected clientHandle_:I

.field protected connectionBridge_:I

.field protected connection_:Landroid/content/ServiceConnection;

.field protected context_:Landroid/content/Context;

.field private deathHandler_:Lcom/atmos/api/IDsDeathHandler;

.field protected iDs_:Lcom/atmos/api/IDs;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    .line 71
    iput-object v0, p0, Lcom/atmos/api/DsBase;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    .line 77
    iput-object v0, p0, Lcom/atmos/api/DsBase;->context_:Landroid/content/Context;

    .line 83
    iput-object v0, p0, Lcom/atmos/api/DsBase;->DsClientInfo_:Lcom/atmos/api/DsClientInfo;

    .line 89
    iput v1, p0, Lcom/atmos/api/DsBase;->clientHandle_:I

    .line 95
    iput v1, p0, Lcom/atmos/api/DsBase;->connectionBridge_:I

    .line 373
    new-instance v0, Lcom/atmos/api/DsBase$1;

    invoke-direct {v0, p0}, Lcom/atmos/api/DsBase$1;-><init>(Lcom/atmos/api/DsBase;)V

    iput-object v0, p0, Lcom/atmos/api/DsBase;->connection_:Landroid/content/ServiceConnection;

    .line 420
    new-instance v0, Lcom/atmos/api/DsBase$2;

    invoke-direct {v0, p0}, Lcom/atmos/api/DsBase$2;-><init>(Lcom/atmos/api/DsBase;)V

    iput-object v0, p0, Lcom/atmos/api/DsBase;->deathHandler_:Lcom/atmos/api/IDsDeathHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/atmos/api/DsBase;)Lcom/atmos/api/IDsDeathHandler;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/api/DsBase;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/atmos/api/DsBase;->deathHandler_:Lcom/atmos/api/IDsDeathHandler;

    return-object v0
.end method


# virtual methods
.method public abandonAccessRight(I)I
    .locals 4
    .param p1, "accessRight"    # I

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 323
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsBase;->clientHandle_:I

    invoke-interface {v2, v3, p1}, Lcom/atmos/api/IDs;->iAbandonAccessRight(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 329
    :goto_0
    return v1

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "abandonAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkAccessRight(I)I
    .locals 6
    .param p1, "accessRight"    # I

    .prologue
    .line 353
    const/4 v3, -0x1

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
    iget-object v4, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    iget v5, p0, Lcom/atmos/api/DsBase;->clientHandle_:I

    invoke-interface {v4, v5, p1, v2}, Lcom/atmos/api/IDs;->iCheckAccessRight(II[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 364
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsBase;->convertErrorCodeToException(I)V

    .line 365
    const/4 v4, 0x0

    aget v3, v2, v4

    .line 366
    return v3

    .line 360
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "checkAccessRight"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected convertErrorCodeToException(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 103
    if-ltz p1, :cond_0

    .line 128
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v2, "DsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertErrorCodeToException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 123
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Exception: unknown problem."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 111
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Exception: invalid argument."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 114
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Exception: DS not running."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    throw v0

    .line 117
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Exception: can not load settings."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    throw v0

    .line 120
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Exception: can not load tunings."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    throw v0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getApiVersion()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public getAvailableAccessRight()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, -0x1

    .line 341
    .local v0, "ret_val":I
    return v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    const-string v3, ""

    .line 259
    .local v3, "version":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 260
    .local v2, "paramString":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 263
    .local v1, "error":I
    :try_start_0
    iget-object v4, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    invoke-interface {v4, v2}, Lcom/atmos/api/IDs;->iGetDsServiceVersion([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :goto_0
    invoke-virtual {p0, v1}, Lcom/atmos/api/DsBase;->convertErrorCodeToException(I)V

    .line 270
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 272
    return-object v3

    .line 265
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "getDsVersion"

    invoke-virtual {p0, v0, v4}, Lcom/atmos/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "DsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerClient(Landroid/content/Context;Lcom/atmos/api/IDsAccessEvents;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/atmos/api/IDsAccessEvents;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 162
    const-string v10, "DsBase"

    const-string v11, "registerClient"

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v4, -0x6

    .line 167
    .local v4, "error":I
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 169
    :try_start_0
    iput-object p1, p0, Lcom/atmos/api/DsBase;->context_:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/atmos/api/DsBase;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    .line 171
    new-instance v10, Lcom/atmos/api/DsClientInfo;

    invoke-direct {v10}, Lcom/atmos/api/DsClientInfo;-><init>()V

    iput-object v10, p0, Lcom/atmos/api/DsBase;->DsClientInfo_:Lcom/atmos/api/DsClientInfo;

    .line 172
    iget-object v10, p0, Lcom/atmos/api/DsBase;->DsClientInfo_:Lcom/atmos/api/DsClientInfo;

    iget-object v11, p0, Lcom/atmos/api/DsBase;->context_:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/atmos/api/DsClientInfo;->setPackageName(Ljava/lang/String;)V

    .line 173
    iget-object v10, p0, Lcom/atmos/api/DsBase;->DsClientInfo_:Lcom/atmos/api/DsClientInfo;

    iget v11, p0, Lcom/atmos/api/DsBase;->connectionBridge_:I

    invoke-virtual {v10, v11}, Lcom/atmos/api/DsClientInfo;->setConnectionBridge(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v4, 0x0

    .line 185
    :goto_0
    invoke-virtual {p0, v4}, Lcom/atmos/api/DsBase;->convertErrorCodeToException(I)V

    .line 187
    if-eqz p1, :cond_0

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v10, Lcom/atmos/api/IDs;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 191
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v6, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 193
    .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_2

    .line 194
    const-string v10, "DsBase"

    const-string v11, "registerClient() resolveInfos=null"

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0    # "bindIntent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_1
    return v9

    .line 178
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "registerClient"

    invoke-virtual {p0, v3, v10}, Lcom/atmos/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bindIntent":Landroid/content/Intent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-eq v10, v12, :cond_3

    .line 200
    const-string v10, "DsBase"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "registerClient() resolveInfos.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_3
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 205
    .local v8, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 206
    .local v5, "packageName":Ljava/lang/String;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 207
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    iget-object v9, p0, Lcom/atmos/api/DsBase;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v9, v12}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v9

    goto :goto_1
.end method

.method public requestAccessRight(I)I
    .locals 4
    .param p1, "accessRight"    # I

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 301
    .local v1, "error":I
    :try_start_0
    iget-object v2, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    iget v3, p0, Lcom/atmos/api/DsBase;->clientHandle_:I

    invoke-interface {v2, v3, p1}, Lcom/atmos/api/IDs;->iRequestAccessRight(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    :goto_0
    return v1

    .line 303
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "requestAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setConnectionInfo(I)V
    .locals 0
    .param p1, "access"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/atmos/api/DsBase;->connectionBridge_:I

    .line 149
    return-void
.end method

.method public unregisterClient()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    const-string v1, "DsBase"

    const-string v2, "unregisterClient"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    if-eqz v1, :cond_1

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    iget v2, p0, Lcom/atmos/api/DsBase;->clientHandle_:I

    invoke-interface {v1, v2}, Lcom/atmos/api/IDs;->iUnregisterDsAccess(I)V

    .line 233
    iget-object v1, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    iget v2, p0, Lcom/atmos/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/atmos/api/DsBase;->deathHandler_:Lcom/atmos/api/IDsDeathHandler;

    invoke-interface {v1, v2, v3}, Lcom/atmos/api/IDs;->iUnregisterDeathHandler(ILcom/atmos/api/IDsDeathHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/atmos/api/DsBase;->context_:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/atmos/api/DsBase;->context_:Landroid/content/Context;

    iget-object v2, p0, Lcom/atmos/api/DsBase;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 243
    iput-object v4, p0, Lcom/atmos/api/DsBase;->context_:Landroid/content/Context;

    .line 245
    :cond_0
    iput-object v4, p0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    .line 247
    :cond_1
    iput-object v4, p0, Lcom/atmos/api/DsBase;->DsClientInfo_:Lcom/atmos/api/DsClientInfo;

    .line 248
    iput-object v4, p0, Lcom/atmos/api/DsBase;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    .line 249
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unregisterClient"

    invoke-virtual {p0, v0, v1}, Lcom/atmos/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
