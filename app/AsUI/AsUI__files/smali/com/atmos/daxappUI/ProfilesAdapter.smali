.class public Lcom/atmos/daxappUI/ProfilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfilesAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final mActivity:Lcom/atmos/daxappUI/MainActivity;

.field private mCurrentlyEditName:Ljava/lang/String;

.field private mCurrentlyEditedProfile:I

.field private final mDefaultProfileNames:[Ljava/lang/String;

.field private final mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mEditable:Z

.field private final mLayout:I

.field private mNewLayout:Z

.field private final mNotifyDataSetChanged:Ljava/lang/Runnable;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mProfiles:[Lcom/atmos/daxappUI/Profile;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Lcom/atmos/daxappUI/MainActivity;ILcom/atmos/api/DsGlobalEx;Landroid/view/View$OnClickListener;)V
    .locals 8
    .param p1, "context"    # Lcom/atmos/daxappUI/MainActivity;
    .param p2, "layout"    # I
    .param p3, "dsClient"    # Lcom/atmos/api/DsGlobalEx;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v0, -0x1

    const v6, 0x7f020069

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    .line 50
    iput v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    .line 54
    iput-boolean v4, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNewLayout:Z

    .line 55
    iput-boolean v4, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mEditable:Z

    .line 443
    new-instance v0, Lcom/atmos/daxappUI/ProfilesAdapter$1;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/ProfilesAdapter$1;-><init>(Lcom/atmos/daxappUI/ProfilesAdapter;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    .line 63
    iput-object p1, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    .line 64
    iput p2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mLayout:I

    .line 65
    iput-object p3, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 66
    iput-object p4, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 67
    invoke-virtual {p1}, Lcom/atmos/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNewLayout:Z

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000a

    invoke-virtual {p1, v1}, Lcom/atmos/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 72
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000b

    invoke-virtual {p1, v1}, Lcom/atmos/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 73
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000c

    invoke-virtual {p1, v1}, Lcom/atmos/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 74
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f06000d

    invoke-virtual {p1, v2}, Lcom/atmos/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const v2, 0x7f06000e

    invoke-virtual {p1, v2}, Lcom/atmos/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/atmos/daxappUI/Profile;

    iput-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    .line 82
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    new-instance v1, Lcom/atmos/daxappUI/Profile;

    const v2, 0x7f020049

    const v3, 0x7f020048

    invoke-direct {v1, v6, v2, v3}, Lcom/atmos/daxappUI/Profile;-><init>(III)V

    aput-object v1, v0, v4

    .line 83
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    new-instance v1, Lcom/atmos/daxappUI/Profile;

    const v2, 0x7f02004c

    const v3, 0x7f02004b

    invoke-direct {v1, v6, v2, v3}, Lcom/atmos/daxappUI/Profile;-><init>(III)V

    aput-object v1, v0, v5

    .line 84
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    new-instance v1, Lcom/atmos/daxappUI/Profile;

    const v2, 0x7f02003c

    const v3, 0x7f02003b

    invoke-direct {v1, v6, v2, v3}, Lcom/atmos/daxappUI/Profile;-><init>(III)V

    aput-object v1, v0, v7

    .line 85
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    const/4 v1, 0x3

    new-instance v2, Lcom/atmos/daxappUI/Profile;

    const v3, 0x7f020088

    const v4, 0x7f020087

    const v5, 0x7f020086

    invoke-direct {v2, v3, v4, v5}, Lcom/atmos/daxappUI/Profile;-><init>(III)V

    aput-object v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    const/4 v1, 0x4

    new-instance v2, Lcom/atmos/daxappUI/Profile;

    const v3, 0x7f020055

    const v4, 0x7f020054

    invoke-direct {v2, v6, v3, v4}, Lcom/atmos/daxappUI/Profile;-><init>(III)V

    aput-object v2, v0, v1

    .line 89
    return-void
.end method

.method private getProfileName(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v3, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-object v2

    .line 317
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3, p1}, Lcom/atmos/api/DsGlobalEx;->getProfileName(I)Lcom/atmos/api/DsProfileName;

    move-result-object v0

    .line 319
    .local v0, "dpn":Lcom/atmos/api/DsProfileName;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 327
    .end local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 416
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 421
    return-void
.end method

.method public endEditingProfileName(Z)V
    .locals 9
    .param p1, "accept"    # Z

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 334
    const-string v2, "DsUI::MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endEditingProfileName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    if-ne v2, v6, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-eqz p1, :cond_4

    .line 340
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 341
    const-string v2, ""

    iput-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 345
    :goto_1
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 347
    iget v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    if-ne v2, v8, :cond_6

    .line 348
    new-instance v0, Lcom/atmos/api/DsProfileName;

    invoke-direct {v0}, Lcom/atmos/api/DsProfileName;-><init>()V

    .line 349
    .local v0, "dpn":Lcom/atmos/api/DsProfileName;
    invoke-virtual {v0, v5}, Lcom/atmos/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/atmos/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v2

    if-eq v2, v7, :cond_2

    .line 353
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v2

    if-nez v2, :cond_0

    .line 359
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/atmos/api/DsGlobalEx;->setProfileName(ILcom/atmos/api/DsProfileName;)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    :cond_3
    :goto_2
    iput-object v5, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 386
    :cond_4
    iput v6, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    .line 387
    invoke-virtual {p0}, Lcom/atmos/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 388
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/atmos/daxappCoreUI/Tools;->hideVirtualKeyboard(Landroid/app/Activity;)Z

    .line 389
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/MainActivity;->onProfileNameEditEnded()V

    goto :goto_0

    .line 343
    :cond_5
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    goto :goto_1

    .line 360
    .restart local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v1}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_2

    .line 364
    .end local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    .end local v1    # "e":Lcom/atmos/api/DsAccessException;
    :cond_6
    iget v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 366
    new-instance v0, Lcom/atmos/api/DsProfileName;

    invoke-direct {v0}, Lcom/atmos/api/DsProfileName;-><init>()V

    .line 367
    .restart local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    invoke-virtual {v0, v5}, Lcom/atmos/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/atmos/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v2

    if-eq v2, v7, :cond_7

    .line 371
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v2

    if-nez v2, :cond_0

    .line 377
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/atmos/api/DsGlobalEx;->setProfileName(ILcom/atmos/api/DsProfileName;)I
    :try_end_1
    .catch Lcom/atmos/api/DsAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 378
    :catch_1
    move-exception v1

    .line 380
    .restart local v1    # "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v1}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/atmos/daxappUI/Profile;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/ProfilesAdapter;->getItem(I)Lcom/atmos/daxappUI/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 100
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 104
    const/4 v2, 0x4

    if-le p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v1, v2, p1

    .line 116
    :cond_1
    :goto_0
    return-object v1

    .line 107
    :cond_2
    const/4 v1, 0x0

    .line 108
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    :try_start_0
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/ProfilesAdapter;->getProfileName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    :cond_3
    :goto_1
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v1, v2, p1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    .line 128
    .local v2, "dsConnected":Z
    move-object/from16 v13, p2

    .line 129
    .local v13, "row":Landroid/view/View;
    if-nez v13, :cond_9

    .line 136
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mLayout:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 151
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mProfiles:[Lcom/atmos/daxappUI/Profile;

    move-object/from16 v17, v0

    aget-object v7, v17, p1

    .line 153
    .local v7, "item":Lcom/atmos/daxappUI/Profile;
    const/4 v11, 0x0

    .line 154
    .local v11, "profileModified":Z
    if-lez p1, :cond_1

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 156
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/atmos/api/DsGlobalEx;->isProfileSettingsModified(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 165
    :cond_1
    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v5

    .line 166
    .local v5, "engineEnabled":Z
    const/4 v8, 0x0

    .line 169
    .local v8, "itemName":Ljava/lang/String;
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 170
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v8, v17, p1

    .line 171
    const/4 v4, 0x1

    .line 184
    .local v4, "enabled":Z
    :cond_3
    :goto_2
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    const/4 v4, 0x1

    .line 186
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    if-eqz v5, :cond_d

    const/4 v14, 0x1

    .line 187
    .local v14, "selected":Z
    :goto_4
    const v17, 0x7f0c003d

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 188
    .local v10, "nameTextView":Landroid/widget/TextView;
    const v17, 0x7f0c0002

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 189
    .local v6, "icon":Landroid/widget/ImageView;
    const v17, 0x7f0c003e

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 191
    .local v12, "revertButton":Landroid/widget/ImageView;
    if-eqz v10, :cond_5

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    if-eqz v4, :cond_e

    const v17, 0x7f050008

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNewLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 195
    sget-object v17, Lcom/atmos/daxappUI/Assets$FontType;->LIGHT:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static/range {v17 .. v17}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 200
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNewLayout:Z

    move/from16 v17, v0

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/atmos/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 201
    if-eqz p1, :cond_4

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 202
    :cond_4
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_5
    :goto_7
    invoke-virtual {v7, v14, v4}, Lcom/atmos/daxappUI/Profile;->getIcon(ZZ)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    if-eqz v12, :cond_7

    .line 213
    if-eqz v14, :cond_13

    .line 214
    const/16 v16, 0x4

    .line 215
    .local v16, "vis":I
    if-eqz v2, :cond_6

    if-eqz v11, :cond_6

    .line 216
    const/16 v16, 0x0

    .line 218
    :cond_6
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    const v17, 0x7f020066

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    .end local v16    # "vis":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_7
    if-eqz v14, :cond_14

    const v17, 0x7f020069

    :goto_9
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 240
    const v17, 0x7f0c003f

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 241
    .local v9, "nameEdit":Landroid/widget/EditText;
    if-eqz v9, :cond_8

    .line 242
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/atmos/daxappUI/ProfilesAdapter;->mEditable:Z

    .line 244
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :goto_a
    if-lez p1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p1

    if-ne v0, v1, :cond_15

    const/16 v17, 0x5

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    .line 248
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Landroid/text/InputFilter$LengthFilter;

    const/16 v20, 0xe

    invoke-direct/range {v19 .. v20}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 249
    sget-object v17, Lcom/atmos/daxappUI/Assets$FontType;->REGULAR:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static/range {v17 .. v17}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 252
    const/16 v17, 0x0

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/text/Editable;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 253
    invoke-virtual {v9}, Landroid/widget/EditText;->requestFocus()Z

    .line 254
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 255
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 256
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    :cond_8
    :goto_b
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    return-object v13

    .line 139
    .end local v4    # "enabled":Z
    .end local v5    # "engineEnabled":Z
    .end local v6    # "icon":Landroid/widget/ImageView;
    .end local v7    # "item":Lcom/atmos/daxappUI/Profile;
    .end local v8    # "itemName":Ljava/lang/String;
    .end local v9    # "nameEdit":Landroid/widget/EditText;
    .end local v10    # "nameTextView":Landroid/widget/TextView;
    .end local v11    # "profileModified":Z
    .end local v12    # "revertButton":Landroid/widget/ImageView;
    .end local v14    # "selected":Z
    :cond_9
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 140
    .local v15, "tagIndex":I
    move/from16 v0, p1

    if-eq v0, v15, :cond_0

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mLayout:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    goto/16 :goto_0

    .line 160
    .end local v15    # "tagIndex":I
    .restart local v7    # "item":Lcom/atmos/daxappUI/Profile;
    .restart local v11    # "profileModified":Z
    :catch_0
    move-exception v3

    .line 161
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 173
    .end local v3    # "e1":Ljava/lang/Exception;
    .restart local v5    # "engineEnabled":Z
    .restart local v8    # "itemName":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    .line 175
    if-eqz v2, :cond_b

    .line 176
    invoke-virtual/range {p0 .. p1}, Lcom/atmos/daxappUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    const-string v17, "DsUI::MainActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ProfilesAdapter.getView(), itemName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_b
    const/4 v4, 0x1

    .line 180
    .restart local v4    # "enabled":Z
    if-nez v8, :cond_3

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v8, v17, p1

    goto/16 :goto_2

    .line 184
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 186
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 192
    .restart local v6    # "icon":Landroid/widget/ImageView;
    .restart local v10    # "nameTextView":Landroid/widget/TextView;
    .restart local v12    # "revertButton":Landroid/widget/ImageView;
    .restart local v14    # "selected":Z
    :cond_e
    if-eqz v14, :cond_f

    const v17, 0x7f05000b

    goto/16 :goto_5

    :cond_f
    const v17, 0x7f05000a

    goto/16 :goto_5

    .line 197
    :cond_10
    sget-object v17, Lcom/atmos/daxappUI/Assets$FontType;->REGULAR:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static/range {v17 .. v17}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_6

    .line 204
    :cond_11
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 207
    :cond_12
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 223
    :cond_13
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 238
    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 258
    .restart local v9    # "nameEdit":Landroid/widget/EditText;
    :cond_15
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 259
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 260
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_b

    .line 245
    :catch_1
    move-exception v17

    goto/16 :goto_a
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "DsUI::MainActivity"

    const-string v1, "ProfilesAdapter.notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 432
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 406
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const v2, 0x7f0c003f

    if-ne v1, v2, :cond_2

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x7

    if-ne p2, v1, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    .line 408
    :cond_1
    invoke-virtual {p0, v0}, Lcom/atmos/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 411
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c003f

    if-ne v1, v2, :cond_0

    .line 395
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 397
    invoke-virtual {p0, v0}, Lcom/atmos/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 398
    const/4 v0, 0x1

    .line 401
    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 425
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "DsUI::MainActivity"

    const-string v1, "ProfilesAdapter.scheduleNotifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method

.method public scheduleNotifyDataSetChangedExe()V
    .locals 2

    .prologue
    .line 440
    const-string v0, "DsUI::MainActivity"

    const-string v1, "ProfilesAdapter.scheduleNotifyDataSetChangedExe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 274
    iget v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    .line 275
    iput p1, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mSelectedPosition:I

    .line 276
    invoke-virtual {p0}, Lcom/atmos/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChangedExe()V

    .line 278
    :cond_0
    return-void
.end method

.method public startEditingProfileName(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 285
    const-string v2, "DsUI::MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProfilesAdapter.startEditingProfileName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mEditable:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 294
    .local v0, "dsClient":Lcom/atmos/api/DsGlobalEx;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 299
    const/4 v2, 0x4

    if-le p1, v2, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "name":Ljava/lang/String;
    iput p1, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    .line 303
    iput-object v1, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 304
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-static {v2}, Lcom/atmos/daxappCoreUI/Tools;->showVirtualKeyboard(Landroid/content/Context;)V

    .line 305
    invoke-virtual {p0}, Lcom/atmos/daxappUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 307
    iget-object v2, p0, Lcom/atmos/daxappUI/ProfilesAdapter;->mActivity:Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/MainActivity;->onProfileNameEditStarted()V

    goto :goto_0
.end method
