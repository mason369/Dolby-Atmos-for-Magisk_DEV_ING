.class Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;
.super Ljava/lang/Object;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/ExploreDolbyAtmos;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 348
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    iget-object v1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    .line 350
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 352
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 353
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 354
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 355
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 356
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 357
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 358
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 359
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 371
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 362
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 363
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 364
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 365
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 366
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 367
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 368
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 369
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v0, v4, v3, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto :goto_0
.end method
