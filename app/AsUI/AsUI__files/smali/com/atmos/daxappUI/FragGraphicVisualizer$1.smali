.class Lcom/atmos/daxappUI/FragGraphicVisualizer$1;
.super Ljava/lang/Object;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Lcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/FragGraphicVisualizer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/FragGraphicVisualizer;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/FragGraphicVisualizer;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer$1;->this$0:Lcom/atmos/daxappUI/FragGraphicVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresetChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer$1;->this$0:Lcom/atmos/daxappUI/FragGraphicVisualizer;

    invoke-static {v0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->access$000(Lcom/atmos/daxappUI/FragGraphicVisualizer;I)V

    .line 144
    return-void
.end method
