.class Lcom/atmos/daxappUI/GraphicVisualiser$1;
.super Ljava/lang/Object;
.source "GraphicVisualiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/daxappUI/GraphicVisualiser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/GraphicVisualiser;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/GraphicVisualiser;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 205
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$000(Lcom/atmos/daxappUI/GraphicVisualiser;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$100(Lcom/atmos/daxappUI/GraphicVisualiser;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 209
    .local v0, "c":Landroid/graphics/Canvas;
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$200(Lcom/atmos/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_2

    .line 216
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$300(Lcom/atmos/daxappUI/GraphicVisualiser;)Lcom/atmos/daxappUI/GraphicVisualiserPainter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/atmos/daxappUI/GraphicVisualiserPainter;->onDraw(Landroid/graphics/Canvas;)V

    .line 217
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$400(Lcom/atmos/daxappUI/GraphicVisualiser;)Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    :cond_2
    if-eqz v0, :cond_3

    .line 223
    :try_start_1
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$200(Lcom/atmos/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 226
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$400(Lcom/atmos/daxappUI/GraphicVisualiser;)Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    invoke-static {}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$500()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    invoke-static {}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$500()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DsUI::MainActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    if-eqz v0, :cond_3

    .line 223
    :try_start_3
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$200(Lcom/atmos/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_5

    .line 223
    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicVisualiser$1;->this$0:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-static {v3}, Lcom/atmos/daxappUI/GraphicVisualiser;->access$200(Lcom/atmos/daxappUI/GraphicVisualiser;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
