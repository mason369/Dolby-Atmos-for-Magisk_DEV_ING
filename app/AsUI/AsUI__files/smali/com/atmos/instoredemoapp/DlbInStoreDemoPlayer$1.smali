.class Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;
.super Landroid/os/Handler;
.source "DlbInStoreDemoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;


# direct methods
.method constructor <init>(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle message in handler, msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7dc

    if-ne v1, v2, :cond_1

    .line 71
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$000(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/atmos/instoredemoapp/DlbApController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/atmos/instoredemoapp/DlbApController;->processApMessage(Landroid/os/Message;)Z

    move-result v0

    .line 73
    .local v0, "success":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$100(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$100(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->callOnClick()Z

    .line 106
    .end local v0    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7dd

    if-eq v1, v2, :cond_0

    .line 84
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7de

    if-ne v1, v2, :cond_2

    .line 85
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "handle START_LOOP_MEDIA_PLAYBACK event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$200(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 87
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1, v5}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$402(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    .line 88
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$500(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 89
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 91
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7df

    if-ne v1, v2, :cond_3

    .line 92
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "handle START_DEMO_MEDIA_PLAYBACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$600(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 95
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$000(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/atmos/instoredemoapp/DlbApController;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$700(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/atmos/instoredemoapp/DlbApController;->setApInfoFile(Ljava/io/InputStream;)V

    .line 96
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1, v4}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$802(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    .line 97
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1, v4}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$402(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    goto :goto_0

    .line 98
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7e0

    if-ne v1, v2, :cond_4

    .line 100
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v2}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$600(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 101
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7e1

    if-ne v1, v2, :cond_5

    .line 102
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-virtual {v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->finish()V

    goto/16 :goto_0

    .line 104
    :cond_5
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DlbInstoreDemoPlayer.mHandler.handleMessage(), unknown message id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
