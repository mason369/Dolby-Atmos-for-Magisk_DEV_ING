.class Lcom/atmos/api/DsFocus$1;
.super Lcom/atmos/api/IDsCallbacks$Stub;
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
.method constructor <init>(Lcom/atmos/api/DsFocus;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    invoke-direct {p0}, Lcom/atmos/api/IDsCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 754
    const-string v0, "DsFocus"

    const-string v1, "event onAccessAvailable()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 756
    return-void
.end method

.method public onAccessForceReleased(Ljava/lang/String;I)V
    .locals 4
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 748
    const-string v0, "DsFocus"

    const-string v1, "event onAccessForceReleased()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 750
    return-void
.end method

.method public onAccessRequested(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 761
    const-string v1, "DsFocus"

    const-string v2, "event onAccessRequested()"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "value":Z
    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    invoke-interface {v1, p1, p2}, Lcom/atmos/api/IDsAccessEvents;->onAccessRequested(Ljava/lang/String;I)Z

    move-result v0

    .line 767
    :cond_0
    return v0
.end method

.method public onDsOn(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    const-string v3, "DsFocus"

    const-string v4, "event onDsOn()"

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    if-eqz p1, :cond_0

    move v0, v1

    .line 708
    .local v0, "status":I
    :goto_0
    iget-object v3, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v3, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v4, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v4, v4, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    return-void

    .end local v0    # "status":I
    :cond_0
    move v0, v2

    .line 707
    goto :goto_0
.end method

.method public onDsSuspended(Z)V
    .locals 5
    .param p1, "isSuspended"    # Z

    .prologue
    const/4 v1, 0x0

    .line 713
    const-string v2, "DsFocus"

    const-string v3, "event onDsSuspended()"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 715
    .local v0, "status":I
    :goto_0
    iget-object v2, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v3, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v3, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    return-void

    .end local v0    # "status":I
    :cond_0
    move v0, v1

    .line 714
    goto :goto_0
.end method

.method public onLegacyClientSetting()Z
    .locals 3

    .prologue
    .line 779
    const-string v1, "DsFocus"

    const-string v2, "event onLegacyClientSetting()"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, "value":Z
    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->legacyClientListener_:Lcom/atmos/api/IDsLegacyClientEvents;

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->legacyClientListener_:Lcom/atmos/api/IDsLegacyClientEvents;

    invoke-interface {v1}, Lcom/atmos/api/IDsLegacyClientEvents;->onLegacyClientSetting()Z

    move-result v0

    .line 785
    :cond_0
    return v0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 772
    const-string v0, "DsFocus"

    const-string v1, "event onProfileNameChanged()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 774
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 720
    const-string v0, "DsFocus"

    const-string v1, "event onProfileSelected()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 726
    const-string v0, "DsFocus"

    const-string v1, "event onProfileSettingsChanged()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .locals 5
    .param p1, "isSuspended"    # Z

    .prologue
    const/4 v1, 0x0

    .line 741
    const-string v2, "DsFocus"

    const-string v3, "event onVisualizerSuspended()"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 743
    .local v0, "status":I
    :goto_0
    iget-object v2, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v2, v2, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v3, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v3, v3, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 744
    return-void

    .end local v0    # "status":I
    :cond_0
    move v0, v1

    .line 742
    goto :goto_0
.end method

.method public onVisualizerUpdated([F[F)V
    .locals 4
    .param p1, "gains"    # [F
    .param p2, "excitations"    # [F

    .prologue
    const/4 v3, 0x0

    .line 732
    const-string v0, "DsFocus"

    const-string v1, "event onVisualizerUpdated()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->gains_:[F

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget v1, v1, Lcom/atmos/api/DsFocus;->bandCount_:I

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 735
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->excitations_:[F

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget v1, v1, Lcom/atmos/api/DsFocus;->bandCount_:I

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 736
    iget-object v0, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v0, v0, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/api/DsFocus$1;->this$0:Lcom/atmos/api/DsFocus;

    iget-object v1, v1, Lcom/atmos/api/DsFocus;->handler_:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 737
    return-void
.end method
