.class Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$4;
.super Ljava/lang/Object;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;


# direct methods
.method constructor <init>(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$4;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$4;->this$0:Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->finish()V

    .line 147
    return-void
.end method
