.class Lcom/atmos/daxappUI/ExploreDolbyAtmos$1;
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
    .line 314
    iput-object p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$1;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$1;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$002(Lcom/atmos/daxappUI/ExploreDolbyAtmos;Z)Z

    .line 319
    iget-object v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$1;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-static {v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const-string v2, "http://www.dolby.com/us/en/technologies/dolby-atmos.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 322
    .local v0, "it":Landroid/content/Intent;
    iget-object v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$1;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-virtual {v2, v0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->startActivity(Landroid/content/Intent;)V

    .line 325
    .end local v0    # "it":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
