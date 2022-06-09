.class Lcom/atmos/service/DsService$3;
.super Lcom/atmos/api/IDs$Stub;
.source "DsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/service/DsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/service/DsService;


# direct methods
.method constructor <init>(Lcom/atmos/service/DsService;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-direct {p0}, Lcom/atmos/api/IDs$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public iAbandonAccessRight(II)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "type"    # I

    .prologue
    .line 1519
    const-string v3, "DsService"

    const-string v4, "DsService.iAbandonAccessRight"

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const/4 v2, -0x6

    .line 1522
    .local v2, "error":I
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1526
    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    const-string v5, "audio"

    invoke-virtual {v3, v5}, Lcom/atmos/service/DsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1527
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/atmos/service/DsAccessRightManager;->abandonAccessRight(IILandroid/media/AudioManager;)I

    move-result v2

    .line 1528
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/atmos/service/DsAccessRightManager;->unRegisterDsVersion(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 1536
    return v2

    .line 1530
    :catch_0
    move-exception v1

    .line 1532
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "DsService"

    const-string v5, "Exception in iAbandonAccessRight"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1535
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public iActivateTuning(IILjava/lang/String;)I
    .locals 3
    .param p1, "handle"    # I
    .param p2, "endpointPort"    # I
    .param p3, "productId"    # Ljava/lang/String;

    .prologue
    .line 1686
    const-string v1, "DsService"

    const-string v2, "DsService.iActivateTuning"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const/4 v0, -0x6

    .line 1691
    .local v0, "error":I
    return v0
.end method

.method public iCheckAccessRight(II[I)I
    .locals 5
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "state"    # [I

    .prologue
    .line 1551
    const-string v2, "DsService"

    const-string v3, "DsService.iCheckAccessRight"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/4 v1, -0x6

    .line 1554
    .local v1, "error":I
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1558
    if-eqz p3, :cond_0

    .line 1560
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/atmos/service/DsAccessRightManager;->checkAccessRight(II)I

    move-result v4

    aput v4, p3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    const/4 v1, 0x0

    .line 1573
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 1574
    return v1

    .line 1565
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 1568
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsService"

    const-string v4, "Exception in iGetAccessLock"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1573
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public iDeactivateTuning(IILjava/lang/String;)I
    .locals 3
    .param p1, "handle"    # I
    .param p2, "endpointPort"    # I
    .param p3, "productId"    # Ljava/lang/String;

    .prologue
    .line 1706
    const-string v1, "DsService"

    const-string v2, "DsService.iDeactivateTuning"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    const/4 v0, -0x6

    .line 1711
    .local v0, "error":I
    return v0
.end method

.method public iGetDapLibraryVersion([Ljava/lang/String;)I
    .locals 5
    .param p1, "version"    # [Ljava/lang/String;

    .prologue
    .line 964
    const-string v2, "DsService"

    const-string v3, "DsService.iGetDapLibraryVersion"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const/4 v1, -0x6

    .line 967
    .local v1, "error":I
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 971
    if-eqz p1, :cond_0

    .line 973
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/atmos/ds/DsManager;->getDsApVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    const/4 v1, 0x0

    .line 992
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 993
    return v1

    .line 978
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v2, "DsService"

    const-string v4, "DeadObjectException in iGetDapLibraryVersion"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 985
    const/4 v1, -0x2

    .line 991
    goto :goto_0

    .line 987
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsService"

    const-string v4, "Exception in iGetDapLibraryVersion"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 992
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public iGetDsServiceVersion([Ljava/lang/String;)I
    .locals 4
    .param p1, "version"    # [Ljava/lang/String;

    .prologue
    .line 936
    const-string v1, "DsService"

    const-string v2, "DsService.getDsVersion"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v0, -0x6

    .line 939
    .local v0, "error":I
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 941
    if-eqz p1, :cond_0

    .line 943
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/atmos/ds/DsManager;->getDsVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 944
    const/4 v0, 0x0

    .line 950
    :goto_0
    monitor-exit v2

    .line 951
    return v0

    .line 948
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iGetIeqPreset(I[I)I
    .locals 6
    .param p1, "device"    # I
    .param p2, "preset"    # [I

    .prologue
    .line 1206
    const-string v3, "DsService"

    const-string v4, "DsService.iGetIeqPreset"

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const/4 v1, -0x6

    .line 1209
    .local v1, "error":I
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1213
    if-eqz p2, :cond_0

    .line 1215
    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v2

    .line 1216
    .local v2, "profile":I
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v5}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/atmos/ds/DsManager;->getIeqPreset(I)I

    move-result v5

    aput v5, p2, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    const/4 v1, 0x0

    .line 1235
    .end local v2    # "profile":I
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 1236
    return v1

    .line 1221
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 1224
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DsService"

    const-string v5, "IllegalArgumentException in getIeqPreset"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1228
    const/4 v1, -0x1

    .line 1234
    goto :goto_0

    .line 1230
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DsService"

    const-string v5, "Exception in getIeqPreset"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1235
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public iGetIeqPresetCount(I[I)I
    .locals 4
    .param p1, "device"    # I
    .param p2, "count"    # [I

    .prologue
    .line 1250
    const-string v1, "DsService"

    const-string v2, "DsService.iGetIeqPresetCount()"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const/4 v0, -0x6

    .line 1253
    .local v0, "error":I
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1255
    if-eqz p2, :cond_0

    .line 1257
    const/4 v1, 0x0

    const/4 v3, 0x4

    :try_start_0
    aput v3, p2, v1

    .line 1258
    const/4 v0, 0x0

    .line 1264
    :goto_0
    monitor-exit v2

    .line 1265
    return v0

    .line 1262
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1264
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iGetMonoSpeaker([Z)I
    .locals 5
    .param p1, "mono"    # [Z

    .prologue
    .line 1619
    const-string v2, "DsService"

    const-string v3, "DsService.iGetMonoSpeaker"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const/4 v0, -0x6

    .line 1622
    .local v0, "error":I
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1624
    if-eqz p1, :cond_1

    .line 1626
    :try_start_0
    invoke-static {}, Lcom/atmos/ds/DsProperty;->getMonoSpeakerProperty()Ljava/lang/String;

    move-result-object v1

    .line 1627
    .local v1, "monoSpeaker":Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1629
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-boolean v4, p1, v2

    .line 1635
    :goto_0
    const/4 v0, 0x0

    .line 1641
    .end local v1    # "monoSpeaker":Ljava/lang/String;
    :goto_1
    monitor-exit v3

    .line 1642
    return v0

    .line 1633
    .restart local v1    # "monoSpeaker":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-boolean v4, p1, v2

    goto :goto_0

    .line 1641
    .end local v1    # "monoSpeaker":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1639
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public iGetOffType([I)I
    .locals 5
    .param p1, "offType"    # [I

    .prologue
    .line 894
    const-string v2, "DsService"

    const-string v3, "iGetOffType"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v1, 0x0

    .line 897
    .local v1, "error":I
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 899
    if-eqz p1, :cond_0

    .line 903
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/atmos/ds/DsManager;->getOffType()I

    move-result v4

    aput v4, p1, v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 923
    return v1

    .line 905
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v2, "DsService"

    const-string v4, "DeadObjectException in iGetOffType"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 909
    const/4 v1, -0x2

    .line 916
    goto :goto_0

    .line 911
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "DsService"

    const-string v4, "IllegalStateException in iGetOffType"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 915
    const/4 v1, -0x6

    .line 916
    goto :goto_0

    .line 920
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 922
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public iGetParamLength(I[I)I
    .locals 4
    .param p1, "paramId"    # I
    .param p2, "len"    # [I

    .prologue
    .line 1656
    const-string v1, "DsService"

    const-string v2, "DsService.iGetParamLength"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const/4 v0, -0x6

    .line 1659
    .local v0, "error":I
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1661
    if-eqz p2, :cond_0

    .line 1663
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/atmos/ds/DsManager;->getParamLength(I)I

    move-result v3

    aput v3, p2, v1

    .line 1664
    const/4 v0, 0x0

    .line 1670
    :goto_0
    monitor-exit v2

    .line 1671
    return v0

    .line 1668
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1670
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iGetParameter(III[I)I
    .locals 7
    .param p1, "device"    # I
    .param p2, "profile"    # I
    .param p3, "paramId"    # I
    .param p4, "values"    # [I

    .prologue
    .line 1107
    const-string v3, "DsService"

    const-string v4, "DsService.iGetParameter()"

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const/4 v1, -0x6

    .line 1110
    .local v1, "error":I
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1114
    if-eqz p4, :cond_0

    .line 1116
    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/atmos/ds/DsManager;->getParameter(II)[I

    move-result-object v2

    .line 1117
    .local v2, "realParam":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v3, p4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    const/4 v1, 0x0

    .line 1130
    .end local v2    # "realParam":[I
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 1131
    return v1

    .line 1122
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DsService"

    const-string v5, "Exception in iGetParameter"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1130
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public iGetProfile(I[I)I
    .locals 4
    .param p1, "device"    # I
    .param p2, "profile"    # [I

    .prologue
    .line 1338
    const-string v1, "DsService"

    const-string v2, "DsService.iGetProfile"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const/4 v0, -0x6

    .line 1341
    .local v0, "error":I
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1343
    if-eqz p2, :cond_0

    .line 1345
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v3

    aput v3, p2, v1

    .line 1346
    const/4 v0, 0x0

    .line 1352
    :goto_0
    monitor-exit v2

    .line 1353
    return v0

    .line 1350
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1352
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iGetProfileCount(I[I)I
    .locals 4
    .param p1, "device"    # I
    .param p2, "count"    # [I

    .prologue
    .line 1448
    const-string v1, "DsService"

    const-string v2, "DsService.getProfileCount()"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const/4 v0, -0x6

    .line 1451
    .local v0, "error":I
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1453
    if-eqz p2, :cond_0

    .line 1455
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/atmos/ds/DsManager;->getProfileCount()I

    move-result v3

    aput v3, p2, v1

    .line 1456
    const/4 v0, 0x0

    .line 1462
    :goto_0
    monitor-exit v2

    .line 1463
    return v0

    .line 1460
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1462
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iGetProfileModified(II[Z)I
    .locals 5
    .param p1, "device"    # I
    .param p2, "profile"    # I
    .param p3, "flag"    # [Z

    .prologue
    const/4 v1, 0x0

    .line 1590
    const-string v2, "DsService"

    const-string v3, "DsService.iGetProfileModified"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const/4 v0, -0x6

    .line 1593
    .local v0, "error":I
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1595
    if-eqz p3, :cond_1

    .line 1597
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/atmos/ds/DsManager;->getProfileModified(I)I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    aput-boolean v1, p3, v3

    .line 1598
    const-string v1, "DsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DsService.iGetProfileModified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-boolean v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const/4 v0, 0x0

    .line 1605
    :goto_1
    monitor-exit v2

    .line 1606
    return v0

    .line 1597
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1603
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 1605
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iGetProfileName(II[Lcom/atmos/api/DsProfileName;)I
    .locals 6
    .param p1, "handle"    # I
    .param p2, "profile"    # I
    .param p3, "name"    # [Lcom/atmos/api/DsProfileName;

    .prologue
    .line 1785
    const-string v3, "DsService"

    const-string v4, "DsService.iGetProfileName"

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const/4 v1, -0x6

    .line 1788
    .local v1, "error":I
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1792
    if-eqz p3, :cond_0

    .line 1794
    :try_start_0
    iget-object v3, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/atmos/ds/DsManager;->getProfileName(I)Lcom/atmos/api/DsProfileName;

    move-result-object v2

    .line 1795
    .local v2, "realName":Lcom/atmos/api/DsProfileName;
    const/4 v3, 0x0

    aput-object v2, p3, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1796
    const/4 v1, 0x0

    .line 1820
    .end local v2    # "realName":Lcom/atmos/api/DsProfileName;
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 1821
    return v1

    .line 1800
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1805
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DsService"

    const-string v5, "IllegalArgumentException in iGetProfileName"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1807
    const/4 v1, -0x1

    .line 1819
    goto :goto_0

    .line 1809
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1811
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "DsService"

    const-string v5, "UnsupportedOperationException in iGetProfileName"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 1813
    const/4 v1, -0x1

    .line 1819
    goto :goto_0

    .line 1815
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DsService"

    const-string v5, "Exception in iGetProfileName"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1820
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public iGetState(I[I)I
    .locals 5
    .param p1, "Device"    # I
    .param p2, "on"    # [I

    .prologue
    .line 802
    const-string v2, "DsService"

    const-string v3, "DsService.iGetState()"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const/4 v1, -0x6

    .line 805
    .local v1, "error":I
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 809
    if-eqz p2, :cond_0

    .line 811
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v4

    aput v4, p2, v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    const/4 v1, 0x0

    .line 830
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 831
    return v1

    .line 816
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v2, "DsService"

    const-string v4, "DeadObjectException in iGetState"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 823
    const/4 v1, -0x2

    .line 829
    goto :goto_0

    .line 825
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsService"

    const-string v4, "Exception in iGetState"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 830
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public iGetUdcLibraryVersion([Ljava/lang/String;)I
    .locals 4
    .param p1, "version"    # [Ljava/lang/String;

    .prologue
    .line 1006
    const-string v1, "DsService"

    const-string v2, "DsService.iGetUdcLibraryVersion()"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/4 v0, -0x6

    .line 1009
    .local v0, "error":I
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1011
    if-eqz p1, :cond_0

    .line 1013
    const/4 v1, 0x0

    :try_start_0
    const-string v3, "@@@UDC_VERSION@@@"

    aput-object v3, p1, v1

    .line 1014
    const/4 v0, 0x0

    .line 1020
    :goto_0
    monitor-exit v2

    .line 1021
    return v0

    .line 1018
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iRegisterCallback(ILcom/atmos/api/IDsCallbacks;I)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "cb"    # Lcom/atmos/api/IDsCallbacks;
    .param p3, "version"    # I

    .prologue
    .line 748
    if-eqz p2, :cond_1

    .line 750
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/atmos/service/DsCallbackManager;->register(Lcom/atmos/api/IDsCallbacks;II)V

    .line 753
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/atmos/service/DsAccessRightManager;->registerDsVersion(II)V

    .line 757
    :cond_0
    const-string v0, "DsService"

    const-string v2, "iRegisterCallback"

    invoke-static {v0, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    monitor-exit v1

    .line 760
    :cond_1
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iRegisterDeathHandler(ILcom/atmos/api/IDsDeathHandler;)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "dh"    # Lcom/atmos/api/IDsDeathHandler;

    .prologue
    .line 653
    const-string v2, "DsService"

    const-string v3, "iRegisterDeathHandler"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz p2, :cond_0

    .line 657
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 659
    :try_start_0
    new-instance v0, Lcom/atmos/service/DsService$DsClientDeathHandler;

    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-direct {v0, v2, p2, p1}, Lcom/atmos/service/DsService$DsClientDeathHandler;-><init>(Lcom/atmos/service/DsService;Lcom/atmos/api/IDsDeathHandler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    .local v0, "clientDeathHandler":Lcom/atmos/service/DsService$DsClientDeathHandler;
    :try_start_1
    invoke-virtual {v0}, Lcom/atmos/service/DsService$DsClientDeathHandler;->linkToDeath()V

    .line 663
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$900(Lcom/atmos/service/DsService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {p2}, Lcom/atmos/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 671
    .end local v0    # "clientDeathHandler":Lcom/atmos/service/DsService$DsClientDeathHandler;
    :cond_0
    return-void

    .line 665
    .restart local v0    # "clientDeathHandler":Lcom/atmos/service/DsService$DsClientDeathHandler;
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DsService  iRegisterDeathHandler() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    .end local v0    # "clientDeathHandler":Lcom/atmos/service/DsService$DsClientDeathHandler;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public iRegisterDsAccess(ILcom/atmos/api/DsClientInfo;)V
    .locals 5
    .param p1, "handle"    # I
    .param p2, "info"    # Lcom/atmos/api/DsClientInfo;

    .prologue
    .line 706
    const-string v2, "DsService"

    const-string v3, "iRegisterDsAccess"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 710
    if-eqz p2, :cond_0

    .line 712
    :try_start_0
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$800(Lcom/atmos/service/DsService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {p2}, Lcom/atmos/api/DsClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/atmos/api/DsClientInfo;->getConnectionBridge()I

    move-result v0

    .line 715
    .local v0, "connected":I
    iget-object v2, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v2}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/atmos/service/DsAccessRightManager;->addDsConnectedApp(ILjava/lang/String;I)V

    .line 717
    .end local v0    # "connected":I
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public iRegisterVisualizerData(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 620
    const-string v0, "DsService"

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

    .line 622
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$700(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsVisualizerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsVisualizerManager;->register(I)V

    .line 625
    monitor-exit v1

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iRequestAccessRight(II)I
    .locals 10
    .param p1, "handle"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x2

    .line 1477
    const-string v6, "DsService"

    const-string v7, "DsService.iRequestAccessRight"

    invoke-static {v6, v7}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    const/4 v4, -0x6

    .line 1480
    .local v4, "error":I
    iget-object v6, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v6}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1484
    :try_start_0
    iget-object v7, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Lcom/atmos/service/DsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1485
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v7, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v7}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v7

    invoke-virtual {v7, p1, p2, v0}, Lcom/atmos/service/DsAccessRightManager;->requestAccessRight(IILandroid/media/AudioManager;)I

    move-result v4

    .line 1486
    iget-object v7, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v7}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, p1, v8}, Lcom/atmos/service/DsAccessRightManager;->registerDsVersion(II)V

    .line 1487
    if-eq p2, v9, :cond_0

    if-ne p2, v5, :cond_1

    .line 1489
    :cond_0
    if-nez v4, :cond_1

    .line 1491
    new-instance v1, Landroid/content/Intent;

    const-string v7, "DS_ACCESS_RIGHT_GRANTED"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v1, "broadcast":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1493
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "DS_GLOBAL"

    if-ne v9, p2, :cond_2

    :goto_0
    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1494
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1495
    iget-object v5, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-virtual {v5, v1}, Lcom/atmos/service/DsService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "broadcast":Landroid/content/Intent;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v6

    .line 1505
    return v4

    .line 1493
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v1    # "broadcast":Landroid/content/Intent;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1499
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "broadcast":Landroid/content/Intent;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 1501
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "DsService"

    const-string v7, "Exception in iSetAccessLock"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1504
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public iResetProfile(III)I
    .locals 15
    .param p1, "handle"    # I
    .param p2, "device"    # I
    .param p3, "profile"    # I

    .prologue
    .line 1367
    const-string v1, "DsService"

    const-string v2, "DsService.iResetProfile"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    const/4 v9, -0x6

    .line 1370
    .local v9, "error":I
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1374
    :try_start_0
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v10

    .line 1375
    .local v10, "isCleared":Z
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/atmos/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v12

    .line 1376
    .local v12, "isPermitted":Z
    if-eqz v12, :cond_5

    .line 1378
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/atmos/ds/DsManager;->resetProfile(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1381
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v1

    move/from16 v0, p3

    if-ne v0, v1, :cond_0

    .line 1383
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/atmos/ds/DsManager;->setProfileProperties(I)V

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/atmos/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v11

    .line 1387
    .local v11, "isGlobal":Z
    if-eqz v11, :cond_2

    .line 1389
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1390
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1391
    const/4 v1, 0x4

    move/from16 v0, p3

    if-lt v0, v1, :cond_1

    .line 1393
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/atmos/ds/DsManager;->getProfileName(I)Lcom/atmos/api/DsProfileName;

    move-result-object v13

    .line 1394
    .local v13, "name":Lcom/atmos/api/DsProfileName;
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1395
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1397
    .end local v13    # "name":Lcom/atmos/api/DsProfileName;
    :cond_1
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V

    .line 1399
    :cond_2
    const/4 v9, 0x0

    .line 1407
    .end local v11    # "isGlobal":Z
    :cond_3
    :goto_0
    if-eqz v10, :cond_4

    .line 1409
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    .end local v10    # "isCleared":Z
    .end local v12    # "isPermitted":Z
    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v14

    .line 1435
    return v9

    .line 1404
    .restart local v10    # "isCleared":Z
    .restart local v12    # "isPermitted":Z
    :cond_5
    const/4 v9, -0x5

    goto :goto_0

    .line 1412
    .end local v10    # "isCleared":Z
    .end local v12    # "isPermitted":Z
    :catch_0
    move-exception v8

    .line 1414
    .local v8, "e":Landroid/os/DeadObjectException;
    const-string v1, "DsService"

    const-string v2, "DeadObjectException in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    invoke-virtual {v8}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_1

    .line 1434
    .end local v8    # "e":Landroid/os/DeadObjectException;
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1417
    :catch_1
    move-exception v8

    .line 1419
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v1, "DsService"

    const-string v2, "IllegalArgumentException in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1421
    const/4 v9, -0x1

    .line 1433
    goto :goto_1

    .line 1423
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 1425
    .local v8, "e":Ljava/lang/UnsupportedOperationException;
    const-string v1, "DsService"

    const-string v2, "UnsupportedOperationException in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 1427
    const/4 v9, -0x1

    .line 1433
    goto :goto_1

    .line 1429
    .end local v8    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v8

    .line 1431
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "DsService"

    const-string v2, "Exception in resetProfile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public iSetIeqPreset(III)I
    .locals 12
    .param p1, "handle"    # I
    .param p2, "device"    # I
    .param p3, "preset"    # I

    .prologue
    .line 1146
    const-string v0, "DsService"

    const-string v1, "DsService.iSetIeqPreset"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v8, -0x6

    .line 1149
    .local v8, "error":I
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v10

    .line 1154
    .local v10, "isPermitted":Z
    if-eqz v10, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v3

    .line 1157
    .local v3, "profile":I
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v0

    invoke-virtual {v0, v3, p3}, Lcom/atmos/ds/DsManager;->setIeqPreset(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v9

    .line 1160
    .local v9, "isGlobal":Z
    if-eqz v9, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1163
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1164
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    :cond_0
    const/4 v8, 0x0

    .line 1191
    .end local v3    # "profile":I
    .end local v9    # "isGlobal":Z
    .end local v10    # "isPermitted":Z
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v11

    .line 1192
    return v8

    .line 1171
    .restart local v10    # "isPermitted":Z
    :cond_2
    const/4 v8, -0x5

    goto :goto_0

    .line 1174
    .end local v10    # "isPermitted":Z
    :catch_0
    move-exception v7

    .line 1176
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "DsService"

    const-string v1, "IllegalArgumentException in setIeqPreset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1178
    const/4 v8, -0x1

    .line 1190
    goto :goto_0

    .line 1180
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 1182
    .local v7, "e":Landroid/os/DeadObjectException;
    const-string v0, "DsService"

    const-string v1, "DeadObjectException in setIeqPreset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {v7}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 1184
    const/4 v8, -0x2

    .line 1190
    goto :goto_0

    .line 1186
    .end local v7    # "e":Landroid/os/DeadObjectException;
    :catch_2
    move-exception v7

    .line 1188
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "DsService"

    const-string v1, "Exception in setIeqPreset"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1191
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public iSetParameter(IIII[I)I
    .locals 16
    .param p1, "handle"    # I
    .param p2, "device"    # I
    .param p3, "profile"    # I
    .param p4, "paramId"    # I
    .param p5, "values"    # [I

    .prologue
    .line 1038
    const-string v3, "DsService"

    const-string v4, "DsService.iSetParameter()"

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/4 v11, -0x6

    .line 1041
    .local v11, "error":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 1045
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v12

    .line 1046
    .local v12, "isCleared":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/atmos/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v14

    .line 1047
    .local v14, "isPermitted":Z
    if-eqz v14, :cond_4

    .line 1049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/atmos/ds/DsManager;->setParameter(II[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1051
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 1053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/atmos/ds/DsManager;->setProfileProperties(I)V

    .line 1056
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/atmos/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v13

    .line 1057
    .local v13, "isGlobal":Z
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/atmos/ds/DsManager;->getSelectedProfile()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p1

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1062
    :cond_1
    const/4 v11, 0x0

    .line 1074
    .end local v13    # "isGlobal":Z
    :goto_0
    if-eqz v12, :cond_2

    .line 1076
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v3}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    .end local v12    # "isCleared":Z
    .end local v14    # "isPermitted":Z
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v15

    .line 1091
    return v11

    .line 1066
    .restart local v12    # "isCleared":Z
    .restart local v14    # "isPermitted":Z
    :cond_3
    const/4 v11, -0x1

    goto :goto_0

    .line 1071
    :cond_4
    const/4 v11, -0x5

    goto :goto_0

    .line 1079
    .end local v12    # "isCleared":Z
    .end local v14    # "isPermitted":Z
    :catch_0
    move-exception v10

    .line 1081
    .local v10, "e":Landroid/os/DeadObjectException;
    const-string v3, "DsService"

    const-string v4, "DeadObjectException in iSetParameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v10}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 1083
    const/4 v11, -0x2

    .line 1089
    goto :goto_1

    .line 1085
    .end local v10    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v10

    .line 1087
    .local v10, "e":Ljava/lang/Exception;
    const-string v3, "DsService"

    const-string v4, "Exception in iSetParameter"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1090
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public iSetProfile(III)I
    .locals 8
    .param p1, "handle"    # I
    .param p2, "device"    # I
    .param p3, "profile"    # I

    .prologue
    .line 1279
    const-string v5, "DsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DsService.iSetProfile("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const/4 v1, -0x6

    .line 1282
    .local v1, "error":I
    iget-object v5, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v5}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1286
    :try_start_0
    iget-object v5, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v5}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v7}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v2

    .line 1287
    .local v2, "isCleared":Z
    iget-object v5, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v5}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/atmos/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v3

    .line 1288
    .local v3, "isPermitted":Z
    if-eqz v3, :cond_2

    .line 1290
    iget-object v5, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v5, p1, p3}, Lcom/atmos/service/DsService;->access$600(Lcom/atmos/service/DsService;II)Z

    move-result v4

    .line 1291
    .local v4, "success":Z
    if-eqz v4, :cond_0

    .line 1293
    const/4 v1, 0x0

    .line 1301
    .end local v4    # "success":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1303
    iget-object v5, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v5}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    .end local v2    # "isCleared":Z
    .end local v3    # "isPermitted":Z
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v6

    .line 1324
    return v1

    .line 1298
    .restart local v2    # "isCleared":Z
    .restart local v3    # "isPermitted":Z
    :cond_2
    const/4 v1, -0x5

    goto :goto_0

    .line 1306
    .end local v2    # "isCleared":Z
    .end local v3    # "isPermitted":Z
    :catch_0
    move-exception v0

    .line 1308
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "DsService"

    const-string v7, "IllegalArgumentException in setSelectedProfile"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1310
    const/4 v1, -0x1

    .line 1322
    goto :goto_1

    .line 1312
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v5, "DsService"

    const-string v7, "DeadObjectException in setSelectedProfile"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 1316
    const/4 v1, -0x2

    .line 1322
    goto :goto_1

    .line 1318
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_2
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DsService"

    const-string v7, "Exception in setSelectedProfile"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1323
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public iSetProfileName(IILcom/atmos/api/DsProfileName;)I
    .locals 11
    .param p1, "handle"    # I
    .param p2, "profile"    # I
    .param p3, "name"    # Lcom/atmos/api/DsProfileName;

    .prologue
    .line 1726
    const-string v0, "DsService"

    const-string v1, "DsService.iSetProfileName"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const/4 v8, -0x6

    .line 1729
    .local v8, "error":I
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1733
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v9

    .line 1734
    .local v9, "isPermitted":Z
    if-eqz v9, :cond_2

    .line 1736
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/atmos/ds/DsManager;->setProfileName(ILcom/atmos/api/DsProfileName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    invoke-virtual {p3}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeCallback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1741
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/atmos/service/DsCallbackManager;->invokeDs1Callback(IIIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1744
    const/4 v8, 0x0

    .line 1769
    .end local v9    # "isPermitted":Z
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v10

    .line 1770
    return v8

    .line 1749
    .restart local v9    # "isPermitted":Z
    :cond_2
    const/4 v8, -0x5

    goto :goto_0

    .line 1752
    .end local v9    # "isPermitted":Z
    :catch_0
    move-exception v7

    .line 1754
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "DsService"

    const-string v1, "IllegalArgumentException in iSetProfileName"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1756
    const/4 v8, -0x1

    .line 1768
    goto :goto_0

    .line 1758
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 1760
    .local v7, "e":Ljava/lang/UnsupportedOperationException;
    const-string v0, "DsService"

    const-string v1, "UnsupportedOperationException in iSetProfileName"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 1762
    const/4 v8, -0x1

    .line 1768
    goto :goto_0

    .line 1764
    .end local v7    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v7

    .line 1766
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "DsService"

    const-string v1, "Exception in setProfileName"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1769
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public iSetState(IIZ)I
    .locals 7
    .param p1, "handle"    # I
    .param p2, "Device"    # I
    .param p3, "on"    # Z

    .prologue
    .line 845
    const-string v4, "DsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DsService.iSetState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const/4 v1, -0x6

    .line 848
    .local v1, "error":I
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 852
    :try_start_0
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v6}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z

    move-result v2

    .line 853
    .local v2, "isCleared":Z
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/atmos/service/DsAccessRightManager;->isAppAccessPermitted(I)Z

    move-result v3

    .line 854
    .local v3, "isPermitted":Z
    if-eqz v3, :cond_1

    .line 856
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4, p1, p3}, Lcom/atmos/service/DsService;->access$400(Lcom/atmos/service/DsService;IZ)I

    move-result v1

    .line 864
    :goto_0
    if-eqz v2, :cond_0

    .line 866
    iget-object v4, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v4}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Lcom/atmos/service/DsAccessRightManager;->doAccessForLegacyClient(IZ)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    .end local v2    # "isCleared":Z
    .end local v3    # "isPermitted":Z
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v5

    .line 881
    return v1

    .line 860
    .restart local v2    # "isCleared":Z
    .restart local v3    # "isPermitted":Z
    :cond_1
    const/4 v1, -0x5

    goto :goto_0

    .line 869
    .end local v2    # "isCleared":Z
    .end local v3    # "isPermitted":Z
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v4, "DsService"

    const-string v6, "DeadObjectException in iSetState"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 873
    const/4 v1, -0x2

    .line 879
    goto :goto_1

    .line 875
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :catch_1
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DsService"

    const-string v6, "Exception in iSetState"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 880
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public iUnregisterCallback(ILcom/atmos/api/IDsCallbacks;I)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "cb"    # Lcom/atmos/api/IDsCallbacks;
    .param p3, "version"    # I

    .prologue
    .line 773
    if-eqz p2, :cond_2

    .line 775
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 777
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/atmos/service/DsAccessRightManager;->unRegisterDsVersion(I)V

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$300(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsCallbackManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/atmos/service/DsCallbackManager;->unregister(Lcom/atmos/api/IDsCallbacks;I)V

    .line 782
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/atmos/service/DsAccessRightManager;->isGlobalSettings(I)Z

    move-result v0

    .line 783
    .local v0, "isGlobal":Z
    if-eqz v0, :cond_1

    .line 785
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/atmos/ds/DsManager;->saveDsStateAndSettings()V

    .line 787
    :cond_1
    const-string v1, "DsService"

    const-string v3, "iUnregisterCallback"

    invoke-static {v1, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    monitor-exit v2

    .line 790
    .end local v0    # "isGlobal":Z
    :cond_2
    return-void

    .line 788
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iUnregisterDeathHandler(ILcom/atmos/api/IDsDeathHandler;)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "dh"    # Lcom/atmos/api/IDsDeathHandler;

    .prologue
    .line 682
    const-string v1, "DsService"

    const-string v2, "iUnregisterDeathHandler"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    if-eqz p2, :cond_1

    .line 686
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v1}, Lcom/atmos/service/DsService;->access$900(Lcom/atmos/service/DsService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p2}, Lcom/atmos/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/service/DsService$DsClientDeathHandler;

    .line 689
    .local v0, "clientDeathHandler":Lcom/atmos/service/DsService$DsClientDeathHandler;
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Lcom/atmos/service/DsService$DsClientDeathHandler;->unlinkToDeath()V

    .line 693
    :cond_0
    monitor-exit v2

    .line 695
    .end local v0    # "clientDeathHandler":Lcom/atmos/service/DsService$DsClientDeathHandler;
    :cond_1
    return-void

    .line 693
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iUnregisterDsAccess(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 728
    const-string v0, "DsService"

    const-string v1, "iUnregisterDsAccess"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsAccessRightManager;->unRegisterDsVersion(I)V

    .line 733
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsAccessRightManager;->removeDsConnectedApp(I)V

    .line 734
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$800(Lcom/atmos/service/DsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    monitor-exit v1

    .line 736
    return-void

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iUnregisterVisualizerData(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 636
    const-string v0, "DsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove a visualzier handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService$3;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$700(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsVisualizerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/atmos/service/DsVisualizerManager;->unregister(I)V

    .line 641
    monitor-exit v1

    .line 642
    return-void

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
