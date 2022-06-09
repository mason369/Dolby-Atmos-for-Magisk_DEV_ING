.class Lcom/atmos/service/DsVisualizerManager$1;
.super Ljava/lang/Object;
.source "DsVisualizerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/service/DsVisualizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/service/DsVisualizerManager;


# direct methods
.method constructor <init>(Lcom/atmos/service/DsVisualizerManager;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/atmos/service/DsVisualizerManager$1;->this$0:Lcom/atmos/service/DsVisualizerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/atmos/service/DsVisualizerManager$1;->this$0:Lcom/atmos/service/DsVisualizerManager;

    invoke-static {v0}, Lcom/atmos/service/DsVisualizerManager;->access$000(Lcom/atmos/service/DsVisualizerManager;)V

    .line 254
    return-void
.end method
