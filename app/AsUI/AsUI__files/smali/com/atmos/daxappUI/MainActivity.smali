.class public Lcom/atmos/daxappUI/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/atmos/api/IDsAccessEvents;
.implements Lcom/atmos/api/IDsEvents;
.implements Lcom/atmos/api/IDsProfileNameEvents;
.implements Lcom/atmos/daxappUI/IDsActivityCommon;
.implements Lcom/atmos/daxappUI/IDsFragEqualizerPresetsObserver;
.implements Lcom/atmos/daxappUI/IDsFragGraphicVisualizerObserver;
.implements Lcom/atmos/daxappUI/IDsFragObserver;
.implements Lcom/atmos/daxappUI/IDsFragPowerObserver;
.implements Lcom/atmos/daxappUI/IDsFragProfileEditorObserver;
.implements Lcom/atmos/daxappUI/IDsFragProfilePresetsObserver;
.implements Lcom/atmos/daxappUI/IDsFragSwitchesObserver;


# static fields
.field private static mCurrProfileId:I

.field private static mEditProfile:Z

.field private static mOnDestroyTimer:J


# instance fields
.field private final DYNAMIC_LINEAR_LAYOUT_ID:I

.field private configuration:Lcom/atmos/daxappCoreUI/Configuration;

.field private firstLevelHeader:Landroid/view/View;

.field private header:Landroid/view/ViewGroup;

.field private mDSLogo:Landroid/widget/ImageView;

.field private mDolbyClientConnected:Z

.field private final mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mExploreDolbyAtmosClicked:Z

.field private mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

.field private mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

.field private mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

.field private mFS:Lcom/atmos/daxappUI/FragSwitches;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityRunning:Z

.field private mIsMonoSpeaker:Z

.field private mIsScreenOn:Z

.field private mMobileLayout:Z

.field private mNativeRootContainer:Landroid/view/ViewGroup;

.field private mOnPauseFlag:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mShowMainUi:Ljava/lang/Runnable;

.field private mSplashClientBound:Z

.field private mSplashScreenDelay:Ljava/lang/Runnable;

.field private final mSplashScreenDelayTime:I

.field private mSplashScreenDialog:Landroid/app/Dialog;

.field private mSplashTimerElapsed:Z

.field private mUseDsApiOnUiEvent:Z

.field private mVisualizerRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/atmos/daxappUI/MainActivity;->mEditProfile:Z

    .line 129
    const/4 v0, -0x1

    sput v0, Lcom/atmos/daxappUI/MainActivity;->mCurrProfileId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    new-instance v0, Lcom/atmos/api/DsGlobalEx;

    invoke-direct {v0}, Lcom/atmos/api/DsGlobalEx;-><init>()V

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 71
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    .line 78
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelayTime:I

    .line 79
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashTimerElapsed:Z

    .line 80
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashClientBound:Z

    .line 81
    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 101
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mVisualizerRegistered:Z

    .line 104
    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 105
    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 106
    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFS:Lcom/atmos/daxappUI/FragSwitches;

    .line 107
    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    .line 111
    const/16 v0, 0x8

    iput v0, p0, Lcom/atmos/daxappUI/MainActivity;->DYNAMIC_LINEAR_LAYOUT_ID:I

    .line 113
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    .line 119
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mIsScreenOn:Z

    .line 120
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mIsActivityRunning:Z

    .line 122
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    .line 124
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    .line 126
    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    .line 127
    iput-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mOnPauseFlag:Z

    .line 137
    new-instance v0, Lcom/atmos/daxappUI/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/MainActivity$1;-><init>(Lcom/atmos/daxappUI/MainActivity;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1431
    new-instance v0, Lcom/atmos/daxappUI/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/MainActivity$4;-><init>(Lcom/atmos/daxappUI/MainActivity;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/atmos/daxappUI/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/atmos/daxappUI/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/atmos/daxappUI/MainActivity;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/atmos/daxappUI/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/MainActivity;->registerVisualizer(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/daxappUI/FragProfilePresets;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/daxappUI/FragEqualizerPresets;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/atmos/daxappUI/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/atmos/daxappUI/MainActivity;)Lcom/atmos/api/DsGlobalEx;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    return-object v0
.end method

.method static synthetic access$300(Lcom/atmos/daxappUI/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    return v0
.end method

.method static synthetic access$400(Lcom/atmos/daxappUI/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->doInitMainUI()V

    return-void
.end method

.method static synthetic access$502(Lcom/atmos/daxappUI/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashTimerElapsed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/atmos/daxappUI/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->hideSplashScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/atmos/daxappUI/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->updateProfileNames()V

    return-void
.end method

.method static synthetic access$800(Lcom/atmos/daxappUI/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    return v0
.end method

.method static synthetic access$802(Lcom/atmos/daxappUI/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/atmos/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    return p1
.end method

.method static synthetic access$900(Lcom/atmos/daxappUI/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/MainActivity;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    return v0
.end method

.method private displaySplashScreen()Z
    .locals 2

    .prologue
    const v1, 0x7f030010

    .line 235
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    .line 236
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 237
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 238
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 239
    new-instance v0, Lcom/atmos/daxappUI/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/MainActivity$3;-><init>(Lcom/atmos/daxappUI/MainActivity;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method private displayTooltip(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "pointToView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/atmos/daxappUI/ViewTools;->showTooltip(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    goto :goto_0
.end method

.method private doInitMainUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 278
    .local v1, "sys":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x244

    if-lt v2, v3, :cond_0

    .line 279
    invoke-virtual {p0, v5}, Lcom/atmos/daxappUI/MainActivity;->setRequestedOrientation(I)V

    .line 283
    :cond_0
    const v2, 0x7f03000c

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    const v2, 0x7f0c0035

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->header:Landroid/view/ViewGroup;

    .line 293
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->firstLevelHeader:Landroid/view/View;

    .line 294
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->header:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->firstLevelHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 295
    const v2, 0x7f0c0031

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    .line 296
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 304
    invoke-static {p0}, Lcom/atmos/daxappUI/ViewTools;->determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mNativeRootContainer:Landroid/view/ViewGroup;

    .line 307
    const-string v2, "DsUI::MainActivity"

    const-string v3, "doInitMainUI - mDsClient.bindDsService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    if-nez v2, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/atmos/daxappCoreUI/Configuration;->getInstance(Landroid/content/Context;)Lcom/atmos/daxappCoreUI/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    .line 312
    const-string v2, "DsUI::MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInitMainUI - NEW CONFIG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    invoke-virtual {v4}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    invoke-virtual {v4}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f090000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    .line 317
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/FragProfilePresets;

    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 326
    :cond_2
    sget-boolean v2, Lcom/atmos/daxappUI/MainActivity;->mEditProfile:Z

    if-eqz v2, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->editProfile()V

    .line 329
    :cond_3
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const-string v2, "DsUI::MainActivity"

    const-string v3, "error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideSplashScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    iput-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    .line 265
    iput-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    .line 267
    return-void

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private internalOnDsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 645
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/MainActivity;->powerOnOff(Z)V

    .line 646
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 648
    .local v1, "profile":I
    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/MainActivity;->chooseProfile(I)V

    .line 649
    invoke-direct {p0, v3}, Lcom/atmos/daxappUI/MainActivity;->registerVisualizer(Z)V

    .line 655
    .end local v1    # "profile":I
    :goto_0
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v2, v3, :cond_2

    .line 656
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 660
    .local v0, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_1
    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    .line 663
    :cond_0
    return-void

    .line 651
    .end local v0    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->registerVisualizer(Z)V

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v0    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_1
.end method

.method private registerVisualizer(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x1

    .line 666
    iget-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mVisualizerRegistered:Z

    if-ne v1, p1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mIsScreenOn:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mIsActivityRunning:Z

    if-ne v1, v2, :cond_0

    .line 672
    iput-boolean p1, p0, Lcom/atmos/daxappUI/MainActivity;->mVisualizerRegistered:Z

    .line 674
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 675
    .local v0, "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->registerVisualizer(Z)V

    goto :goto_0
.end method

.method private unbindFromDsApi()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "DsUI::MainActivity"

    const-string v1, "MainActivity.unBindDsService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    .line 431
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/atmos/api/DsGlobalEx;->unregisterDsEvents()V

    .line 433
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/atmos/api/DsGlobalEx;->abandonAccessRight()I

    .line 434
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/atmos/api/DsGlobalEx;->unregisterClient()V

    .line 437
    :cond_0
    return-void
.end method

.method private updateProfileNames()V
    .locals 5

    .prologue
    .line 1408
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_0

    .line 1409
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 1410
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    :try_start_0
    new-instance v0, Lcom/atmos/api/DsProfileName;

    invoke-direct {v0}, Lcom/atmos/api/DsProfileName;-><init>()V

    .line 1417
    .local v0, "dpn_1":Lcom/atmos/api/DsProfileName;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/atmos/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    .line 1418
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/atmos/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    .line 1419
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0}, Lcom/atmos/api/DsGlobalEx;->setProfileName(ILcom/atmos/api/DsProfileName;)I

    .line 1421
    new-instance v1, Lcom/atmos/api/DsProfileName;

    invoke-direct {v1}, Lcom/atmos/api/DsProfileName;-><init>()V

    .line 1422
    .local v1, "dpn_2":Lcom/atmos/api/DsProfileName;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/atmos/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    .line 1423
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/atmos/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    .line 1424
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v1}, Lcom/atmos/api/DsGlobalEx;->setProfileName(ILcom/atmos/api/DsProfileName;)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1425
    .end local v0    # "dpn_1":Lcom/atmos/api/DsProfileName;
    .end local v1    # "dpn_2":Lcom/atmos/api/DsProfileName;
    :catch_0
    move-exception v2

    .line 1427
    .local v2, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v2}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public changeScale()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 215
    .local v1, "sys":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x244

    if-lt v2, v3, :cond_1

    .line 216
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 217
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 219
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 228
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x168

    if-lt v2, v3, :cond_0

    .line 223
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 224
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 226
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public chooseExploreAtmosProfile()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 866
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    .line 868
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragProfilePresets;

    .line 869
    .local v0, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    invoke-virtual {v0, v4}, Lcom/atmos/daxappUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "profileName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/atmos/daxappUI/FragProfilePresets;->setSelection(I)V

    .line 871
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/atmos/daxappUI/MainActivity;->onProfileNameChanged(ILjava/lang/String;)V

    .line 896
    return-void
.end method

.method public chooseProfile(I)V
    .locals 8
    .param p1, "profile"    # I

    .prologue
    const/4 v7, 0x1

    .line 495
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v5, :cond_1

    .line 496
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v3

    .line 497
    .local v3, "profileId":I
    if-eq v3, p1, :cond_1

    .line 498
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 499
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v5}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v5

    if-eqz v5, :cond_0

    .line 549
    .end local v3    # "profileId":I
    :goto_0
    return-void

    .line 505
    .restart local v3    # "profileId":I
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v5, p1}, Lcom/atmos/api/DsGlobalEx;->setProfile(I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v3    # "profileId":I
    :cond_1
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_5

    .line 516
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 521
    .local v2, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_1
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    if-ne v5, v7, :cond_2

    .line 522
    const/4 p1, 0x4

    .line 524
    :cond_2
    if-eqz v2, :cond_4

    .line 526
    invoke-virtual {v2, p1}, Lcom/atmos/daxappUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "profileName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Lcom/atmos/daxappUI/FragProfilePresets;->setSelection(I)V

    .line 530
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_6

    .line 531
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 535
    .local v1, "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    :goto_2
    if-eqz v1, :cond_3

    .line 539
    invoke-virtual {v1}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->cancelPendingEdition()V

    .line 543
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/atmos/daxappUI/MainActivity;->onProfileNameChanged(ILjava/lang/String;)V

    .line 546
    .end local v1    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .end local v4    # "profileName":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 547
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->onProfileSettingsChanged()V

    .line 548
    iput-boolean v7, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    goto :goto_0

    .line 506
    .end local v2    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    .restart local v3    # "profileId":I
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v0    # "e":Lcom/atmos/api/DsAccessException;
    .end local v3    # "profileId":I
    :cond_5
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0037

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v2    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_1

    .line 533
    .restart local v4    # "profileName":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0036

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .restart local v1    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    goto :goto_2
.end method

.method public displayTooltip(Landroid/view/View;II)V
    .locals 2
    .param p1, "pointToView"    # Landroid/view/View;
    .param p2, "idTitle"    # I
    .param p3, "idText"    # I

    .prologue
    .line 692
    invoke-virtual {p0, p2}, Lcom/atmos/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/atmos/daxappUI/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/atmos/daxappUI/MainActivity;->displayTooltip(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 693
    return-void
.end method

.method public editProfile()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 985
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFS:Lcom/atmos/daxappUI/FragSwitches;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    if-nez v0, :cond_1

    .line 994
    sput-boolean v2, Lcom/atmos/daxappUI/MainActivity;->mEditProfile:Z

    .line 1006
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 1007
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragSwitches;

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFS:Lcom/atmos/daxappUI/FragSwitches;

    .line 1013
    invoke-static {p0}, Lcom/atmos/daxappCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->firstLevelHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1058
    :cond_1
    return-void
.end method

.method public equalizerPresetsAreAlive()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1172
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_0

    .line 1174
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v2

    .line 1176
    .local v0, "dsOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/FragEqualizerPresets;->onClientConnected()V

    .line 1180
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 1182
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3, v2}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setEnabled(Z)V

    .line 1188
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 1189
    .local v1, "profile":I
    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/MainActivity;->chooseProfile(I)V

    .line 1192
    .end local v0    # "dsOn":Z
    .end local v1    # "profile":I
    :cond_0
    return-void

    .line 1174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfiguration()Lcom/atmos/daxappCoreUI/Configuration;
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/atmos/daxappCoreUI/Configuration;->getInstance(Landroid/content/Context;)Lcom/atmos/daxappCoreUI/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    .line 370
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfiguration - NEW CONFIG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    invoke-virtual {v2}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    invoke-virtual {v2}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    return-object v0
.end method

.method public getDsClient()Lcom/atmos/api/DsGlobalEx;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    return-object v0
.end method

.method public getProfileSelected()I
    .locals 3

    .prologue
    .line 970
    iget-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 971
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 975
    .local v0, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_0
    if-eqz v0, :cond_1

    .line 976
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragProfilePresets;->getSelection()I

    move-result v1

    .line 978
    :goto_1
    return v1

    .line 973
    .end local v0    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v0    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_0

    .line 978
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public hideExploreAtomsProfile()V
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mExploreDolbyAtmosClicked:Z

    .line 914
    return-void
.end method

.method public isDolbyClientConnected()Z
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    return v0
.end method

.method public isMonoSpeaker()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mIsMonoSpeaker:Z

    return v0
.end method

.method public onAccessAvailable()V
    .locals 2

    .prologue
    .line 1241
    const-string v0, "DsUI::MainActivity"

    const-string v1, "onAccessAvailable() ------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/atmos/api/DsGlobalEx;->checkAccessRight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1250
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/atmos/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    goto :goto_0
.end method

.method public onAccessForceReleased(Ljava/lang/String;I)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 1256
    const-string v0, "DsUI::MainActivity"

    const-string v1, "onAccessForceReleased() ------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return-void
.end method

.method public onAccessRequested(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 1262
    const-string v0, "DsUI::MainActivity"

    const-string v1, "onAccessRequested() ------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 443
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 444
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 445
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1120
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1123
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 568
    .local v1, "id":I
    const v2, 0x7f0c0031

    if-ne v2, v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 570
    .local v0, "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->hideEqualizer()V

    .line 574
    .end local v0    # "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    :cond_0
    return-void
.end method

.method public onClientConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1270
    const-string v1, "DsUI::MainActivity"

    const-string v2, "onClientConnected() ------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1, p0}, Lcom/atmos/api/DsGlobalEx;->registerDsEvents(Lcom/atmos/api/IDsEvents;)V

    .line 1274
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/atmos/api/DsGlobalEx;->requestAccessRight()I

    move-result v0

    .line 1275
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 1277
    const-string v1, "DsUI::MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClientConnected() request audio focuse failed, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :goto_0
    return-void

    .line 1283
    :cond_0
    const-string v1, "DsUI::MainActivity"

    const-string v2, "onClientConnected() request audio focuse successfully!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    sput v1, Lcom/atmos/daxappUI/MainActivity;->mCurrProfileId:I

    .line 1291
    iput-boolean v4, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    .line 1292
    iput-boolean v4, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashClientBound:Z

    .line 1353
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onClientDisconnected()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1363
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 1364
    .local v0, "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->onClientDisconnected()V

    .line 1376
    :cond_0
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    if-eqz v3, :cond_1

    .line 1377
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/FragEqualizerPresets;->onClientDisconnected()V

    .line 1381
    :cond_1
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_4

    .line 1382
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 1386
    .local v1, "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    :goto_0
    if-eqz v1, :cond_2

    .line 1387
    invoke-virtual {v1}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->onClientDisconnected()V

    .line 1391
    :cond_2
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v5, :cond_5

    .line 1392
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 1396
    .local v2, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_1
    if-eqz v2, :cond_3

    .line 1397
    invoke-virtual {v2}, Lcom/atmos/daxappUI/FragProfilePresets;->onClientDisconnected()V

    .line 1401
    :cond_3
    iput-boolean v6, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    .line 1403
    invoke-virtual {p0, v6}, Lcom/atmos/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 1404
    return-void

    .line 1384
    .end local v1    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .end local v2    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :cond_4
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0036

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .restart local v1    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    goto :goto_0

    .line 1394
    :cond_5
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0037

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v2    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappCoreUI/DAXApplication;

    invoke-virtual {v2}, Lcom/atmos/daxappCoreUI/DAXApplication;->printScreenSpecs()V

    .line 171
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/atmos/daxappCoreUI/Constants;->STATUS_BAR_HEIGHT:I

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->changeScale()V

    .line 175
    const-string v2, "DsUI::MainActivity"

    const-string v3, "--------------->1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {p0}, Lcom/atmos/daxappUI/Assets;->init(Landroid/content/Context;)V

    .line 179
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->requestWindowFeature(I)Z

    .line 180
    const-string v2, "DsUI::MainActivity"

    const-string v3, "--------------->2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/atmos/daxappUI/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 188
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mIsScreenOn:Z

    .line 190
    new-instance v2, Lcom/atmos/daxappUI/MainActivity$2;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/MainActivity$2;-><init>(Lcom/atmos/daxappUI/MainActivity;)V

    iput-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    .line 201
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->displaySplashScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "DsUI::MainActivity"

    const-string v3, "--------------->3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2, p0, p0}, Lcom/atmos/api/DsGlobalEx;->registerClient(Landroid/content/Context;Lcom/atmos/api/IDsAccessEvents;)Z

    .line 210
    :cond_1
    const-string v2, "DsUI::MainActivity"

    const-string v3, "--------------->4"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 409
    const/16 v0, 0x3e9

    const v1, 0x7f060033

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 410
    const/16 v0, 0x3ea

    const v1, 0x7f060026

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 412
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/atmos/daxappUI/MainActivity;->mOnDestroyTimer:J

    .line 394
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->hideSplashScreen()V

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->unbindFromDsApi()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->configuration:Lcom/atmos/daxappCoreUI/Configuration;

    .line 400
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/atmos/daxappUI/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 401
    return-void
.end method

.method public onDsApiError()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->unbindFromDsApi()V

    .line 698
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->finish()V

    .line 699
    return-void
.end method

.method public onDsClientUseChanged(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 461
    if-eqz p1, :cond_4

    .line 462
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0c0001

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 464
    .local v1, "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    .line 476
    :cond_0
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    if-eqz v3, :cond_1

    .line 477
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 481
    :cond_1
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v3, :cond_2

    .line 482
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 483
    .local v0, "dsOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/atmos/daxappUI/MainActivity;->internalOnDsOn(Z)V

    .line 491
    .end local v0    # "dsOn":Z
    .end local v1    # "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    :cond_2
    :goto_1
    return-void

    .restart local v1    # "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    :cond_3
    move v0, v2

    .line 482
    goto :goto_0

    .line 487
    .end local v1    # "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    :cond_4
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_2

    .line 488
    invoke-direct {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->registerVisualizer(Z)V

    goto :goto_1
.end method

.method public onDsOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 705
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/MainActivity;->internalOnDsOn(Z)V

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 707
    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 1
    .param p1, "isSuspended"    # Z

    .prologue
    .line 728
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/atmos/daxappUI/MainActivity;->onDsOn(Z)V

    .line 729
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEqualizerEditStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 922
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    if-eqz v2, :cond_0

    .line 923
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v2}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->setUserProfilePopulated()V

    .line 929
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v2, v4, :cond_3

    .line 930
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 934
    .local v1, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_0
    if-eqz v1, :cond_1

    .line 935
    invoke-virtual {v1}, Lcom/atmos/daxappUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    .line 939
    :cond_1
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v2, v4, :cond_4

    .line 940
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 944
    .local v0, "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v0, :cond_2

    .line 945
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 947
    :cond_2
    return-void

    .line 932
    .end local v0    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .end local v1    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :cond_3
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v1    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_0

    .line 942
    :cond_4
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0036

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .restart local v0    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 417
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_1

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/atmos/daxappUI/DolbyHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/atmos/daxappUI/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 423
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 420
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_0

    .line 421
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.atmos.EXPLORE_DOLBY_ATMOS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 379
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mOnPauseFlag:Z

    .line 382
    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 383
    iput-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mIsActivityRunning:Z

    .line 384
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v0}, Lcom/atmos/api/DsGlobalEx;->abandonAccessRight()I

    .line 387
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 388
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 736
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_2

    .line 737
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 741
    .local v1, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_0
    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v1, p1, p2}, Lcom/atmos/daxappUI/FragProfilePresets;->onProfileNameChanged(ILjava/lang/String;)V

    .line 746
    :cond_0
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_3

    .line 747
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 751
    .local v0, "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {v0, p1, p2}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->onProfileNameChanged(ILjava/lang/String;)V

    .line 754
    :cond_1
    return-void

    .line 739
    .end local v0    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .end local v1    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :cond_2
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v1    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_0

    .line 749
    :cond_3
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0036

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .restart local v0    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    goto :goto_1
.end method

.method public onProfileNameEditEnded()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method

.method public onProfileNameEditStarted()V
    .locals 3

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragProfilePresets;

    .line 955
    .local v0, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragProfilePresets;->onProfileNameEditStarted()V

    .line 958
    :cond_0
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    const/4 v0, 0x1

    .line 711
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v1}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 713
    .local v0, "dsOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/atmos/daxappUI/MainActivity;->internalOnDsOn(Z)V

    .line 715
    .end local v0    # "dsOn":Z
    :cond_0
    return-void

    .line 712
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProfileSettingsChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 760
    const-string v5, "DsUI::MainActivity"

    const-string v6, "onProfileSettingsChanged()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_5

    .line 764
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 769
    .local v3, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_0
    if-eqz v3, :cond_0

    .line 770
    invoke-virtual {v3}, Lcom/atmos/daxappUI/FragProfilePresets;->scheduleNotifyDataSetChanged()V

    .line 774
    :cond_0
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_6

    .line 775
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 780
    .local v2, "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    :goto_1
    if-eqz v2, :cond_1

    .line 781
    invoke-virtual {v2}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 786
    :cond_1
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_7

    .line 787
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity;->mFS:Lcom/atmos/daxappUI/FragSwitches;

    .line 792
    .local v4, "swv":Lcom/atmos/daxappUI/FragSwitches;
    :goto_2
    if-eqz v4, :cond_2

    .line 793
    invoke-virtual {v4}, Lcom/atmos/daxappUI/FragSwitches;->onProfileSettingsChanged()V

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 798
    .local v0, "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v0, :cond_3

    .line 800
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 803
    :cond_3
    sget-object v5, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v6, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v5, p0, v6}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getIeqPreset(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)I

    move-result v1

    .line 804
    .local v1, "iEqPreset":I
    const/4 v5, -0x1

    if-ne v5, v1, :cond_8

    .line 824
    :cond_4
    :goto_3
    return-void

    .line 766
    .end local v0    # "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    .end local v1    # "iEqPreset":I
    .end local v2    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .end local v3    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    .end local v4    # "swv":Lcom/atmos/daxappUI/FragSwitches;
    :cond_5
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0037

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v3    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_0

    .line 777
    :cond_6
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0036

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .restart local v2    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    goto :goto_1

    .line 789
    :cond_7
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0038

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/atmos/daxappUI/FragSwitches;

    .restart local v4    # "swv":Lcom/atmos/daxappUI/FragSwitches;
    goto :goto_2

    .line 808
    .restart local v0    # "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    .restart local v1    # "iEqPreset":I
    :cond_8
    if-eqz v0, :cond_9

    .line 809
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    .line 820
    :cond_9
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    if-eqz v5, :cond_4

    .line 821
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v5}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 822
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Lcom/atmos/daxappUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    goto :goto_3
.end method

.method public onProfileSettingsChanged(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 720
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileSettingsChanged(), profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 722
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->onProfileSettingsChanged()V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    .line 724
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 453
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 343
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mOnPauseFlag:Z

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mOnPauseFlag:Z

    .line 345
    iput-boolean v4, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashClientBound:Z

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    iput-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDialog:Landroid/app/Dialog;

    .line 353
    iput-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mSplashScreenDelay:Ljava/lang/Runnable;

    .line 355
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->displaySplashScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 361
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/atmos/daxappUI/MainActivity;->updateProfileNames()V

    .line 363
    iput-boolean v4, p0, Lcom/atmos/daxappUI/MainActivity;->mIsActivityRunning:Z

    .line 364
    invoke-virtual {p0, v4}, Lcom/atmos/daxappUI/MainActivity;->onDsClientUseChanged(Z)V

    .line 365
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/atmos/daxappUI/MainActivity;->mShowMainUi:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 449
    return-void
.end method

.method public powerOnOff(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v7, 0x1

    .line 578
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0032

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/atmos/daxappUI/FragPower;

    .line 579
    .local v3, "pwv":Lcom/atmos/daxappUI/FragPower;
    if-eqz v3, :cond_0

    .line 580
    invoke-virtual {v3, p1}, Lcom/atmos/daxappUI/FragPower;->setEnabled(Z)V

    .line 583
    :cond_0
    iget-object v6, p0, Lcom/atmos/daxappUI/MainActivity;->mDSLogo:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const v5, 0x7f020011

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_7

    .line 588
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    .line 595
    .local v2, "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    :goto_1
    if-eqz v2, :cond_1

    .line 596
    invoke-virtual {v2, p1}, Lcom/atmos/daxappUI/FragProfilePresets;->setEnabled(Z)V

    .line 600
    :cond_1
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_8

    .line 601
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .line 605
    .local v1, "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    :goto_2
    if-eqz v1, :cond_2

    .line 606
    invoke-virtual {v1, p1}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->setEnabled(Z)V

    .line 610
    :cond_2
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_9

    .line 611
    iget-object v4, p0, Lcom/atmos/daxappUI/MainActivity;->mFS:Lcom/atmos/daxappUI/FragSwitches;

    .line 615
    .local v4, "swv":Lcom/atmos/daxappUI/FragSwitches;
    :goto_3
    if-eqz v4, :cond_3

    .line 616
    invoke-virtual {v4, p1}, Lcom/atmos/daxappUI/FragSwitches;->setEnabled(Z)V

    .line 619
    :cond_3
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mIsScreenOn:Z

    if-eqz v5, :cond_4

    .line 620
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 621
    .local v0, "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v0, :cond_4

    .line 622
    invoke-virtual {v0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->setEnabled(Z)V

    .line 639
    .end local v0    # "gv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    :cond_4
    iget-boolean v5, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    if-eqz v5, :cond_5

    .line 640
    iget-object v5, p0, Lcom/atmos/daxappUI/MainActivity;->mFEP:Lcom/atmos/daxappUI/FragEqualizerPresets;

    invoke-virtual {v5, p1}, Lcom/atmos/daxappUI/FragEqualizerPresets;->setEnabled(Z)V

    .line 642
    :cond_5
    return-void

    .line 583
    .end local v1    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    .end local v2    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    .end local v4    # "swv":Lcom/atmos/daxappUI/FragSwitches;
    :cond_6
    const v5, 0x7f020013

    goto :goto_0

    .line 593
    :cond_7
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0037

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/atmos/daxappUI/FragProfilePresets;

    .restart local v2    # "pp":Lcom/atmos/daxappUI/FragProfilePresets;
    goto :goto_1

    .line 603
    :cond_8
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0036

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragProfilePresetEditor;

    .restart local v1    # "pe":Lcom/atmos/daxappUI/FragProfilePresetEditor;
    goto :goto_2

    .line 613
    :cond_9
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0c0038

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/atmos/daxappUI/FragSwitches;

    .restart local v4    # "swv":Lcom/atmos/daxappUI/FragSwitches;
    goto :goto_3
.end method

.method public profileEditorIsAlive()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1128
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_0

    .line 1130
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v2

    .line 1132
    .local v0, "dsOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1134
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    invoke-virtual {v3}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->onClientConnected()V

    .line 1136
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    invoke-virtual {v3, v2}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->setEnabled(Z)V

    .line 1139
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 1141
    .local v1, "profile":I
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPPE:Lcom/atmos/daxappUI/FragProfilePresetEditor;

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    invoke-virtual {v3, v1}, Lcom/atmos/daxappUI/FragProfilePresets;->getItemName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/atmos/daxappUI/FragProfilePresetEditor;->onProfileNameChanged(ILjava/lang/String;)V

    .line 1144
    .end local v0    # "dsOn":Z
    .end local v1    # "profile":I
    :cond_0
    return-void

    .line 1130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public profilePresetsAreAlive()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1196
    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v2, :cond_0

    .line 1198
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1199
    .local v0, "dsOn":Z
    :goto_0
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    invoke-virtual {v2, v0}, Lcom/atmos/daxappUI/FragProfilePresets;->setEnabled(Z)V

    .line 1201
    if-eqz v0, :cond_0

    .line 1205
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v2}, Lcom/atmos/api/DsGlobalEx;->getProfile()I

    move-result v1

    .line 1210
    .local v1, "profile":I
    iget-object v2, p0, Lcom/atmos/daxappUI/MainActivity;->mFPP:Lcom/atmos/daxappUI/FragProfilePresets;

    invoke-virtual {v2, v1}, Lcom/atmos/daxappUI/FragProfilePresets;->setSelection(I)V

    .line 1211
    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/MainActivity;->chooseProfile(I)V

    .line 1227
    .end local v0    # "dsOn":Z
    .end local v1    # "profile":I
    :cond_0
    return-void

    .line 1198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public profileReset(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 857
    .local v0, "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0, p1}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->resetUserGains(I)V

    .line 861
    :cond_0
    invoke-virtual {p0, p1}, Lcom/atmos/daxappUI/MainActivity;->chooseProfile(I)V

    .line 862
    return-void
.end method

.method public resetEqUserGains()V
    .locals 3

    .prologue
    .line 1231
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/atmos/daxappUI/FragGraphicVisualizer;

    .line 1232
    .local v0, "fgv":Lcom/atmos/daxappUI/FragGraphicVisualizer;
    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {v0}, Lcom/atmos/daxappUI/FragGraphicVisualizer;->resetUserGains()V

    .line 1235
    :cond_0
    return-void
.end method

.method public setUserProfilePopulated()V
    .locals 0

    .prologue
    .line 688
    return-void
.end method

.method public switchesAreAlive()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1148
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDolbyClientConnected:Z

    if-eqz v3, :cond_0

    .line 1150
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v3}, Lcom/atmos/api/DsGlobalEx;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v0, v2

    .line 1152
    .local v0, "dsOn":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1153
    iget-object v3, p0, Lcom/atmos/daxappUI/MainActivity;->mFS:Lcom/atmos/daxappUI/FragSwitches;

    invoke-virtual {v3, v2}, Lcom/atmos/daxappUI/FragSwitches;->setEnabled(Z)V

    .line 1157
    iget-boolean v3, p0, Lcom/atmos/daxappUI/MainActivity;->mMobileLayout:Z

    if-ne v3, v2, :cond_2

    .line 1158
    iget-object v1, p0, Lcom/atmos/daxappUI/MainActivity;->mFS:Lcom/atmos/daxappUI/FragSwitches;

    .line 1162
    .local v1, "swv":Lcom/atmos/daxappUI/FragSwitches;
    :goto_1
    if-eqz v1, :cond_0

    .line 1163
    invoke-virtual {v1}, Lcom/atmos/daxappUI/FragSwitches;->onProfileSettingsChanged()V

    .line 1167
    .end local v0    # "dsOn":Z
    .end local v1    # "swv":Lcom/atmos/daxappUI/FragSwitches;
    :cond_0
    return-void

    .line 1150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1160
    .restart local v0    # "dsOn":Z
    :cond_2
    invoke-virtual {p0}, Lcom/atmos/daxappUI/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/atmos/daxappUI/FragSwitches;

    .restart local v1    # "swv":Lcom/atmos/daxappUI/FragSwitches;
    goto :goto_1
.end method

.method public useDsApiOnUiEvent()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/atmos/daxappUI/MainActivity;->mUseDsApiOnUiEvent:Z

    return v0
.end method
