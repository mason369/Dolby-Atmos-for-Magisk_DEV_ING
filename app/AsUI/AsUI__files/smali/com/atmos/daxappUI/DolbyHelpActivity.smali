.class public Lcom/atmos/daxappUI/DolbyHelpActivity;
.super Landroid/app/Activity;
.source "DolbyHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/atmos/daxappUI/DolbyHelpActivity;->finish()V

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 38
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/DolbyHelpActivity;->setContentView(I)V

    .line 20
    const v1, 0x7f0c0033

    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/DolbyHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "playBtn":Landroid/widget/Button;
    new-instance v1, Lcom/atmos/daxappUI/DolbyHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/atmos/daxappUI/DolbyHelpActivity$1;-><init>(Lcom/atmos/daxappUI/DolbyHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    return-void
.end method
