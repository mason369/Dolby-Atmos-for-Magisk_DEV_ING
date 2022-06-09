.class Lcom/atmos/api/DsFocus$2;
.super Landroid/os/Handler;
.source "DsFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/api/DsFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/api/DsFocus;


# direct methods
.method constructor <init>(Lcom/atmos/api/DsFocus;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 798
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 886
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 801
    :pswitch_1
    const-string v3, "DsFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(DS_STATUS_CHANGED_MSG): isOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v3, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v3, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    if-eqz v3, :cond_0

    .line 806
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 807
    .local v0, "isOn":Z
    :goto_1
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    invoke-interface {v2, v0}, Lcom/atmos/api/IDsEvents;->onDsOn(Z)V

    goto :goto_0

    .end local v0    # "isOn":Z
    :cond_1
    move v0, v2

    .line 806
    goto :goto_1

    .line 812
    :pswitch_2
    const-string v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(PROFILE_SELECTED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/atmos/api/IDsEvents;->onProfileSelected(I)V

    goto :goto_0

    .line 821
    :pswitch_3
    const-string v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(PROFILE_SETTINGS_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/atmos/api/IDsEvents;->onProfileSettingsChanged(I)V

    goto/16 :goto_0

    .line 830
    :pswitch_4
    const-string v3, "DsFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(DS_STATUS_SUSPENDED_MSG): profile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v3, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v3, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    if-eqz v3, :cond_0

    .line 834
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    move v1, v0

    .line 835
    .local v1, "isSuspended":Z
    :goto_2
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->dsListener_:Lcom/atmos/api/IDsEvents;

    invoke-interface {v2, v1}, Lcom/atmos/api/IDsEvents;->onDsSuspended(Z)V

    goto/16 :goto_0

    .end local v1    # "isSuspended":Z
    :cond_2
    move v1, v2

    .line 834
    goto :goto_2

    .line 840
    :pswitch_5
    const-string v2, "DsFocus"

    const-string v3, "handleMessage(VISUALIZER_UPDATED_MSG):"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    iget-object v3, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v3, Lcom/atmos/api/DsFocus;->excitations_:[F

    iget-object v4, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v4, v4, Lcom/atmos/api/DsFocus;->gains_:[F

    invoke-interface {v2, v3, v4}, Lcom/atmos/api/IDsVisualizerEvents;->onVisualizerUpdate([F[F)V

    goto/16 :goto_0

    .line 849
    :pswitch_6
    const-string v3, "DsFocus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(VISUALIZER_SUSPENDED_MSG): isSuspended = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    iget-object v3, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v3, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    if-eqz v3, :cond_0

    .line 853
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_3

    move v1, v0

    .line 854
    .restart local v1    # "isSuspended":Z
    :goto_3
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->visualizerListener_:Lcom/atmos/api/IDsVisualizerEvents;

    invoke-interface {v2, v1}, Lcom/atmos/api/IDsVisualizerEvents;->onVisualizerSuspended(Z)V

    goto/16 :goto_0

    .end local v1    # "isSuspended":Z
    :cond_3
    move v1, v2

    .line 853
    goto :goto_3

    .line 859
    :pswitch_7
    const-string v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(ACCESS_RELEASED_MSG): app = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    if-eqz v2, :cond_0

    .line 863
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v2, Lcom/atmos/api/DsFocus;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v2, v4}, Lcom/atmos/api/IDsAccessEvents;->onAccessForceReleased(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 868
    :pswitch_8
    const-string v2, "DsFocus"

    const-string v3, "handleMessage(ACCESS_AVAILABLE_MSG)"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    invoke-interface {v2}, Lcom/atmos/api/IDsAccessEvents;->onAccessAvailable()V

    goto/16 :goto_0

    .line 877
    :pswitch_9
    const-string v2, "DsFocus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(PROFILE_NAME_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->profileNameListener_:Lcom/atmos/api/IDsProfileNameEvents;

    if-eqz v2, :cond_0

    .line 881
    iget-object v2, p0, Lcom/atmos/api/DsFocus$2;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v2, Lcom/atmos/api/DsFocus;->profileNameListener_:Lcom/atmos/api/IDsProfileNameEvents;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/atmos/api/IDsProfileNameEvents;->onProfileNameChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
