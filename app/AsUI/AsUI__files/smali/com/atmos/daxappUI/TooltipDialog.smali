.class public Lcom/atmos/daxappUI/TooltipDialog;
.super Landroid/app/DialogFragment;
.source "TooltipDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/atmos/daxappUI/TooltipDialog;
    .locals 3
    .param p0, "title"    # I
    .param p1, "text"    # I

    .prologue
    .line 23
    new-instance v1, Lcom/atmos/daxappUI/TooltipDialog;

    invoke-direct {v1}, Lcom/atmos/daxappUI/TooltipDialog;-><init>()V

    .line 24
    .local v1, "f":Lcom/atmos/daxappUI/TooltipDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "Title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const-string v2, "Text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {v1, v0}, Lcom/atmos/daxappUI/TooltipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/atmos/daxappUI/TooltipDialog;->setStyle(II)V

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "tv":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "tv":Landroid/view/View;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/TooltipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v2, 0x7f0c0043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .restart local v0    # "tv":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "tv":Landroid/view/View;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/TooltipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    invoke-virtual {p0}, Lcom/atmos/daxappUI/TooltipDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    return-object v1
.end method
