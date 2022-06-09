.class public Lcom/atmos/daxappUI/FragGraphicVisualizer;
.super Landroid/app/Fragment;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/atmos/api/IDsEvents;
.implements Lcom/atmos/api/IDsVisualizerEvents;
.implements Lcom/atmos/daxappUI/IEqualizerChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mContainer:Landroid/view/ViewGroup;

.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

.field private mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

.field private mFrame:Landroid/widget/ImageView;

.field private mIEqPresets:Landroid/widget/GridView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMobileLayout:Z

.field private mPreset:I

.field private mQmIntEq:Landroid/view/View;

.field private mSpecificObserver:Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;

.field private mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    .line 74
    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    .line 76
    iput-object v1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iput-object v1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/atmos/daxappUI/FragGraphicVisualizer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragGraphicVisualizer;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->chooseEqualizerSettinginUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/atmos/daxappUI/FragGraphicVisualizer;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/atmos/daxappUI/FragGraphicVisualizer;)Lcom/atmos/daxappUI/EqualizerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    return-object v0
.end method

.method private chooseEqualizerSetting(I)V
    .locals 2
    .param p1, "preset"    # I

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 578
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 579
    const/4 p1, -0x1

    .line 583
    :cond_1
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    .line 585
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;->setUserProfilePopulated()V

    .line 587
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    .line 588
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;->onProfileSettingsChanged()V

    goto :goto_0
.end method

.method private chooseEqualizerSettinginUI(I)V
    .locals 6
    .param p1, "preset"    # I

    .prologue
    .line 532
    const-string v2, "FragGraphicVisualizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseEqualizerSetting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-boolean v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 535
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 536
    const/4 p1, -0x1

    .line 540
    :cond_0
    iget-boolean v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-nez v2, :cond_2

    .line 558
    :cond_1
    :goto_0
    return-void

    .line 544
    :cond_2
    const-string v2, "FragGraphicVisualizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseEqualizerSettinginUI(): setIeqPreset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    sget-object v3, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/atmos/daxappUI/MainActivity;

    iget-object v4, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v2, v4, v5}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setIeqPreset(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    .line 551
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 552
    .local v1, "selectedProfile":I
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    .line 553
    .local v0, "eq":Lcom/atmos/daxappUI/GraphicEqualizerPainter;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/IDsActivityCommon;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->switchPreset(IIZ)V

    .line 555
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 557
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->chooseEqualizerSetting(I)V

    goto :goto_0
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 592
    iget-boolean v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/IDsActivityCommon;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 598
    .local v1, "id":I
    const v2, 0x7f0c001b

    if-ne v2, v1, :cond_2

    .line 599
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->chooseEqualizerSettinginUI(I)V

    .line 600
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 601
    .local v0, "eqText":Landroid/widget/TextView;
    const v2, 0x7f06001b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 602
    .end local v0    # "eqText":Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f0c0014

    if-ne v2, v1, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->resetGEqOnUserClick()V

    goto :goto_0
.end method

.method private resetGEqOnUserClick()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    .line 609
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;->onProfileSettingsChanged()V

    .line 610
    return-void
.end method


# virtual methods
.method public hideEqualizer()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->hide()V

    .line 358
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    iput-object p1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mActivity:Landroid/app/Activity;

    .line 108
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->getDsClient()Lcom/atmos/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 109
    return-void

    .line 94
    :catch_0
    move-exception v1

    .line 95
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

    .line 100
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 101
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragGraphicVisualizerObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 206
    .local v0, "id":I
    const v1, 0x7f0c0019

    if-ne v1, v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;

    const v2, 0x7f060035

    const v3, 0x7f060036

    invoke-interface {v1, p1, v2, v3}, Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;->displayTooltip(Landroid/view/View;II)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->onDolbyClientUseClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    .line 251
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    .line 255
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 124
    .local v7, "v":Landroid/view/View;
    iput-object p1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    .line 125
    iput-object p2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    .line 128
    const/4 v8, 0x2

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 129
    .local v4, "textIds":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 130
    .local v2, "id":I
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 131
    .local v6, "tv":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 132
    sget-object v8, Lcom/atmos/daxappUI/Assets$FontType;->REGULAR:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "id":I
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_1
    const v8, 0x7f0c001c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mFrame:Landroid/widget/ImageView;

    .line 137
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    .line 138
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v8, :cond_2

    .line 139
    new-instance v8, Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030001

    new-instance v11, Lcom/atmos/daxappUI/FragGraphicVisualizer$1;

    invoke-direct {v11, p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer$1;-><init>(Lcom/atmos/daxappUI/FragGraphicVisualizer;)V

    invoke-direct {v8, v9, v10, v11}, Lcom/atmos/daxappUI/EqualizerAdapter;-><init>(Landroid/content/Context;ILcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;)V

    iput-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    .line 147
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    new-instance v9, Lcom/atmos/daxappUI/FragGraphicVisualizer$2;

    invoke-direct {v9, p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer$2;-><init>(Lcom/atmos/daxappUI/FragGraphicVisualizer;)V

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    :cond_2
    const v8, 0x7f0c001b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 163
    .local v5, "theV":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 164
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 168
    :cond_3
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 169
    if-eqz v5, :cond_4

    .line 170
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 175
    :cond_4
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    .line 176
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 177
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 182
    :cond_5
    const v8, 0x7f0c0018

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/atmos/daxappUI/GraphicVisualiser;

    iput-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    .line 183
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v8}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v9

    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/atmos/daxappUI/IDsActivityCommon;

    invoke-virtual {v9, v8}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->setActivity(Lcom/atmos/daxappUI/IDsActivityCommon;)V

    .line 184
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v8}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v8

    iget-object v9, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v8, v9}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->setDsClient(Lcom/atmos/api/DsGlobalEx;)V

    .line 185
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v8}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->setEqualizerListener(Lcom/atmos/daxappUI/IEqualizerChangeListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f090000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    .line 189
    iget-boolean v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-eqz v8, :cond_6

    .line 190
    iget-object v8, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/atmos/daxappUI/GraphicVisualiser;->mEnableEditTouch:Z

    .line 193
    :cond_6
    return-object v7

    .line 128
    nop

    :array_0
    .array-data 4
        0x7f0c0012
        0x7f0c0013
    .end array-data
.end method

.method public onDsOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 262
    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0
    .param p1, "isSuspended"    # Z

    .prologue
    .line 278
    return-void
.end method

.method public onEqualizerEditStart()V
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 219
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;->onEqualizerEditStart()V

    .line 220
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 525
    const-string v0, "FragGraphicVisualizer"

    const-string v1, "GraphicVisualiser fragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/GraphicVisualiser;->setActiveStatus(Z)V

    .line 529
    :cond_0
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 268
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 273
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 510
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 512
    const-string v0, "FragGraphicVisualizer"

    const-string v1, "GraphicVisualiser fragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 514
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 515
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/GraphicVisualiser;->setActiveStatus(Z)V

    .line 519
    :cond_0
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .locals 3
    .param p1, "suspended"    # Z

    .prologue
    .line 244
    const-string v0, "FragGraphicVisualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity.onVisualizerSuspended ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, p1}, Lcom/atmos/daxappUI/GraphicVisualiser;->setSuspended(Z)V

    .line 246
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/GraphicVisualiser;->repaint(Z)V

    .line 247
    return-void
.end method

.method public onVisualizerUpdate([F[F)V
    .locals 1
    .param p1, "excitations"    # [F
    .param p2, "gains"    # [F

    .prologue
    .line 225
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, p1}, Lcom/atmos/daxappUI/GraphicVisualiser;->setExcitations([F)V

    .line 233
    :cond_2
    if-eqz p2, :cond_3

    .line 234
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, p2}, Lcom/atmos/daxappUI/GraphicVisualiser;->onVisualizerUpdate([F)V

    .line 237
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/GraphicVisualiser;->repaint()V

    goto :goto_0
.end method

.method public registerVisualizer(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->setSuspended(Z)V

    .line 335
    if-eqz p1, :cond_0

    .line 338
    const-string v1, "FragGraphicVisualizer"

    const-string v2, "registerVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1, p0}, Lcom/atmos/api/DsGlobalEx;->registerVisualizer(Lcom/atmos/api/IDsVisualizerEvents;)V

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v1, "FragGraphicVisualizer"

    const-string v2, "unregisterVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/atmos/api/DsGlobalEx;->unregisterVisualizer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    iget-object v1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v1}, Lcom/atmos/daxappUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public resetUserGains()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    .line 383
    return-void
.end method

.method public resetUserGains(I)V
    .locals 4
    .param p1, "selectedProfile"    # I

    .prologue
    .line 362
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 363
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v0

    .line 364
    .local v0, "arValue":I
    if-eqz v0, :cond_0

    .line 377
    .end local v0    # "arValue":I
    :goto_0
    return-void

    .line 369
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    .line 370
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2, p1}, Lcom/atmos/api/DsGlobalEx;->resetProfile(I)I

    .line 371
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/atmos/daxappUI/GraphicVisualiser;->repaint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public selectIEqPresetInUI(I)V
    .locals 12
    .param p1, "preset"    # I

    .prologue
    const v11, 0x7f0c0012

    const v10, 0x7f06001b

    const v9, 0x7f060005

    const/4 v6, 0x1

    const/4 v8, -0x1

    .line 387
    iget-boolean v7, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-ne v7, v6, :cond_0

    .line 388
    if-ne p1, v8, :cond_0

    .line 389
    const/4 p1, 0x3

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v5

    .line 395
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    if-eqz v7, :cond_5

    .line 396
    iget-object v7, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v7, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->setSelection(I)V

    .line 401
    :goto_0
    iget-boolean v7, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-nez v7, :cond_b

    .line 403
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 404
    .local v2, "theTV":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 405
    iget-object v7, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v7}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 406
    .local v1, "p":I
    const/4 v7, 0x4

    if-eq v1, v7, :cond_6

    .line 407
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 413
    .end local v1    # "p":I
    :cond_1
    :goto_1
    const v7, 0x7f0c001b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 414
    .local v3, "theV":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 416
    if-ne p1, v8, :cond_7

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 417
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 418
    const v6, 0x7f020069

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 424
    :cond_2
    :goto_3
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 425
    .local v0, "eqText":Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 426
    if-ne p1, v8, :cond_9

    invoke-virtual {p0, v10}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_3
    const v6, 0x7f0c0013

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 430
    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    if-eqz v6, :cond_4

    .line 431
    if-ne p1, v8, :cond_a

    const v6, 0x7f060015

    invoke-virtual {p0, v6}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .end local v2    # "theTV":Landroid/widget/TextView;
    :cond_4
    :goto_6
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    .line 456
    return-void

    .line 398
    .end local v0    # "eqText":Landroid/widget/TextView;
    .end local v3    # "theV":Landroid/view/View;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_5
    iput p1, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mPreset:I

    goto :goto_0

    .line 409
    .restart local v1    # "p":I
    .restart local v2    # "theTV":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 416
    .end local v1    # "p":I
    .restart local v3    # "theV":Landroid/view/View;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 420
    :cond_8
    const v6, 0x7f02005d

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 426
    .restart local v0    # "eqText":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {p0, v9}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 431
    .restart local v4    # "tv":Landroid/widget/TextView;
    :cond_a
    iget-object v6, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v6, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->getItem(I)Lcom/atmos/daxappUI/EqualizerSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/atmos/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 434
    .end local v0    # "eqText":Landroid/widget/TextView;
    .end local v2    # "theTV":Landroid/widget/TextView;
    .end local v3    # "theV":Landroid/view/View;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_b
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 435
    .restart local v0    # "eqText":Landroid/widget/TextView;
    if-eqz v0, :cond_c

    .line 436
    const/4 v7, 0x3

    if-ne p1, v7, :cond_e

    invoke-virtual {p0, v10}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_c
    const v7, 0x7f0c0013

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 440
    .restart local v4    # "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_d

    iget-object v7, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    if-eqz v7, :cond_d

    .line 441
    iget-object v7, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v7, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->getItem(I)Lcom/atmos/daxappUI/EqualizerSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/atmos/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_d
    const v7, 0x7f0c001b

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 444
    .restart local v3    # "theV":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 446
    const/4 v7, 0x3

    if-ne p1, v7, :cond_f

    :goto_8
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 447
    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 448
    const v6, 0x7f020069

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 436
    .end local v3    # "theV":Landroid/view/View;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_e
    invoke-virtual {p0, v9}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 446
    .restart local v3    # "theV":Landroid/view/View;
    .restart local v4    # "tv":Landroid/widget/TextView;
    :cond_f
    const/4 v6, 0x0

    goto :goto_8

    .line 450
    :cond_10
    const v6, 0x7f02005d

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 285
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v2, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->setDolbyOnOff(Z)V

    .line 286
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "theFragV":Landroid/view/View;
    const v2, 0x7f0c0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 292
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    :cond_1
    const v2, 0x7f0c0013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_2

    .line 298
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    :cond_2
    const v2, 0x7f0c001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 304
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 307
    :cond_3
    const v2, 0x7f0c001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_4

    .line 309
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 310
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 313
    :cond_4
    const v2, 0x7f0c0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_5

    .line 315
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 316
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 319
    :cond_5
    const v2, 0x7f0c001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_6

    .line 321
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 325
    :cond_6
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 326
    iget-object v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    :cond_7
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 330
    return-void
.end method

.method public setResetEqButtonVisibility()V
    .locals 6

    .prologue
    .line 459
    const/4 v2, 0x4

    .line 460
    .local v2, "vis":I
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v4}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 461
    sget-object v4, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/atmos/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v4, v3, v5}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getGeqOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v0

    .line 462
    .local v0, "geqOn":Z
    if-eqz v0, :cond_0

    .line 463
    const/4 v2, 0x0

    .line 467
    .end local v0    # "geqOn":Z
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, "theV":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_1
    return-void
.end method

.method public updateGraphicEqInUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 475
    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    if-nez v3, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 480
    .local v1, "selectedProfile":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/GraphicVisualiser;->getEqualizer()Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    move-result-object v0

    .line 488
    .local v0, "eq":Lcom/atmos/daxappUI/GraphicEqualizerPainter;
    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    if-eqz v3, :cond_3

    .line 489
    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/EqualizerAdapter;->getSelection()I

    move-result v2

    .line 494
    .local v2, "temp":I
    :goto_1
    iget-boolean v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-ne v3, v4, :cond_2

    .line 495
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 496
    const/4 v2, -0x1

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/atmos/daxappUI/IDsActivityCommon;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->switchPreset(IIZ)V

    .line 501
    iget-object v3, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mVisualiser:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v3, v4}, Lcom/atmos/daxappUI/GraphicVisualiser;->repaint(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    goto :goto_0

    .line 491
    .end local v2    # "temp":I
    :cond_3
    iget v2, p0, Lcom/atmos/daxappUI/FragGraphicVisualizer;->mPreset:I

    .restart local v2    # "temp":I
    goto :goto_1
.end method
