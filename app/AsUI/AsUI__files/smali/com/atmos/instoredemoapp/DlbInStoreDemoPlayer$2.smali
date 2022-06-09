.class Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;
.super Ljava/lang/Object;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 112
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$400(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$900(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$802(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;Z)Z

    .line 119
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$300(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 120
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-static {v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->access$900(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    :cond_0
    return-void
.end method
