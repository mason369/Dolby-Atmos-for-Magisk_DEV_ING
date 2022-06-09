.class Lcom/atmos/instoredemoapp/DlbApController$APMessage;
.super Ljava/lang/Object;
.source "DlbApController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/instoredemoapp/DlbApController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "APMessage"
.end annotation


# instance fields
.field public delayTime:J

.field public message:Landroid/os/Message;

.field final synthetic this$0:Lcom/atmos/instoredemoapp/DlbApController;


# direct methods
.method public constructor <init>(Lcom/atmos/instoredemoapp/DlbApController;JLandroid/os/Message;)V
    .locals 0
    .param p2, "time"    # J
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbApController$APMessage;->this$0:Lcom/atmos/instoredemoapp/DlbApController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p2, p0, Lcom/atmos/instoredemoapp/DlbApController$APMessage;->delayTime:J

    .line 45
    iput-object p4, p0, Lcom/atmos/instoredemoapp/DlbApController$APMessage;->message:Landroid/os/Message;

    .line 46
    return-void
.end method
