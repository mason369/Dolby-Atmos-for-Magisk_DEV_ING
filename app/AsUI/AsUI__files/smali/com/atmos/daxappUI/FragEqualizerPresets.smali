.class public Lcom/atmos/daxappUI/FragEqualizerPresets;
.super Landroid/app/Fragment;
.source "FragEqualizerPresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/atmos/api/IDsEvents;
.implements Lcom/atmos/daxappUI/IEqualizerChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

.field private mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

.field private mIEqPresets:Landroid/widget/GridView;

.field private mMobileLayout:Z

.field private mQmIntEq:Landroid/view/View;

.field private mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;


# direct methods
.method static synthetic access$000(Lcom/atmos/daxappUI/FragEqualizerPresets;I)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragEqualizerPresets;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragEqualizerPresets;->chooseEqualizerSettinginUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/atmos/daxappUI/FragEqualizerPresets;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragEqualizerPresets;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/atmos/daxappUI/FragEqualizerPresets;)Lcom/atmos/daxappUI/EqualizerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragEqualizerPresets;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    return-object v0
.end method

.method private chooseEqualizerSetting(I)V
    .locals 2
    .param p1, "preset"    # I

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 401
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 402
    const/4 p1, -0x1

    .line 406
    :cond_1
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    .line 408
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;->setUserProfilePopulated()V

    .line 410
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 411
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;->onProfileSettingsChanged()V

    goto :goto_0
.end method

.method private chooseEqualizerSettinginUI(I)V
    .locals 4
    .param p1, "preset"    # I

    .prologue
    .line 359
    const-string v0, "FragEqualizerPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooseEqualizerSetting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 362
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 363
    const/4 p1, -0x1

    .line 367
    :cond_0
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-nez v0, :cond_2

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    const-string v0, "FragEqualizerPresets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooseEqualizerSettinginUI(): setIeqPreset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v1, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/atmos/daxappUI/MainActivity;

    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setIeqPreset(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    .line 378
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 380
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragEqualizerPresets;->chooseEqualizerSetting(I)V

    goto :goto_0
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 415
    iget-boolean v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/IDsActivityCommon;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 421
    .local v1, "id":I
    const v2, 0x7f0c001b

    if-ne v2, v1, :cond_2

    .line 422
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/atmos/daxappUI/FragEqualizerPresets;->chooseEqualizerSettinginUI(I)V

    .line 423
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 424
    .local v0, "eqText":Landroid/widget/TextView;
    const v2, 0x7f06001b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 425
    .end local v0    # "eqText":Landroid/widget/TextView;
    :cond_2
    const v2, 0x7f0c0014

    if-ne v2, v1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->resetGEqOnUserClick()V

    goto :goto_0
.end method

.method private resetGEqOnUserClick()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;->resetEqUserGains()V

    .line 432
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;->onProfileSettingsChanged()V

    .line 433
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    iput-object p1, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mActivity:Landroid/app/Activity;

    .line 100
    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->getDsClient()Lcom/atmos/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 101
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
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

    .line 92
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 93
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragEqualizerPresetsObserver"

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
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 208
    .local v0, "id":I
    const v1, 0x7f0c0019

    if-ne v1, v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    const v2, 0x7f060035

    const v3, 0x7f060036

    invoke-interface {v1, p1, v2, v3}, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;->displayTooltip(Landroid/view/View;II)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragEqualizerPresets;->onDolbyClientUseClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    .line 226
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 117
    .local v7, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f090000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    .line 119
    const/4 v8, 0x2

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 120
    .local v4, "textIds":[I
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget v2, v0, v1

    .line 121
    .local v2, "id":I
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 122
    .local v6, "tv":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 123
    iget-boolean v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v8, :cond_1

    .line 124
    sget-object v8, Lcom/atmos/daxappUI/Assets$FontType;->LIGHT:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    sget-object v8, Lcom/atmos/daxappUI/Assets$FontType;->REGULAR:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 130
    .end local v2    # "id":I
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_2
    iget-boolean v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v8, :cond_4

    .line 131
    const v8, 0x7f0c0013

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 132
    .restart local v6    # "tv":Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 133
    sget-object v8, Lcom/atmos/daxappUI/Assets$FontType;->MEDIUM:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    :cond_3
    const v8, 0x7f0c0012

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "tv":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 136
    .restart local v6    # "tv":Landroid/widget/TextView;
    if-eqz v6, :cond_4

    .line 137
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_4
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    .line 143
    iget-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v8, :cond_5

    .line 144
    new-instance v8, Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030001

    new-instance v11, Lcom/atmos/daxappUI/FragEqualizerPresets$1;

    invoke-direct {v11, p0}, Lcom/atmos/daxappUI/FragEqualizerPresets$1;-><init>(Lcom/atmos/daxappUI/FragEqualizerPresets;)V

    invoke-direct {v8, v9, v10, v11}, Lcom/atmos/daxappUI/EqualizerAdapter;-><init>(Landroid/content/Context;ILcom/atmos/daxappUI/EqualizerAdapter$IPresetListener;)V

    iput-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    .line 152
    iget-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    new-instance v9, Lcom/atmos/daxappUI/FragEqualizerPresets$2;

    invoke-direct {v9, p0}, Lcom/atmos/daxappUI/FragEqualizerPresets$2;-><init>(Lcom/atmos/daxappUI/FragEqualizerPresets;)V

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    :cond_5
    const v8, 0x7f0c001b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 168
    .local v5, "theV":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 169
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 173
    :cond_6
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 174
    if-eqz v5, :cond_7

    .line 175
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 180
    :cond_7
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    .line 181
    iget-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    if-eqz v8, :cond_8

    .line 182
    iget-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v8, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 186
    :cond_8
    return-object v7

    .line 119
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
    .line 237
    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0
    .param p1, "isSuspended"    # Z

    .prologue
    .line 253
    return-void
.end method

.method public onEqualizerEditStart()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 221
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;->onEqualizerEditStart()V

    .line 222
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 437
    iget-boolean v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v2, :cond_0

    .line 438
    const v2, 0x7f060035

    const v3, 0x7f060036

    invoke-static {v2, v3}, Lcom/atmos/daxappUI/TooltipDialog;->newInstance(II)Lcom/atmos/daxappUI/TooltipDialog;

    move-result-object v0

    .line 439
    .local v0, "diag":Landroid/app/DialogFragment;
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TooltipDialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 443
    .end local v0    # "diag":Landroid/app/DialogFragment;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onProfileSelected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 243
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 248
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 198
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;->equalizerPresetsAreAlive()V

    .line 201
    :cond_0
    return-void
.end method

.method public selectIEqPresetInUI(I)V
    .locals 10
    .param p1, "preset"    # I

    .prologue
    const v9, 0x7f0c0012

    const v8, 0x7f06001b

    const v7, 0x7f060005

    const/4 v4, 0x1

    const/4 v6, -0x1

    .line 297
    iget-boolean v5, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-ne v5, v4, :cond_0

    .line 298
    if-ne p1, v6, :cond_0

    .line 299
    const/4 p1, 0x3

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

    move-result-object v3

    .line 305
    .local v3, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v5, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->setSelection(I)V

    .line 307
    iget-boolean v5, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mMobileLayout:Z

    if-nez v5, :cond_7

    .line 308
    const v5, 0x7f0c001b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, "theV":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 310
    if-ne p1, v6, :cond_4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 313
    :cond_1
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    .local v0, "eqText":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 315
    if-ne p1, v6, :cond_5

    invoke-virtual {p0, v8}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_2
    const v4, 0x7f0c0013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 319
    .local v2, "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    if-eqz v4, :cond_3

    .line 320
    if-ne p1, v6, :cond_6

    const v4, 0x7f060015

    invoke-virtual {p0, v4}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .end local v1    # "theV":Landroid/view/View;
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 335
    return-void

    .line 310
    .end local v0    # "eqText":Landroid/widget/TextView;
    .end local v2    # "tv":Landroid/widget/TextView;
    .restart local v1    # "theV":Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 315
    .restart local v0    # "eqText":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0, v7}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 320
    .restart local v2    # "tv":Landroid/widget/TextView;
    :cond_6
    iget-object v4, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v4, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->getItem(I)Lcom/atmos/daxappUI/EqualizerSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/atmos/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 323
    .end local v0    # "eqText":Landroid/widget/TextView;
    .end local v1    # "theV":Landroid/view/View;
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    .restart local v0    # "eqText":Landroid/widget/TextView;
    if-eqz v0, :cond_8

    .line 325
    const/4 v4, 0x3

    if-ne p1, v4, :cond_9

    invoke-virtual {p0, v8}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_8
    const v4, 0x7f0c0013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 329
    .restart local v2    # "tv":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    if-eqz v4, :cond_3

    .line 330
    iget-object v4, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v4, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->getItem(I)Lcom/atmos/daxappUI/EqualizerSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/atmos/daxappUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 325
    .end local v2    # "tv":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {p0, v7}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 260
    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v2, p1}, Lcom/atmos/daxappUI/EqualizerAdapter;->setDolbyOnOff(Z)V

    .line 261
    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/atmos/daxappUI/EqualizerAdapter;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "theFragV":Landroid/view/View;
    const v2, 0x7f0c0012

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 271
    :cond_1
    const v2, 0x7f0c0013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_2

    .line 273
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 276
    :cond_2
    const v2, 0x7f0c001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_3

    .line 278
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 282
    :cond_3
    const v2, 0x7f0c001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_4

    .line 284
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 285
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 288
    :cond_4
    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 289
    iget-object v2, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    :cond_5
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 293
    return-void
.end method

.method public setResetEqButtonVisibility()V
    .locals 6

    .prologue
    .line 338
    const/4 v2, 0x4

    .line 339
    .local v2, "vis":I
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v4}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 340
    sget-object v4, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/atmos/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/atmos/daxappUI/FragEqualizerPresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v4, v3, v5}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getGeqOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v0

    .line 341
    .local v0, "geqOn":Z
    if-eqz v0, :cond_0

    .line 342
    const/4 v2, 0x0

    .line 346
    .end local v0    # "geqOn":Z
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c0014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, "theV":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_1
    return-void
.end method

.method public updateGraphicEqInUI()V
    .locals 0

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 355
    return-void
.end method
