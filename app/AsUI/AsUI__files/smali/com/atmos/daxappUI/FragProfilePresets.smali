.class public Lcom/atmos/daxappUI/FragProfilePresets;
.super Landroid/app/Fragment;
.source "FragProfilePresets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/atmos/api/IDsEvents;


# instance fields
.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

.field private mMobileLayout:Z

.field private mNativeRootContainer:Landroid/view/ViewGroup;

.field private mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

.field private mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    .line 58
    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mMobileLayout:Z

    return-void
.end method

.method static synthetic access$200(Lcom/atmos/daxappUI/FragProfilePresets;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragProfilePresets;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 391
    iget-boolean v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 397
    .local v0, "id":I
    const v2, 0x7f0c003e

    if-ne v2, v0, :cond_0

    .line 402
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 403
    .local v1, "selectedProfile":I
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v2, v1}, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;->profileReset(I)V

    goto :goto_0
.end method


# virtual methods
.method public getItemName(I)Ljava/lang/String;
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v0, p1}, Lcom/atmos/daxappUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/ProfilesAdapter;->getSelection()I

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 73
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->getDsClient()Lcom/atmos/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 88
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mMobileLayout:Z

    .line 89
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
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

    .line 80
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 81
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragProfilePresetsObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragProfilePresets;->onDolbyClientUseClick(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public onClientConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 145
    iput-boolean v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    .line 146
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mMobileLayout:Z

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;->profilePresetsAreAlive()V

    .line 149
    :cond_0
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDolbyClientConnected:Z

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 109
    .local v0, "lv":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<Landroid/widget/ListAdapter;>;"
    new-instance v3, Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/MainActivity;

    const v4, 0x7f03000d

    iget-object v5, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-direct {v3, v2, v4, v5, p0}, Lcom/atmos/daxappUI/ProfilesAdapter;-><init>(Lcom/atmos/daxappUI/MainActivity;ILcom/atmos/api/DsGlobalEx;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    .line 110
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/atmos/daxappUI/ViewTools;->determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    .line 117
    return-object v1
.end method

.method public onDsOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 167
    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0
    .param p1, "isSuspended"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 219
    iget-boolean v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mMobileLayout:Z

    if-nez v1, :cond_3

    .line 220
    if-ne p3, v3, :cond_1

    .line 221
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1}, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;->chooseExploreAtmosProfile()V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1}, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;->hideExploreAtomsProfile()V

    .line 233
    :cond_2
    iget-boolean v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mMobileLayout:Z

    if-ne v1, v2, :cond_4

    .line 234
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v0

    .line 236
    .local v0, "profile":I
    if-ne v0, p3, :cond_4

    .line 239
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1}, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;->editProfile()V

    goto :goto_0

    .line 227
    .end local v0    # "profile":I
    :cond_3
    if-ne p3, v3, :cond_2

    .line 228
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.atmos.EXPLORE_DOLBY_ATMOS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/FragProfilePresets;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    :cond_4
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v1, v2}, Lcom/atmos/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    if-nez v1, :cond_6

    .line 249
    :cond_5
    const-string v1, "DsUI::MainActivity"

    const-string v2, "FragProfilePresets.onItemClick(), getView() == null or mFObserver == null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_6
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v1}, Lcom/atmos/daxappUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1, p3}, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;->chooseProfile(I)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    const v2, 0x7f0c0024

    if-ne v1, v2, :cond_1

    .line 197
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v0

    .line 198
    .local v0, "profile":I
    if-eq v0, p3, :cond_0

    .line 199
    invoke-virtual/range {p0 .. p5}, Lcom/atmos/daxappUI/FragProfilePresets;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v1, p3}, Lcom/atmos/daxappUI/ProfilesAdapter;->startEditingProfileName(I)V

    .line 202
    const/4 v1, 0x1

    .line 205
    .end local v0    # "profile":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 142
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "prefile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 160
    :cond_0
    return-void
.end method

.method public onProfileNameEditStarted()V
    .locals 3

    .prologue
    .line 320
    const-string v1, "DsUI::MainActivity"

    const-string v2, "Main.onProfileNameEditStarted()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/atmos/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    new-instance v0, Lcom/atmos/daxappUI/FragProfilePresets$1;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/FragProfilePresets$1;-><init>(Lcom/atmos/daxappUI/FragProfilePresets;)V

    .line 387
    .local v0, "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public onProfileSelected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 173
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 129
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;->profilePresetsAreAlive()V

    .line 132
    :cond_0
    return-void
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 313
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresets;->getView()Landroid/view/View;

    move-result-object v1

    .line 296
    .local v1, "theFragV":Landroid/view/View;
    if-nez p1, :cond_0

    .line 297
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/atmos/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 302
    :cond_0
    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "listView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 307
    .end local v0    # "listView":Landroid/view/View;
    .end local v1    # "theFragV":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresets;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    invoke-virtual {v0, p1}, Lcom/atmos/daxappUI/ProfilesAdapter;->setSelection(I)V

    .line 264
    :cond_0
    return-void
.end method
