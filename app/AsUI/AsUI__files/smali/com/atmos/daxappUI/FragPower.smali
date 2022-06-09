.class public Lcom/atmos/daxappUI/FragPower;
.super Landroid/app/Fragment;
.source "FragPower.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

.field private mImgoff:Landroid/widget/ImageView;

.field private mImgon:Landroid/widget/ImageView;

.field private mSpecificObserver:Lcom/atmos/daxappUI/IDsFragPowerObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragPower;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragPowerObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragPower;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragPowerObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    iget-object v2, p0, Lcom/atmos/daxappUI/FragPower;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->getDsClient()Lcom/atmos/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/FragPower;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 71
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 65
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragPowerObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 98
    .local v2, "id":I
    const v6, 0x7f0c001f

    if-eq v6, v2, :cond_0

    const v6, 0x7f0c001e

    if-ne v6, v2, :cond_1

    .line 100
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/atmos/daxappUI/FragPower;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v6

    if-eq v5, v6, :cond_2

    move v3, v5

    .line 101
    .local v3, "on":Z
    :goto_0
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/atmos/daxappUI/FragPower;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v7}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 102
    iget-object v6, p0, Lcom/atmos/daxappUI/FragPower;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v0

    .line 103
    .local v0, "arValue":I
    if-eqz v0, :cond_3

    .line 120
    .end local v0    # "arValue":I
    .end local v3    # "on":Z
    :cond_1
    :goto_1
    return-void

    .line 100
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 107
    .restart local v3    # "on":Z
    :cond_3
    iget-object v6, p0, Lcom/atmos/daxappUI/FragPower;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6, v3}, Lcom/atmos/api/DsGlobalEx;->setState(Z)I

    move-result v4

    .line 109
    .local v4, "result":I
    if-eqz v4, :cond_4

    .line 110
    const-string v5, "FragPower"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FragPower.onClick, setDsOnChecked failed due to return code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    .end local v3    # "on":Z
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    iget-object v5, p0, Lcom/atmos/daxappUI/FragPower;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/atmos/daxappUI/IDsFragObserver;->onDsApiError()V

    goto :goto_1

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "on":Z
    .restart local v4    # "result":I
    :cond_4
    iget-object v6, p0, Lcom/atmos/daxappUI/FragPower;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragPowerObserver;

    invoke-interface {v6, v5}, Lcom/atmos/daxappUI/IDsFragPowerObserver;->onDsClientUseChanged(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 84
    const v1, 0x7f030006

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0c001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/atmos/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/atmos/daxappUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/atmos/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/atmos/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 89
    iget-object v1, p0, Lcom/atmos/daxappUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/atmos/daxappUI/FragPower;->mImgoff:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 91
    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 123
    iget-object v1, p0, Lcom/atmos/daxappUI/FragPower;->mImgon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
