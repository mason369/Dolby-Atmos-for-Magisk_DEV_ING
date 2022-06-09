.class public Lcom/atmos/service/DsService;
.super Landroid/app/Service;
.source "DsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/service/DsService$DsClientDeathHandler;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private arManager_:Lcom/atmos/service/DsAccessRightManager;

.field private final binder_:Lcom/atmos/api/IDs$Stub;

.field private cbkManager_:Lcom/atmos/service/DsCallbackManager;

.field private cob:Landroid/database/ContentObserver;

.field private currProfile:Landroid/database/ContentObserver;

.field private final dsClientDeathHandlerList_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/atmos/service/DsService$DsClientDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private dsClientInfoMap_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/atmos/api/DsClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dsManager_:Lcom/atmos/ds/DsManager;

.field private geqBandCount_:I

.field private intentReceiver_:Landroid/content/BroadcastReceiver;

.field private final lockDolbyContext_:Ljava/lang/Object;

.field private visManager_:Lcom/atmos/service/DsVisualizerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/atmos/service/DsService$1;

    invoke-direct {v0}, Lcom/atmos/service/DsService$1;-><init>()V

    sput-object v0, Lcom/atmos/service/DsService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/atmos/service/DsService;->geqBandCount_:I

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsService;->dsClientInfoMap_:Ljava/util/HashMap;

    .line 169
    iput-object v1, p0, Lcom/atmos/service/DsService;->visManager_:Lcom/atmos/service/DsVisualizerManager;

    .line 176
    iput-object v1, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 183
    iput-object v1, p0, Lcom/atmos/service/DsService;->arManager_:Lcom/atmos/service/DsAccessRightManager;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/atmos/service/DsService;->dsClientDeathHandlerList_:Ljava/util/HashMap;

    .line 204
    new-instance v0, Lcom/atmos/service/DsService$2;

    invoke-direct {v0, p0}, Lcom/atmos/service/DsService$2;-><init>(Lcom/atmos/service/DsService;)V

    iput-object v0, p0, Lcom/atmos/service/DsService;->intentReceiver_:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v0, Lcom/atmos/service/DsService$3;

    invoke-direct {v0, p0}, Lcom/atmos/service/DsService$3;-><init>(Lcom/atmos/service/DsService;)V

    iput-object v0, p0, Lcom/atmos/service/DsService;->binder_:Lcom/atmos/api/IDs$Stub;

    .line 1954
    new-instance v0, Lcom/atmos/service/DsService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/atmos/service/DsService$4;-><init>(Lcom/atmos/service/DsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/atmos/service/DsService;->currProfile:Landroid/database/ContentObserver;

    .line 1972
    new-instance v0, Lcom/atmos/service/DsService$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/atmos/service/DsService$5;-><init>(Lcom/atmos/service/DsService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/atmos/service/DsService;->cob:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Lcom/atmos/service/DsService;->showToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/atmos/service/DsService;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/atmos/service/DsService;->doSetDsOn(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/atmos/service/DsService;->arManager_:Lcom/atmos/service/DsAccessRightManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/atmos/service/DsService;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/atmos/service/DsService;->doSetSelectedProfile(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsVisualizerManager;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/atmos/service/DsService;->visManager_:Lcom/atmos/service/DsVisualizerManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/atmos/service/DsService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsClientInfoMap_:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/atmos/service/DsService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/service/DsService;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsClientDeathHandlerList_:Ljava/util/HashMap;

    return-object v0
.end method

.method private createDs(Landroid/content/Intent;)V
    .locals 14
    .param p1, "callerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 505
    const-string v11, "DsService"

    const-string v12, "createDs()"

    invoke-static {v11, v12}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v11, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v11

    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/atmos/service/DsService;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "dir":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/atmos/service/DsConfiguration;->prepare(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 513
    .local v6, "in":Ljava/io/InputStream;
    iget-object v12, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-static {v6, v3}, Lcom/atmos/ds/DsManager;->loadSettings(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 515
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->getGeqBandCount()I

    move-result v12

    iput v12, p0, Lcom/atmos/service/DsService;->geqBandCount_:I

    .line 516
    iget v12, p0, Lcom/atmos/service/DsService;->geqBandCount_:I

    if-lez v12, :cond_2

    .line 518
    new-instance v12, Lcom/atmos/ds/DsManager;

    invoke-direct {v12}, Lcom/atmos/ds/DsManager;-><init>()V

    iput-object v12, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 519
    iget-object v12, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/atmos/ds/DsManager;->createDsEffect(I)V

    .line 522
    iget-object v12, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v12}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v12

    if-ne v12, v10, :cond_0

    move v7, v10

    .line 523
    .local v7, "on":Z
    :cond_0
    iget-object v12, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v12}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v9

    .line 524
    .local v9, "profile":I
    invoke-static {v9}, Lcom/atmos/service/DsService;->setDsProfileState(I)V

    .line 525
    if-ne v7, v10, :cond_1

    const-string v0, "on"

    .line 526
    .local v0, "curState":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/atmos/ds/DsProperty;->setStateProperty(Ljava/lang/String;)V

    .line 527
    iget-object v10, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v10, v9}, Lcom/atmos/ds/DsManager;->setProfileProperties(I)V

    .line 531
    const-string v2, "com.atmos.daxappUI"

    .line 532
    .local v2, "defPackage":Ljava/lang/String;
    const-string v1, "com.atmos.daxappUI.MainActivity"

    .line 533
    .local v1, "defName":Ljava/lang/String;
    const-string v10, "musicfx"

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, Lcom/atmos/service/DsService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 534
    .local v8, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 535
    .local v4, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v10, "defaultpanelpackage"

    invoke-interface {v4, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 536
    const-string v10, "defaultpanelname"

    invoke-interface {v4, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    const-string v10, "DsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wrote "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " as default"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .end local v0    # "curState":Ljava/lang/String;
    .end local v1    # "defName":Ljava/lang/String;
    .end local v2    # "defPackage":Ljava/lang/String;
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "on":Z
    .end local v8    # "pref":Landroid/content/SharedPreferences;
    .end local v9    # "profile":I
    :goto_1
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    return-void

    .line 525
    .restart local v3    # "dir":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "on":Z
    .restart local v9    # "profile":I
    :cond_1
    :try_start_2
    const-string v0, "off"

    goto :goto_0

    .line 542
    .end local v7    # "on":Z
    .end local v9    # "profile":I
    :cond_2
    const-string v10, "DsService"

    const-string v12, "createDs() FAILED! graphic equalizer band count NOT initialized yet."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 550
    .end local v3    # "dir":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 552
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v10, "DsService"

    const-string v12, "Ds() FAILED! Exception"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 555
    .end local v5    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 547
    .restart local v3    # "dir":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    :cond_3
    :try_start_4
    const-string v10, "DsService"

    const-string v12, "createDs() FAILED! DS settings are NOT loaded successfully."

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private doSetDsOn(IZ)I
    .locals 13
    .param p1, "handle"    # I
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1841
    iget-object v12, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v12

    .line 1843
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->getDsSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    sget-object v0, Lcom/atmos/service/DsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1846
    const-string v0, "DsService"

    const-string v1, "DS_REQUEST_FAILED_EFFECT_SUSPENDED"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    monitor-exit v12

    move v0, v10

    .line 1875
    :goto_0
    return v0

    .line 1850
    :cond_0
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0, p2}, Lcom/atmos/ds/DsManager;->setDsOn(Z)V

    .line 1853
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v3

    .line 1854
    .local v3, "newStatus":I
    if-ne v3, v10, :cond_2

    const-string v7, "on"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    .local v7, "curState":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-static {v7}, Lcom/atmos/ds/DsProperty;->setStateProperty(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1865
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/atmos/service/DsService;->arManager_:Lcom/atmos/service/DsAccessRightManager;

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v9

    .line 1866
    .local v9, "isGlobal":Z
    if-eqz v9, :cond_1

    .line 1868
    iget-object v0, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1869
    iget-object v0, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1870
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V

    .line 1873
    :cond_1
    iget-object v0, p0, Lcom/atmos/service/DsService;->visManager_:Lcom/atmos/service/DsVisualizerManager;

    if-ne v3, v10, :cond_3

    :goto_3
    invoke-virtual {v0, v10}, Lcom/atmos/service/DsVisualizerManager;->toggleVisualizer(Z)V

    .line 1874
    monitor-exit v12

    move v0, v11

    .line 1875
    goto :goto_0

    .line 1854
    .end local v7    # "curState":Ljava/lang/String;
    .end local v9    # "isGlobal":Z
    :cond_2
    const-string v7, "off"

    goto :goto_1

    .line 1859
    .restart local v7    # "curState":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1861
    .local v8, "ex":Ljava/lang/Exception;
    const-string v0, "DsService"

    const-string v1, "Exception found in setting DS state property"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1874
    .end local v3    # "newStatus":I
    .end local v7    # "curState":Ljava/lang/String;
    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .restart local v3    # "newStatus":I
    .restart local v7    # "curState":Ljava/lang/String;
    .restart local v9    # "isGlobal":Z
    :cond_3
    move v10, v11

    .line 1873
    goto :goto_3
.end method

.method private doSetSelectedProfile(II)Z
    .locals 4
    .param p1, "handle"    # I
    .param p2, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 1880
    iget-object v3, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v3

    .line 1882
    :try_start_0
    iget-object v2, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v2, p2}, Lcom/atmos/ds/DsManager;->setSelectedProfile(I)Z

    move-result v1

    .line 1883
    .local v1, "success":Z
    iget-object v2, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v2}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v0

    .line 1885
    .local v0, "newProfile":I
    if-eqz v1, :cond_0

    if-ne p2, v0, :cond_0

    .line 1887
    invoke-direct {p0, p1, p2}, Lcom/atmos/service/DsService;->doUpdateSelectedProfile(II)V

    .line 1890
    :cond_0
    if-eqz v1, :cond_1

    if-ne p2, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    monitor-exit v3

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1891
    .end local v0    # "newProfile":I
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private doToggleDsOn(I)I
    .locals 5
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1832
    iget-object v3, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v3

    .line 1834
    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v4}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v0, v1

    .line 1835
    .local v0, "on":Z
    :goto_0
    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/atmos/service/DsService;->doSetDsOn(IZ)I

    move-result v1

    monitor-exit v3

    return v1

    .end local v0    # "on":Z
    :cond_0
    move v0, v2

    .line 1834
    goto :goto_0

    .restart local v0    # "on":Z
    :cond_1
    move v1, v2

    .line 1835
    goto :goto_1

    .line 1836
    .end local v0    # "on":Z
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doUpdateSelectedProfile(II)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "profile"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1897
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0, p2}, Lcom/atmos/ds/DsManager;->setProfileProperties(I)V

    .line 1900
    iget-object v0, p0, Lcom/atmos/service/DsService;->arManager_:Lcom/atmos/service/DsAccessRightManager;

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v7

    .line 1901
    .local v7, "isGlobal":Z
    if-eqz v7, :cond_0

    .line 1903
    iget-object v0, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    move v2, p1

    move v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1904
    iget-object v0, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    move v2, p1

    move v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1905
    iget-object v0, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V

    .line 1907
    :cond_0
    return-void
.end method

.method private getDsConsumerAppIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.atmos.LAUNCH_DS_APP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/atmos/service/DsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 562
    .local v1, "p":Landroid/content/pm/PackageManager;
    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 563
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDsProfileState()I
    .locals 3

    .prologue
    .line 1921
    sget-object v0, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ds.state.profile"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setDsOnOffStateChange(Ljava/lang/String;)V
    .locals 4
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 1944
    const-string v1, "dolby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set Ds state--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1947
    const/4 v0, 0x1

    .line 1951
    .local v0, "currState":Z
    :goto_0
    invoke-static {v0}, Lcom/atmos/service/DsService;->setDsOnOffStateChange(Z)V

    .line 1952
    return-void

    .line 1949
    .end local v0    # "currState":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "currState":Z
    goto :goto_0
.end method

.method public static setDsOnOffStateChange(Z)V
    .locals 6
    .param p0, "satus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1910
    const-string v1, "dolby"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set Ds state--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    sget-object v1, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dolby.ds.state"

    if-eqz p0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1912
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.atmos.ds.STATE_CHANGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1913
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "state"

    if-eqz p0, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1914
    sget-object v1, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1915
    return-void

    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    move v1, v3

    .line 1911
    goto :goto_0

    .restart local v0    # "i":Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 1913
    goto :goto_1
.end method

.method public static setDsProfileState(I)V
    .locals 2
    .param p0, "profile"    # I

    .prologue
    .line 1917
    sget-object v0, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ds.state.profile"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1918
    return-void
.end method

.method private static showToast()V
    .locals 3

    .prologue
    .line 1970
    sget-object v0, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    const v1, 0x7f03000d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1971
    return-void
.end method


# virtual methods
.method public getDsOnOffStateChange()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1925
    :try_start_0
    const-string v5, "dolby"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDsOnOffStateChange--->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dolby.ds.state"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    sget-object v5, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dolby.ds.state"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1941
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1926
    goto :goto_0

    .line 1927
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1930
    :try_start_1
    iget-object v5, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    if-eqz v5, :cond_2

    .line 1931
    iget-object v5, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    invoke-virtual {v5}, Lcom/atmos/ds/DsManager;->getDsOn()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1932
    .local v2, "newStatus":I
    if-eq v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 1935
    .end local v2    # "newStatus":I
    :catch_1
    move-exception v1

    .line 1936
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e2":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 1941
    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 465
    const-string v0, "DsService"

    const-string v1, "DsService.onBind()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-class v0, Lcom/atmos/api/IDs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/atmos/service/DsService;->binder_:Lcom/atmos/api/IDs$Stub;

    .line 473
    :goto_0
    return-object v0

    .line 472
    :cond_0
    const-string v0, "DsService"

    const-string v1, "/DsService.onBind() - return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 336
    const-string v2, "DsService"

    const-string v3, "DsService.onCreate()"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sput-object p0, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    .line 341
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/atmos/service/DsService;->createDs(Landroid/content/Intent;)V

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .local v0, "commandFilter":Landroid/content/IntentFilter;
    const-string v2, "com.atmos.ds.srvcmd.init"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    const-string v2, "android.intent.action.REBOOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v2, "media_server_started"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v2, "DOLBY_DEVICE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v2, "DS_EFFECT_SUSPEND_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v2, "DS_AUDIO_FOCUS_CHANGE_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v2, "com.atmos.ds1appUI.SET_PROFILE_TYPE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/atmos/service/DsService;->intentReceiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/atmos/service/DsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    new-instance v2, Lcom/atmos/service/DsCallbackManager;

    invoke-direct {v2}, Lcom/atmos/service/DsCallbackManager;-><init>()V

    iput-object v2, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    .line 358
    new-instance v2, Lcom/atmos/service/DsAccessRightManager;

    iget-object v3, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    iget-object v4, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    invoke-direct {v2, v3, v4}, Lcom/atmos/service/DsAccessRightManager;-><init>(Lcom/atmos/ds/DsManager;Lcom/atmos/service/DsCallbackManager;)V

    iput-object v2, p0, Lcom/atmos/service/DsService;->arManager_:Lcom/atmos/service/DsAccessRightManager;

    .line 359
    new-instance v2, Lcom/atmos/service/DsVisualizerManager;

    iget-object v3, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    iget-object v4, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    invoke-direct {v2, v3, v4}, Lcom/atmos/service/DsVisualizerManager;-><init>(Lcom/atmos/ds/DsManager;Lcom/atmos/service/DsCallbackManager;)V

    iput-object v2, p0, Lcom/atmos/service/DsService;->visManager_:Lcom/atmos/service/DsVisualizerManager;

    .line 360
    invoke-virtual {p0}, Lcom/atmos/service/DsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dolby.ds.state"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/atmos/service/DsService;->cob:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    invoke-virtual {p0}, Lcom/atmos/service/DsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ds.state.profile"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/atmos/service/DsService;->currProfile:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v0    # "commandFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v1

    .line 365
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "DsService"

    const-string v3, "Exception found in DsService.onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 376
    const-string v1, "DsService"

    const-string v2, "DsService.onDestroy()"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v2

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/atmos/ds/DsManager;->setDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    iget-object v1, p0, Lcom/atmos/service/DsService;->cbkManager_:Lcom/atmos/service/DsCallbackManager;

    invoke-virtual {v1}, Lcom/atmos/service/DsCallbackManager;->release()V

    .line 392
    iget-object v1, p0, Lcom/atmos/service/DsService;->arManager_:Lcom/atmos/service/DsAccessRightManager;

    invoke-virtual {v1}, Lcom/atmos/service/DsAccessRightManager;->release()V

    .line 394
    iget-object v1, p0, Lcom/atmos/service/DsService;->visManager_:Lcom/atmos/service/DsVisualizerManager;

    invoke-virtual {v1}, Lcom/atmos/service/DsVisualizerManager;->release()V

    .line 395
    iput-object v4, p0, Lcom/atmos/service/DsService;->dsManager_:Lcom/atmos/ds/DsManager;

    .line 396
    iget-object v1, p0, Lcom/atmos/service/DsService;->intentReceiver_:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/atmos/service/DsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 397
    sput-object v4, Lcom/atmos/service/DsService;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {p0}, Lcom/atmos/service/DsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/service/DsService;->cob:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 399
    invoke-virtual {p0}, Lcom/atmos/service/DsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/service/DsService;->currProfile:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 400
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 386
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DsService"

    const-string v3, "Exception found in DsService.onDestory()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "DsService"

    const-string v1, "DsService.onLowMemory()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "callerIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 408
    const-string v4, "DsService"

    const-string v5, "DsService.onStartCommand()"

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    if-eqz p1, :cond_3

    .line 414
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "action":Ljava/lang/String;
    const-string v4, "DsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v4, "com.atmos.ds.srvcmd.toggleonoff"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 419
    iget-object v5, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/atmos/service/DsService;->doToggleDsOn(I)I

    .line 422
    monitor-exit v5

    .line 456
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 422
    .restart local v0    # "action":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 449
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 451
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "DsService"

    const-string v5, "DsService.onStartCommand() exception found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v4, "com.atmos.ds.srvcmd.select"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    iget-object v5, p0, Lcom/atmos/service/DsService;->lockDolbyContext_:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 428
    :try_start_4
    const-string v4, "cmd"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 430
    .local v3, "profile":I
    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lcom/atmos/service/DsService;->doSetSelectedProfile(II)Z

    .line 431
    monitor-exit v5

    goto :goto_0

    .end local v3    # "profile":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4

    .line 433
    :cond_2
    const-string v4, "com.atmos.ds.srvcmd.launchapp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/atmos/service/DsService;->getDsConsumerAppIntent()Landroid/content/Intent;

    move-result-object v2

    .line 436
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 438
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v2}, Lcom/atmos/service/DsService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 446
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, "DsService"

    const-string v5, "onStartCommand: callerIntent==null, ignoring..."

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 482
    const-string v0, "DsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DsService.onTrimMemory() level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method
