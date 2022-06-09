.class Lcom/atmos/daxappUI/EqualizerAdapter$1;
.super Ljava/lang/Object;
.source "EqualizerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/daxappUI/EqualizerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/EqualizerAdapter;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/EqualizerAdapter;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/atmos/daxappUI/EqualizerAdapter$1;->this$0:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/atmos/daxappUI/EqualizerAdapter$1;->this$0:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/EqualizerAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method
