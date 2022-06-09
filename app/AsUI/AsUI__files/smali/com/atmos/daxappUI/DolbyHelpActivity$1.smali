.class Lcom/atmos/daxappUI/DolbyHelpActivity$1;
.super Ljava/lang/Object;
.source "DolbyHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/DolbyHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/DolbyHelpActivity;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/DolbyHelpActivity;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/atmos/daxappUI/DolbyHelpActivity$1;->this$0:Lcom/atmos/daxappUI/DolbyHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/atmos/daxappUI/DolbyHelpActivity$1;->this$0:Lcom/atmos/daxappUI/DolbyHelpActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.atmos.LAUNCH_DAX_INSTOREDEMO_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/DolbyHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method
