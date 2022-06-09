.class Lcom/atmos/daxappUI/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/daxappUI/MainActivity;
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
    .line 137
    iput-object p1, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 140
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 141
    .local v1, "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 142
    const-string v3, "DsUI::MainActivity"

    const-string v4, "ACTION_SCREEN_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v3, v2}, Lcom/atmos/daxappUI/MainActivity;->access$002(Lcom/atmos/daxappUI/MainActivity;Z)Z

    .line 144
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v3}, Lcom/atmos/daxappUI/MainActivity;->access$000(Lcom/atmos/daxappUI/MainActivity;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/atmos/daxappUI/MainActivity;->access$100(Lcom/atmos/daxappUI/MainActivity;Z)V

    .line 145
    if-eqz v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/atmos/daxappUI/MainActivity;->access$000(Lcom/atmos/daxappUI/MainActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setEnabled(Z)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const-string v3, "DsUI::MainActivity"

    const-string v4, "ACTION_SCREEN_ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v3, v0}, Lcom/atmos/daxappUI/MainActivity;->access$002(Lcom/atmos/daxappUI/MainActivity;Z)Z

    .line 151
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v3}, Lcom/atmos/daxappUI/MainActivity;->access$200(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/api/DsGlobalEx;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v3}, Lcom/atmos/daxappUI/MainActivity;->access$300(Lcom/atmos/daxappUI/MainActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v3}, Lcom/atmos/daxappUI/MainActivity;->access$200(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/api/DsGlobalEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 153
    .local v0, "dsOn":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1, v0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setEnabled(Z)V

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity$1;->this$0:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v2, v0}, Lcom/atmos/daxappUI/MainActivity;->access$100(Lcom/atmos/daxappUI/MainActivity;Z)V

    goto :goto_0

    .end local v0    # "dsOn":Z
    :cond_3
    move v0, v2

    .line 152
    goto :goto_1
.end method
