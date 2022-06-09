.class Lcom/atmos/daxappUI/FragSwitches$1;
.super Landroid/content/BroadcastReceiver;
.source "FragSwitches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/daxappUI/FragSwitches;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/FragSwitches;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/FragSwitches;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, "bun":Landroid/os/Bundle;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    const-string v3, "state"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/atmos/daxappUI/FragSwitches;->mHeadset_plug:I

    .line 72
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    invoke-static {v2}, Lcom/atmos/daxappUI/FragSwitches;->access$100(Lcom/atmos/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    invoke-static {v3}, Lcom/atmos/daxappUI/FragSwitches;->access$000(Lcom/atmos/daxappUI/FragSwitches;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 73
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    invoke-static {v3}, Lcom/atmos/daxappUI/FragSwitches;->access$200(Lcom/atmos/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/atmos/daxappUI/FragSwitches;->setEnabled(Z)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/atmos/daxappUI/FragSwitches;->access$302(Lcom/atmos/daxappUI/FragSwitches;I)I

    .line 77
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    invoke-static {v2}, Lcom/atmos/daxappUI/FragSwitches;->access$100(Lcom/atmos/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v2

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    invoke-static {v3}, Lcom/atmos/daxappUI/FragSwitches;->access$000(Lcom/atmos/daxappUI/FragSwitches;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 78
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches$1;->this$0:Lcom/atmos/daxappUI/FragSwitches;

    invoke-static {v3}, Lcom/atmos/daxappUI/FragSwitches;->access$200(Lcom/atmos/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/atmos/daxappUI/FragSwitches;->setEnabled(Z)V

    goto :goto_0
.end method
