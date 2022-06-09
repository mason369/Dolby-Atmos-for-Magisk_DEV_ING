.class Lcom/atmos/daxappUI/FragEqualizerPresets$2;
.super Ljava/lang/Object;
.source "FragEqualizerPresets.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/FragEqualizerPresets;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/FragEqualizerPresets;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/FragEqualizerPresets;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/atmos/daxappUI/FragEqualizerPresets$2;->this$0:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets$2;->this$0:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-static {v0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->access$100(Lcom/atmos/daxappUI/FragEqualizerPresets;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets$2;->this$0:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-static {v0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->access$200(Lcom/atmos/daxappUI/FragEqualizerPresets;)Lcom/atmos/daxappUI/EqualizerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atmos/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
