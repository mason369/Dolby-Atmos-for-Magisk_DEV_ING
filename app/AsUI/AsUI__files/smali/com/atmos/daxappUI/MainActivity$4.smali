.class Lcom/atmos/daxappUI/MainActivity$4;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/daxappUI/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/MainActivity;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/MainActivity;)V
    .locals 0

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 1435
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$400(Lcom/atmos/daxappUI/MainActivity;)V

    .line 1437
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$700(Lcom/atmos/daxappUI/MainActivity;)V

    .line 1440
    :try_start_0
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v5}, Lcom/atmos/daxappUI/MainActivity;->access$200(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/api/DsGlobalEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/atmos/api/DsGlobalEx;->isMonoSpeaker()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/atmos/daxappUI/MainActivity;->access$802(Lcom/atmos/daxappUI/MainActivity;Z)Z

    .line 1441
    const-string v4, "DsUI::MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsMonoSpeaker = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v6}, Lcom/atmos/daxappUI/MainActivity;->access$800(Lcom/atmos/daxappUI/MainActivity;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$900(Lcom/atmos/daxappUI/MainActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 1456
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$1000(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/daxappUI/FragProfilePresets;

    move-result-object v3

    .line 1460
    .local v3, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_0
    if-eqz v3, :cond_0

    .line 1461
    invoke-virtual {v3}, Lcom/atmos/daxappUI/FragProfilePresets;->onClientConnected()V

    .line 1465
    :cond_0
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$900(Lcom/atmos/daxappUI/MainActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 1466
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$1100(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/daxappUI/FragProfilePresetEditor;

    move-result-object v2

    .line 1470
    .local v2, "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v2, :cond_1

    .line 1471
    invoke-virtual {v2}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->onClientConnected()V

    .line 1474
    :cond_1
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v4}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 1475
    .local v1, "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v1, :cond_2

    .line 1476
    invoke-virtual {v1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->onClientConnected()V

    .line 1487
    :cond_2
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$900(Lcom/atmos/daxappUI/MainActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$1200(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/daxappUI/FragEqualizerPresets;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1488
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$1200(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/daxappUI/FragEqualizerPresets;

    move-result-object v4

    invoke-virtual {v4}, Lcom/atmos/daxappUI/FragEqualizerPresets;->onClientConnected()V

    .line 1493
    :cond_3
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/atmos/daxappUI/MainActivity;->access$1302(Lcom/atmos/daxappUI/MainActivity;Z)Z

    .line 1494
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v4, v7}, Lcom/atmos/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 1495
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4, v7}, Lcom/atmos/daxappUI/MainActivity;->access$1302(Lcom/atmos/daxappUI/MainActivity;Z)Z

    .line 1496
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v4}, Lcom/atmos/daxappUI/MainActivity;->editProfile()V

    .line 1497
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v4}, Lcom/atmos/daxappUI/MainActivity;->access$600(Lcom/atmos/daxappUI/MainActivity;)V

    .line 1502
    .end local v1    # "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    .end local v2    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .end local v3    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_2
    return-void

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1444
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v4}, Lcom/atmos/daxappUI/MainActivity;->onDsApiError()V

    goto :goto_2

    .line 1458
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v4}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c0037

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v3    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_0

    .line 1468
    :cond_5
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity$4;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v4}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0c0036

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .restart local v2    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    goto :goto_1
.end method
