.class public Lcom/atmos/daxappUI/FragProfilePresetEditor;
.super Landroid/app/Fragment;
.source "FragProfilePresetEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/atmos/api/IDsEvents;


# instance fields
.field private mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

.field private mDolbyClientConnected:Z

.field private mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

.field private mMobileLayout:Z

.field private mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    .line 59
    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mMobileLayout:Z

    return-void
.end method

.method private endEditingProfileName(Z)V
    .locals 7
    .param p1, "accept"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 361
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    if-eqz v3, :cond_4

    .line 362
    if-eqz p1, :cond_3

    .line 363
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "newName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 367
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mPosition:I

    if-ne v3, v4, :cond_6

    .line 368
    new-instance v0, Lcom/atmos/api/DsProfileName;

    invoke-direct {v0}, Lcom/atmos/api/DsProfileName;-><init>()V

    .line 369
    .local v0, "dpn":Lcom/atmos/api/DsProfileName;
    invoke-virtual {v0, v5}, Lcom/atmos/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, v2}, Lcom/atmos/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 373
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    .end local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    .end local v2    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 379
    .restart local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    .restart local v2    # "newName":Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Lcom/atmos/api/DsGlobalEx;->setProfileName(ILcom/atmos/api/DsProfileName;)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    .end local v2    # "newName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/atmos/daxappCoreUI/Tools;->hideVirtualKeyboard(Landroid/app/Activity;)Z

    .line 409
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 410
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 411
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 412
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget-object v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iput-object v5, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    .line 416
    :cond_4
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;

    if-eqz v3, :cond_5

    .line 417
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;->onProfileNameEditEnded()V

    .line 419
    :cond_5
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    goto :goto_0

    .line 380
    .restart local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    .restart local v2    # "newName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v1}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_1

    .line 385
    .end local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    .end local v1    # "e":Lcom/atmos/api/DsAccessException;
    :cond_6
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    iget v3, v3, Lcom/atmos/daxappUI/ProfileEditInfo;->mPosition:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 387
    new-instance v0, Lcom/atmos/api/DsProfileName;

    invoke-direct {v0}, Lcom/atmos/api/DsProfileName;-><init>()V

    .line 388
    .restart local v0    # "dpn":Lcom/atmos/api/DsProfileName;
    invoke-virtual {v0, v5}, Lcom/atmos/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, v2}, Lcom/atmos/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v3

    if-eq v3, v6, :cond_7

    .line 392
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v3

    if-nez v3, :cond_0

    .line 398
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Lcom/atmos/api/DsGlobalEx;->setProfileName(ILcom/atmos/api/DsProfileName;)I
    :try_end_1
    .catch Lcom/atmos/api/DsAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 399
    :catch_1
    move-exception v1

    .line 401
    .restart local v1    # "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v1}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 316
    iget-boolean v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 322
    .local v0, "id":I
    const v2, 0x7f0c0021

    if-ne v2, v0, :cond_0

    .line 328
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 329
    .local v1, "selectedProfile":I
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v2, v1}, Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;->profileReset(I)V

    goto :goto_0
.end method

.method private startEditingProfileName(Landroid/widget/TextView;Landroid/widget/EditText;I)V
    .locals 5
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "edit"    # Landroid/widget/EditText;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 335
    invoke-direct {p0, v0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 337
    if-le p3, v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 338
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 339
    sget-object v0, Lcom/atmos/daxappUI/Assets$FontType;->REGULAR:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static {v0}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 340
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 343
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 344
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 345
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 346
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/atmos/daxappCoreUI/Tools;->showVirtualKeyboard(Landroid/content/Context;)V

    .line 347
    invoke-virtual {p2}, Landroid/widget/EditText;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 352
    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 355
    new-instance v0, Lcom/atmos/daxappUI/ProfileEditInfo;

    invoke-direct {v0, p3, p1, p2}, Lcom/atmos/daxappUI/ProfileEditInfo;-><init>(ILandroid/widget/TextView;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/atmos/daxappUI/ProfileEditInfo;

    .line 356
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;->onProfileNameEditStarted()V

    .line 358
    :cond_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method public cancelPendingEdition()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 313
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 74
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    iget-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/atmos/daxappUI/IDsFragObserver;->getDsClient()Lcom/atmos/api/DsGlobalEx;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 88
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 76
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

    .line 81
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 82
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragProfileEditorObserver"

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
    .line 205
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->onDolbyClientUseClick(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public onClientConnected()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    .line 148
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0c0020

    const/4 v9, 0x0

    .line 102
    const v8, 0x7f030007

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 105
    .local v7, "v":Landroid/view/View;
    const/4 v8, 0x1

    new-array v4, v8, [I

    aput v10, v4, v9

    .line 106
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

    .line 107
    .local v2, "id":I
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 108
    .local v6, "tv":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 109
    sget-object v8, Lcom/atmos/daxappUI/Assets$FontType;->REGULAR:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static {v8}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "id":I
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 116
    .local v5, "theV":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 121
    :cond_2
    const v8, 0x7f0c0021

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 122
    if-eqz v5, :cond_3

    .line 123
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f090000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mMobileLayout:Z

    .line 129
    return-object v7
.end method

.method public onDsOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 159
    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0
    .param p1, "isSuspended"    # Z

    .prologue
    .line 175
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 211
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const v2, 0x7f0c0022

    if-ne v1, v2, :cond_2

    .line 212
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

    .line 214
    :cond_1
    invoke-direct {p0, v0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 218
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

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c0022

    if-ne v1, v2, :cond_0

    .line 225
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 227
    invoke-direct {p0, v0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 228
    const/4 v0, 0x1

    .line 231
    :cond_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0020

    if-ne v0, v1, :cond_0

    .line 195
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v1}, Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;->getProfileSelected()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->startEditingProfileName(Landroid/widget/TextView;Landroid/widget/EditText;I)V

    .line 199
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 182
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 184
    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 165
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 141
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;->profileEditorIsAlive()V

    .line 144
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "theFragV":Landroid/view/View;
    if-nez p1, :cond_0

    .line 239
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 244
    const v3, 0x7f0c0020

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 245
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 246
    if-nez p1, :cond_1

    .line 247
    const v3, 0x7f060014

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 249
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 252
    :cond_2
    const v3, 0x7f0c0021

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 254
    if-eqz p1, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_3
    return-void

    .line 254
    :cond_4
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public setResetProfileVisibility()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    .line 259
    iget-boolean v6, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    if-nez v6, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v2, ""

    .line 264
    .local v2, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 265
    .local v1, "profile":I
    packed-switch v1, :pswitch_data_0

    .line 288
    :goto_1
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c0020

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 289
    .local v3, "tv":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0c0021

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 294
    .local v4, "v":Landroid/widget/ImageView;
    if-eqz v4, :cond_0

    .line 304
    const v6, 0x7f020066

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v6, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6, v1}, Lcom/atmos/api/DsGlobalEx;->isProfileSettingsModified(I)Z

    move-result v0

    .line 307
    .local v0, "modified":Z
    if-eqz v0, :cond_3

    const/4 v5, 0x0

    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 267
    .end local v0    # "modified":Z
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/widget/ImageView;
    :pswitch_0
    const v6, 0x7f06000a

    invoke-virtual {p0, v6}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    goto :goto_1

    .line 270
    :pswitch_1
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    goto :goto_1

    .line 273
    :pswitch_2
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    goto :goto_1

    .line 276
    :pswitch_3
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    goto :goto_1

    .line 279
    :pswitch_4
    iget-object v6, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6, v5}, Lcom/atmos/api/DsGlobalEx;->getProfileName(I)Lcom/atmos/api/DsProfileName;

    move-result-object v6

    invoke-virtual {v6}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 280
    goto :goto_1

    .line 282
    :pswitch_5
    iget-object v6, p0, Lcom/atmos/daxappUI/FragProfilePresetEditor;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/atmos/api/DsGlobalEx;->getProfileName(I)Lcom/atmos/api/DsProfileName;

    move-result-object v6

    invoke-virtual {v6}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 283
    goto :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
