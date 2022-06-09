.class Lcom/atmos/daxappUI/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/MainActivity;->displaySplashScreen()Z
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
    .line 239
    iput-object p1, p0, Lcom/atmos/daxappUI/MainActivity$3;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity$3;->this$0:Lcom/atmos/daxappUI/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/atmos/daxappUI/MainActivity;->access$502(Lcom/atmos/daxappUI/MainActivity;Z)Z

    .line 243
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity$3;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v0}, Lcom/atmos/daxappUI/MainActivity;->access$600(Lcom/atmos/daxappUI/MainActivity;)V

    .line 245
    return-void
.end method
