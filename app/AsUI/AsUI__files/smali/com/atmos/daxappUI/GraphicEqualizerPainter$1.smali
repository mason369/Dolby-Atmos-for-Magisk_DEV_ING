.class Lcom/atmos/daxappUI/GraphicEqualizerPainter$1;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/daxappUI/GraphicEqualizerPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)V
    .locals 0

    .prologue
    .line 697
    iput-object p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$1;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$1;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$000(Lcom/atmos/daxappUI/GraphicEqualizerPainter;Z)V

    .line 702
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$1;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$100(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)Lcom/atmos/daxappUI/GraphicVisualiser;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/GraphicVisualiser;->repaint(Z)V

    .line 703
    return-void
.end method
