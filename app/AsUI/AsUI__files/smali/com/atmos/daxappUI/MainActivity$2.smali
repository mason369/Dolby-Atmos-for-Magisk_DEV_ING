.class Lcom/atmos/daxappUI/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 190
    iput-object p1, p0, Lcom/atmos/daxappUI/MainActivity$2;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity$2;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v0}, Lcom/atmos/daxappUI/MainActivity;->access$400(Lcom/atmos/daxappUI/MainActivity;)V

    .line 194
    return-void
.end method
