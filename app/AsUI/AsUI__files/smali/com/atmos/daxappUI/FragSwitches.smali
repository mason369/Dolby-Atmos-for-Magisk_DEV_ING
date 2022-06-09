.class public Lcom/atmos/daxappUI/FragSwitches;
.super Landroid/app/Fragment;
.source "FragSwitches.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mA2dpConnectionState:I

.field private mActivity:Landroid/app/Activity;

.field private mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

.field mHeadset_plug:I

.field private mMobileLayout:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

.field private mdeButton:Landroid/widget/ToggleButton;

.field private mdeText:Landroid/widget/TextView;

.field private mqm_de:Landroid/widget/ImageView;

.field private mqm_sv:Landroid/widget/ImageView;

.field private mqm_vl:Landroid/widget/ImageView;

.field private msvButton:Landroid/widget/ToggleButton;

.field private msvText:Landroid/widget/TextView;

.field private mvlButton:Landroid/widget/ToggleButton;

.field private mvlText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mMobileLayout:Z

    .line 61
    iput v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mHeadset_plug:I

    .line 62
    iput v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    .line 64
    new-instance v0, Lcom/atmos/daxappUI/FragSwitches$1;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/FragSwitches$1;-><init>(Lcom/atmos/daxappUI/FragSwitches;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/atmos/daxappUI/FragSwitches;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragSwitches;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/atmos/daxappUI/FragSwitches;->getVirtualizer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/atmos/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragSwitches;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/atmos/daxappUI/FragSwitches;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragSwitches;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/atmos/daxappUI/FragSwitches;I)I
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/FragSwitches;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    return p1
.end method

.method private getVirtualizer()Z
    .locals 4

    .prologue
    .line 282
    sget-object v0, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    .line 284
    .local v0, "selectedProfileSettings":Lcom/atmos/daxappCoreUI/DsClientSettings;
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0, v1, v2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getSpeakerVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v1}, Lcom/atmos/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setSpeakerVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    .line 287
    :cond_0
    iget v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mHeadset_plug:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0, v1, v2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getHeadphoneVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    .line 290
    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0, v1, v2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getSpeakerVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    goto :goto_0
.end method

.method private setVirtualizer(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 263
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v1}, Lcom/atmos/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v0

    .line 264
    .local v0, "isMonoSpeaker":Z
    iget v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mHeadset_plug:I

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 270
    :cond_1
    iget v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mHeadset_plug:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    if-ne v1, v3, :cond_3

    .line 271
    :cond_2
    sget-object v2, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2, v1, v3, p1}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setHeadphoneVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_3
    if-eqz v0, :cond_4

    .line 275
    sget-object v2, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setSpeakerVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    goto :goto_0

    .line 277
    :cond_4
    sget-object v2, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2, v1, v3, p1}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setSpeakerVirtualizerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    iput-object p1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    .line 97
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragObserver;

    move-object v4, v0

    iput-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    move-object v4, v0

    iput-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    iget-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/atmos/daxappUI/IDsFragObserver;->getDsClient()Lcom/atmos/api/DsGlobalEx;

    move-result-object v4

    iput-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 112
    iget-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 113
    .local v1, "am":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    :goto_0
    iput v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    .line 115
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v3, "headsetFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void

    .line 98
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "headsetFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement IDsFragObserver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 105
    .restart local v2    # "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement IDsFragSwitchesObserver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 216
    .local v1, "id":I
    sget-object v2, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    .line 218
    .local v2, "selectedProfileSettings":Lcom/atmos/daxappCoreUI/DsClientSettings;
    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->onProfileSettingsChanged()V

    .line 260
    :goto_1
    return-void

    .line 220
    :pswitch_1
    :try_start_0
    iget v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mHeadset_plug:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mFObserver:Lcom/atmos/daxappUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragObserver;->onDsApiError()V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/atmos/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    .line 225
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->cancelLongPress()V

    .line 226
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/atmos/daxappUI/FragSwitches;->setVirtualizer(Z)V

    .line 227
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    .line 228
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->onProfileSettingsChanged()V

    goto :goto_0

    .line 231
    :pswitch_2
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->cancelLongPress()V

    .line 232
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/atmos/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    iget-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/atmos/daxappUI/MainActivity;

    iget-object v8, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2, v4, v8}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getDialogEnhancerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_2
    invoke-virtual {v2, v3, v7, v5}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setDialogEnhancerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    .line 233
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    .line 234
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->onProfileSettingsChanged()V

    goto :goto_0

    :cond_1
    move v5, v6

    .line 232
    goto :goto_2

    .line 237
    :pswitch_3
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->cancelLongPress()V

    .line 238
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/atmos/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    iget-object v4, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/atmos/daxappUI/MainActivity;

    iget-object v8, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2, v4, v8}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getVolumeLevellerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {v2, v3, v7, v4}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setVolumeLevellerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    .line 239
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v3}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 238
    goto :goto_3

    .line 242
    :pswitch_4
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    const v4, 0x7f060037

    const v5, 0x7f060038

    invoke-interface {v3, p1, v4, v5}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 245
    :pswitch_5
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    const v4, 0x7f060039

    const v5, 0x7f06003a

    invoke-interface {v3, p1, v4, v5}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 248
    :pswitch_6
    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    const v4, 0x7f06003b

    const v5, 0x7f06003c

    invoke-interface {v3, p1, v4, v5}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0026
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const v17, 0x7f030009

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 141
    .local v14, "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/FragSwitches;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f090000

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mMobileLayout:Z

    .line 142
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [I

    fill-array-data v12, :array_0

    .line 143
    .local v12, "textIds":[I
    move-object v4, v12

    .local v4, "arr$":[I
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_2

    aget v8, v4, v7

    .line 144
    .local v8, "id":I
    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 145
    .local v13, "tv":Landroid/widget/TextView;
    if-eqz v13, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/atmos/daxappUI/FragSwitches;->mMobileLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 147
    sget-object v17, Lcom/atmos/daxappUI/Assets$FontType;->LIGHT:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static/range {v17 .. v17}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 149
    :cond_1
    sget-object v17, Lcom/atmos/daxappUI/Assets$FontType;->REGULAR:Lcom/atmos/daxappUI/Assets$FontType;

    invoke-static/range {v17 .. v17}, Lcom/atmos/daxappUI/Assets;->getFont(Lcom/atmos/daxappUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 154
    .end local v8    # "id":I
    .end local v13    # "tv":Landroid/widget/TextView;
    :cond_2
    new-instance v11, Lcom/atmos/daxappUI/ToggleSlideListener;

    invoke-direct {v11}, Lcom/atmos/daxappUI/ToggleSlideListener;-><init>()V

    .line 156
    .local v11, "slideListener":Lcom/atmos/daxappUI/ToggleSlideListener;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    .line 158
    .local v6, "buttonids":[I
    move-object v4, v6

    array-length v10, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_4

    aget v5, v4, v7

    .line 159
    .local v5, "bid":I
    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 160
    .local v15, "v2":Landroid/view/View;
    if-eqz v15, :cond_3

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 163
    invoke-virtual {v15, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/atmos/daxappUI/FragSwitches;->mMobileLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 158
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 170
    .end local v5    # "bid":I
    .end local v15    # "v2":Landroid/view/View;
    :cond_4
    const v17, 0x7f0c0026

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    .line 171
    const v17, 0x7f0c002b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    .line 172
    const v17, 0x7f0c002f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    .line 173
    const v17, 0x7f0c0027

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    .line 174
    const v17, 0x7f0c0028

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    .line 175
    const v17, 0x7f0c002c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    .line 176
    const v17, 0x7f0c0025

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    .line 177
    const v17, 0x7f0c002a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mdeText:Landroid/widget/TextView;

    .line 178
    const v17, 0x7f0c002e

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/FragSwitches;->mvlText:Landroid/widget/TextView;

    .line 182
    const-string v17, "EE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "et"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/high16 v18, 0x41700000    # 15.0f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    :cond_5
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 189
    .local v16, "viewobj":[Landroid/view/View;
    move-object/from16 v4, v16

    .local v4, "arr$":[Landroid/view/View;
    array-length v10, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v10, :cond_7

    aget-object v9, v4, v7

    .line 190
    .local v9, "iv":Landroid/view/View;
    if-eqz v9, :cond_6

    .line 191
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 189
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 196
    .end local v9    # "iv":Landroid/view/View;
    :cond_7
    return-object v14

    .line 142
    nop

    :array_0
    .array-data 4
        0x7f0c0025
        0x7f0c002a
        0x7f0c002e
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x7f0c0027
        0x7f0c0028
        0x7f0c002c
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 124
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    iget-boolean v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mMobileLayout:Z

    if-nez v1, :cond_0

    .line 354
    const/4 v1, 0x0

    .line 368
    :goto_0
    return v1

    .line 356
    :cond_0
    const/4 v0, 0x0

    .line 357
    .local v0, "diag":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_1

    .line 358
    const v1, 0x7f06003b

    const v2, 0x7f06003c

    invoke-static {v1, v2}, Lcom/atmos/daxappUI/TooltipDialog;->newInstance(II)Lcom/atmos/daxappUI/TooltipDialog;

    move-result-object v0

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_2

    .line 361
    const v1, 0x7f060039

    const v2, 0x7f06003a

    invoke-static {v1, v2}, Lcom/atmos/daxappUI/TooltipDialog;->newInstance(II)Lcom/atmos/daxappUI/TooltipDialog;

    move-result-object v0

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_3

    .line 364
    const v1, 0x7f060037

    const v2, 0x7f060038

    invoke-static {v1, v2}, Lcom/atmos/daxappUI/TooltipDialog;->newInstance(II)Lcom/atmos/daxappUI/TooltipDialog;

    move-result-object v0

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/atmos/daxappUI/FragSwitches;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "TooltipDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onProfileSettingsChanged()V
    .locals 4

    .prologue
    .line 294
    sget-object v0, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    .line 296
    .local v0, "settings":Lcom/atmos/daxappCoreUI/DsClientSettings;
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Lcom/atmos/daxappUI/FragSwitches;->getVirtualizer()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 298
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/atmos/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 301
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0, v1, v3}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getDialogEnhancerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    .line 304
    iget-object v2, p0, Lcom/atmos/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/atmos/daxappUI/MainActivity;

    iget-object v3, p0, Lcom/atmos/daxappUI/FragSwitches;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0, v1, v3}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getVolumeLevellerOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 306
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 208
    iget-boolean v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->mSpecificObserver:Lcom/atmos/daxappUI/IDsFragSwitchesObserver;

    invoke-interface {v0}, Lcom/atmos/daxappUI/IDsFragSwitchesObserver;->switchesAreAlive()V

    .line 211
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 9
    .param p1, "on"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 334
    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_0

    .line 335
    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 336
    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/atmos/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    .line 337
    iget v5, p0, Lcom/atmos/daxappUI/FragSwitches;->mHeadset_plug:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/atmos/daxappUI/FragSwitches;->mA2dpConnectionState:I

    if-eq v5, v8, :cond_0

    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v5}, Lcom/atmos/daxappUI/MainActivity;->isMonoSpeaker()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 338
    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 339
    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 340
    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isEnabled()Z

    move-result v5

    iget-object v6, p0, Lcom/atmos/daxappUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/atmos/daxappUI/FragSwitches;->updateSVButtonImage(ZI)V

    .line 343
    :cond_0
    const/4 v5, 0x7

    new-array v4, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/atmos/daxappUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/atmos/daxappUI/FragSwitches;->mdeText:Landroid/widget/TextView;

    aput-object v5, v4, v8

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/atmos/daxappUI/FragSwitches;->mvlText:Landroid/widget/TextView;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/atmos/daxappUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/atmos/daxappUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/atmos/daxappUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    .line 344
    .local v4, "viewobj":[Landroid/view/View;
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 345
    .local v2, "iv":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "iv":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public updateSVButtonImage(ZI)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "direction"    # I

    .prologue
    const/4 v1, 0x1

    .line 310
    if-eqz p1, :cond_3

    .line 311
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    if-ne v1, p2, :cond_0

    .line 313
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    .line 331
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 318
    :cond_1
    if-ne v1, p2, :cond_2

    .line 319
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 325
    :cond_3
    if-ne v1, p2, :cond_4

    .line 326
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/atmos/daxappUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
