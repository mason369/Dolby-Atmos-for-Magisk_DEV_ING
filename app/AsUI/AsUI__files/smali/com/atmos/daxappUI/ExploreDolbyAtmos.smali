.class public Lcom/atmos/daxappUI/ExploreDolbyAtmos;
.super Landroid/app/Activity;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAnimateDuring:I

.field private mBtnControlInitY:I

.field private mDolbyClientConnected:Z

.field private mDownimgHeight:I

.field private mDownimgOldTouhDownY:I

.field private mDownimgTouchDownY:I

.field private mExperienceDolbyMaxDistanceRatio:D

.field private mExperienceDolbyY:I

.field private mExploreAtmosLogoY:I

.field private mExploreAtmosMaxDistanceRatio:D

.field private mHavedOpened:Z

.field private mImgInitHeight:I

.field private mMobileLayout:Z

.field private mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

.field private mRollbackDisance:I

.field private mScreenHeight:I

.field private mUpImgAtTop:Z

.field private mUpimgHeight:I

.field private mUpimgOldTouhDownY:I

.field private mUpimgTouchDownY:I

.field private screenTopD:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const-string v0, "ExploreDolbyAtmos"

    iput-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDolbyClientConnected:Z

    .line 85
    iput-boolean v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mMobileLayout:Z

    .line 89
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgTouchDownY:I

    .line 91
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    .line 93
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgOldTouhDownY:I

    .line 95
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgTouchDownY:I

    .line 97
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    .line 99
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgOldTouhDownY:I

    .line 101
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    .line 103
    const/16 v0, 0x12c

    iput v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    .line 105
    const/16 v0, 0x64

    iput v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    .line 107
    iput-boolean v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    .line 109
    iput v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    .line 111
    const-wide v0, 0x3fe199999999999aL    # 0.55

    iput-wide v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    .line 113
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    .line 115
    iput-boolean v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mHavedOpened:Z

    .line 117
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mImgInitHeight:I

    .line 119
    const/16 v0, 0xf0

    iput v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    .line 121
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    .line 122
    const/16 v0, 0x80

    iput v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    return-void
.end method

.method static synthetic access$002(Lcom/atmos/daxappUI/ExploreDolbyAtmos;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mHavedOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlTxtDownRemark(FII)V

    return-void
.end method

.method static synthetic access$102(Lcom/atmos/daxappUI/ExploreDolbyAtmos;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlLearnMore(FII)V

    return-void
.end method

.method static synthetic access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlExploreAtmosAccess(FII)V

    return-void
.end method

.method static synthetic access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D
    .locals 2
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D
    .locals 2
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgTouchDownY:I

    return v0
.end method

.method static synthetic access$1702(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgTouchDownY:I

    return p1
.end method

.method static synthetic access$1800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgOldTouhDownY:I

    return v0
.end method

.method static synthetic access$1802(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgOldTouhDownY:I

    return p1
.end method

.method static synthetic access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    return v0
.end method

.method static synthetic access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    return v0
.end method

.method static synthetic access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    return v0
.end method

.method static synthetic access$202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    return p1
.end method

.method static synthetic access$2100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    return v0
.end method

.method static synthetic access$2200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgTouchDownY:I

    return v0
.end method

.method static synthetic access$2202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgTouchDownY:I

    return p1
.end method

.method static synthetic access$2300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgOldTouhDownY:I

    return v0
.end method

.method static synthetic access$2302(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgOldTouhDownY:I

    return p1
.end method

.method static synthetic access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    .prologue
    .line 63
    iget v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlBtnControlImg(FII)V

    return-void
.end method

.method static synthetic access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlUpimgAnimate(FII)V

    return-void
.end method

.method static synthetic access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlDownimgAnimate(FII)V

    return-void
.end method

.method static synthetic access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlExploreAtmosLogo(FII)V

    return-void
.end method

.method static synthetic access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlExperienceDolby(FII)V

    return-void
.end method

.method static synthetic access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/ExploreDolbyAtmos;
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlTxtUpRemark(FII)V

    return-void
.end method

.method private controlBtnControlImg(FII)V
    .locals 12
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/high16 v8, 0x40800000    # 4.0f

    .line 1278
    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v7, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 1279
    .local v4, "scrollMaxDistance":I
    const v5, 0x7f0c0005

    invoke-virtual {p0, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1281
    .local v2, "btncontrolImg":Landroid/widget/ImageView;
    if-ne p3, v10, :cond_1

    .line 1282
    if-nez p2, :cond_0

    .line 1284
    new-array v5, v9, [I

    int-to-float v6, v4

    mul-float/2addr v6, p1

    iget v7, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v11

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v6, v4

    aput v6, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1286
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/atmos/daxappUI/ExploreDolbyAtmos$14;

    invoke-direct {v5, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$14;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1297
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1298
    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1299
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1377
    :goto_0
    return-void

    .line 1304
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v5, v9, [I

    int-to-float v6, v4

    mul-float/2addr v6, p1

    iget v7, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v11

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    aput v6, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1306
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/atmos/daxappUI/ExploreDolbyAtmos$15;

    invoke-direct {v5, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$15;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1317
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1318
    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1320
    const-string v5, "rotationX"

    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1321
    .local v3, "rotateAnimator":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1322
    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1324
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1325
    .local v1, "animatorset":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1326
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1331
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    .end local v1    # "animatorset":Landroid/animation/AnimatorSet;
    .end local v3    # "rotateAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1333
    new-array v5, v9, [I

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    int-to-float v6, v6

    int-to-float v7, v4

    mul-float/2addr v7, p1

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v11

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    aput v6, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1335
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/atmos/daxappUI/ExploreDolbyAtmos$16;

    invoke-direct {v5, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$16;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1346
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1347
    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1348
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1352
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v5, v9, [I

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    int-to-float v7, v4

    mul-float/2addr v7, p1

    float-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v5, v11

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    sub-int/2addr v6, v4

    aput v6, v5, v10

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1354
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/atmos/daxappUI/ExploreDolbyAtmos$17;

    invoke-direct {v5, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$17;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1363
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1364
    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1365
    const-string v5, "rotationX"

    new-array v6, v9, [F

    fill-array-data v6, :array_1

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 1366
    .restart local v3    # "rotateAnimator":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1367
    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1369
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1370
    .restart local v1    # "animatorset":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1371
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1320
    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data

    .line 1365
    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method private controlDownimgAnimate(FII)V
    .locals 10
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v7, 0x1

    .line 1184
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1185
    .local v1, "downimg":Landroid/widget/ImageView;
    if-ne p3, v7, :cond_1

    .line 1186
    if-nez p2, :cond_0

    .line 1188
    new-array v2, v3, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v9

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1190
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$10;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$10;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1201
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1202
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1203
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1271
    :goto_0
    return-void

    .line 1208
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v3, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v9

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1210
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$11;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$11;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1222
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1223
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1224
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1228
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1230
    new-array v2, v3, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v9

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1232
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$12;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$12;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1243
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1244
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1245
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1249
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v2, v3, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    sub-int/2addr v3, v4

    aput v3, v2, v9

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v3, v4

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1251
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$13;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$13;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1262
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1263
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1264
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method

.method private controlExperienceDolby(FII)V
    .locals 12
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    .line 1482
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 1483
    .local v2, "scrollMaxDistance":I
    const v3, 0x7f0c000d

    invoke-virtual {p0, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1485
    .local v1, "experienceDolby":Landroid/widget/TextView;
    if-ne p3, v8, :cond_1

    .line 1486
    if-nez p2, :cond_0

    .line 1488
    new-array v3, v11, [I

    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v4, v2

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1490
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$22;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$22;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1499
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1500
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1501
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1566
    :goto_0
    return-void

    .line 1506
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v3, v11, [I

    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1508
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$23;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$23;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1519
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1520
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1521
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1526
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1528
    new-array v3, v11, [I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    int-to-float v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1530
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$24;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$24;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1541
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1542
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1543
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1547
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v3, v11, [I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    int-to-float v5, v2

    mul-float/2addr v5, p1

    float-to-int v5, v5

    sub-int/2addr v4, v5

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    sub-int/2addr v4, v2

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1549
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$25;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$25;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1558
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1559
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1560
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method

.method private controlExploreAtmosAccess(FII)V
    .locals 8
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1812
    const v2, 0x7f0c000f

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1813
    .local v1, "exploreatmosaccess":Landroid/widget/LinearLayout;
    if-ne p3, v4, :cond_1

    .line 1814
    if-nez p2, :cond_0

    .line 1815
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1816
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$38;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$38;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1824
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1825
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1826
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1884
    :goto_0
    return-void

    .line 1830
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1831
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$39;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$39;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1841
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1842
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1843
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1848
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1850
    new-array v2, v3, [F

    aput p1, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1851
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$40;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$40;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1861
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1862
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1863
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1867
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v2, v3, [F

    aput p1, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1868
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$41;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$41;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1876
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1877
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1878
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlExploreAtmosLogo(FII)V
    .locals 12
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const/4 v8, 0x1

    .line 1385
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-double v4, v3

    iget-wide v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 1386
    .local v2, "scrollMaxDistance":I
    const v3, 0x7f0c0006

    invoke-virtual {p0, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1388
    .local v1, "exploreatmoslogo":Landroid/widget/LinearLayout;
    if-ne p3, v8, :cond_1

    .line 1391
    if-nez p2, :cond_0

    .line 1393
    new-array v3, v11, [I

    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v4, v2

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1395
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$18;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$18;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1404
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1405
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1406
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1474
    :goto_0
    return-void

    .line 1412
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v3, v11, [I

    int-to-float v4, v2

    mul-float/2addr v4, p1

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1414
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$19;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$19;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1425
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1426
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1427
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1434
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1436
    new-array v3, v11, [I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    int-to-float v4, v4

    int-to-float v5, v2

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1438
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$20;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$20;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1449
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1450
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1451
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1455
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v3, v11, [I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    int-to-float v5, v2

    mul-float/2addr v5, p1

    float-to-int v5, v5

    sub-int/2addr v4, v5

    aput v4, v3, v10

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    sub-int/2addr v4, v2

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1457
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/atmos/daxappUI/ExploreDolbyAtmos$21;

    invoke-direct {v3, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$21;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1466
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1467
    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1468
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method

.method private controlLearnMore(FII)V
    .locals 8
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1733
    const v2, 0x7f0c000a

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1734
    .local v1, "exploreatmoslearnmore":Landroid/widget/LinearLayout;
    if-ne p3, v4, :cond_1

    .line 1735
    if-nez p2, :cond_0

    .line 1736
    new-array v2, v3, [F

    aput p1, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1737
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$34;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$34;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1745
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1746
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1747
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1805
    :goto_0
    return-void

    .line 1751
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v3, [F

    aput p1, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1752
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$35;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$35;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1762
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1763
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1764
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1769
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1771
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1772
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$36;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$36;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1782
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1783
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1784
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1788
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1789
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$37;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$37;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1797
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1798
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1799
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlTxtDownRemark(FII)V
    .locals 8
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1653
    const v2, 0x7f0c000e

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1654
    .local v1, "txtdownremark":Landroid/widget/TextView;
    if-ne p3, v4, :cond_1

    .line 1655
    if-nez p2, :cond_0

    .line 1656
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1657
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$30;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$30;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1665
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1666
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1667
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1725
    :goto_0
    return-void

    .line 1671
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1672
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$31;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$31;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1682
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1683
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1684
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1689
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1691
    new-array v2, v3, [F

    aput p1, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1692
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$32;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$32;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1702
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1703
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1704
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1708
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v2, v3, [F

    aput p1, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1709
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$33;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$33;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1717
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1718
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1719
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlTxtUpRemark(FII)V
    .locals 8
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1573
    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1575
    .local v1, "txtupremark":Landroid/widget/TextView;
    if-ne p3, v4, :cond_1

    .line 1576
    if-nez p2, :cond_0

    .line 1577
    new-array v2, v3, [F

    aput p1, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1578
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$26;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$26;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1586
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1587
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1588
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1646
    :goto_0
    return-void

    .line 1592
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v3, [F

    aput p1, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1593
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$27;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$27;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1603
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1604
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1605
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1610
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1612
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    aput v5, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1613
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$28;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$28;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1623
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1624
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1625
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1629
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v2, v3, [F

    sub-float v3, v5, p1

    aput v3, v2, v7

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1630
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$29;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$29;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1638
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1639
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1640
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private controlUpimgAnimate(FII)V
    .locals 10
    .param p1, "percent"    # F
    .param p2, "target"    # I
    .param p3, "orientation"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1091
    iget-object v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string v3, "controlUpimgAnimate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "controlUpimgAnimate percent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " orient:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1093
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1095
    .local v1, "upimg":Landroid/widget/ImageView;
    if-ne p3, v7, :cond_1

    .line 1096
    if-nez p2, :cond_0

    .line 1098
    new-array v2, v5, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    sub-float v4, v9, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1100
    .local v0, "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$6;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$6;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1111
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1112
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1113
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1115
    iput-boolean v7, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    .line 1177
    :goto_0
    return-void

    .line 1118
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    new-array v2, v5, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    sub-float v4, v9, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    aput v6, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1119
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$7;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$7;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1130
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1131
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1132
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1133
    iput-boolean v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    goto :goto_0

    .line 1136
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_1
    if-nez p2, :cond_2

    .line 1138
    new-array v2, v5, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    aput v3, v2, v6

    aput v6, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1139
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$8;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$8;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1150
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1151
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1153
    iput-boolean v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    goto :goto_0

    .line 1156
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_2
    new-array v2, v5, [I

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    aput v3, v2, v6

    iget v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    iget v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    iget v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1158
    .restart local v0    # "animation":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/atmos/daxappUI/ExploreDolbyAtmos$9;

    invoke-direct {v2, p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$9;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1169
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1170
    iget v2, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mAnimateDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1171
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1174
    iput-boolean v7, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public changeScale()V
    .locals 10

    .prologue
    const/16 v9, 0x5a

    const/4 v5, 0x2

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v6, 0x78

    .line 130
    invoke-virtual {p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 132
    .local v2, "sys":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 135
    .local v1, "scaleNumber":F
    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x168

    if-lt v3, v4, :cond_6

    .line 137
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_3

    .line 139
    const/16 v3, 0xe6

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mImgInitHeight:I

    .line 141
    const/16 v3, 0x37

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    .line 143
    const/16 v3, 0xf5

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    .line 144
    const-wide v4, 0x3fcd70a3d70a3d71L    # 0.23

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    .line 146
    const-wide v4, 0x3feb333333333333L    # 0.85

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    .line 147
    cmpl-float v3, v1, v7

    if-nez v3, :cond_1

    .line 148
    iput v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    .line 154
    :goto_0
    iput v9, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    .line 204
    :cond_0
    :goto_1
    return-void

    .line 149
    :cond_1
    cmpl-float v3, v1, v8

    if-nez v3, :cond_2

    .line 150
    const/16 v3, 0xb4

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    goto :goto_0

    .line 152
    :cond_2
    const/16 v3, 0x3c

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    goto :goto_0

    .line 157
    :cond_3
    const/16 v3, 0x1a4

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mImgInitHeight:I

    .line 159
    const/16 v3, 0xbe

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    .line 161
    const/16 v3, 0x1b3

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    .line 162
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    .line 164
    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    .line 165
    cmpl-float v3, v1, v7

    if-nez v3, :cond_4

    .line 166
    const/16 v3, 0x91

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    .line 172
    :goto_2
    iput v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    goto :goto_1

    .line 167
    :cond_4
    cmpl-float v3, v1, v8

    if-nez v3, :cond_5

    .line 168
    const/16 v3, 0xda

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    goto :goto_2

    .line 170
    :cond_5
    const/16 v3, 0x4a

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    goto :goto_2

    .line 175
    :cond_6
    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x140

    if-lt v3, v4, :cond_0

    .line 177
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_7

    .line 179
    const/16 v3, 0xc8

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mImgInitHeight:I

    .line 181
    const/16 v3, 0x19

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    .line 183
    const/16 v3, 0xd2

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    .line 184
    const-wide v4, 0x3fc999999999999aL    # 0.2

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    .line 186
    const-wide v4, 0x3fe7ae147ae147aeL    # 0.74

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    .line 187
    const/16 v3, 0x9b

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    .line 188
    iput v9, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    goto :goto_1

    .line 191
    :cond_7
    const/16 v3, 0x17c

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mImgInitHeight:I

    .line 193
    const/16 v3, 0x96

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    .line 195
    const/16 v3, 0x190

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    .line 196
    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosMaxDistanceRatio:D

    .line 198
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyMaxDistanceRatio:D

    .line 199
    const/16 v3, 0x93

    iput v3, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    .line 200
    iput v6, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mRollbackDisance:I

    goto/16 :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 2010
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 32
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "onCreate"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->changeScale()V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getActionBar()Landroid/app/ActionBar;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mActionBar:Landroid/app/ActionBar;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/ActionBar;->show()V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 218
    const v27, 0x7f030002

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->setContentView(I)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "fonts/DolbyGustan-Book.otf"

    invoke-static/range {v27 .. v28}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    .line 220
    .local v10, "dolbyGustanBook":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "fonts/DolbyGustan-Light.otf"

    invoke-static/range {v27 .. v28}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 221
    .local v11, "dolbyGustanLight":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v27

    const-string v28, "fonts/DolbyGustan-Medium.otf"

    invoke-static/range {v27 .. v28}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 224
    .local v12, "dolbyGustanMedium":Landroid/graphics/Typeface;
    const v27, 0x7f0c0007

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 225
    .local v19, "txtUpName":Landroid/widget/TextView;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    const v27, 0x7f0c0009

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 228
    .local v24, "txtupremark":Landroid/widget/TextView;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    const v27, 0x7f0c000b

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 231
    .local v23, "txtuplearnmore":Landroid/widget/TextView;
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    const v27, 0x7f0c000d

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 234
    .local v21, "txtdownname":Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 236
    const v27, 0x7f0c000e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 237
    .local v22, "txtdownremark":Landroid/widget/TextView;
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 240
    const v27, 0x7f0c0010

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 241
    .local v20, "txtdownaccess":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 243
    const v27, 0x7f0c000a

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 245
    .local v15, "exploreatmoslearnmore":Landroid/widget/LinearLayout;
    const v27, 0x7f0c000f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 246
    .local v14, "exploreatmosaccess":Landroid/widget/LinearLayout;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 248
    const v27, 0x7f0c0003

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 249
    .local v25, "upimg":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f020001

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 251
    .local v26, "upimgBm":Landroid/graphics/Bitmap;
    const v27, 0x7f0c0004

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 261
    .local v13, "downimg":Landroid/widget/ImageView;
    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    .line 262
    .local v16, "metric":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 263
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    .line 264
    .local v18, "scaleNumber":F
    const/16 v27, 0x0

    cmpl-float v27, v18, v27

    if-nez v27, :cond_1

    .line 265
    const/high16 v18, 0x3f800000    # 1.0f

    .line 271
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mImgInitHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mImgInitHeight:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mDownimgHeight:I

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExploreAtmosLogoY:I

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mExperienceDolbyY:I

    .line 296
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 297
    .local v17, "outRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 298
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->screenTopD:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mScreenHeight:I

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02000b

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 301
    .local v4, "btnControlBm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpimgHeight:I

    move/from16 v27, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    .line 302
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 303
    .local v5, "btnControlLP":Landroid/widget/FrameLayout$LayoutParams;
    const v27, 0x7f0c0005

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 304
    .local v7, "btncontrolImg":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 305
    .local v6, "btnControlOldLP":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mBtnControlInitY:I

    move/from16 v30, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    add-int v30, v30, v31

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 309
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 310
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    const v27, 0x7f0c000c

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 314
    .local v9, "btnupgotodolbyatmos":Landroid/widget/ImageView;
    new-instance v27, Lcom/atmos/daxappUI/ExploreDolbyAtmos$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$1;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    const v27, 0x7f0c0011

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 329
    .local v8, "btndowngotoaccess":Landroid/widget/ImageView;
    new-instance v27, Lcom/atmos/daxappUI/ExploreDolbyAtmos$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$2;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    new-instance v27, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$3;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    new-instance v27, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 728
    new-instance v27, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;-><init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1072
    return-void

    .line 266
    .end local v4    # "btnControlBm":Landroid/graphics/Bitmap;
    .end local v5    # "btnControlLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "btnControlOldLP":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "btncontrolImg":Landroid/widget/ImageView;
    .end local v8    # "btndowngotoaccess":Landroid/widget/ImageView;
    .end local v9    # "btnupgotodolbyatmos":Landroid/widget/ImageView;
    .end local v17    # "outRect":Landroid/graphics/Rect;
    :cond_1
    const v27, 0x3fa66666    # 1.3f

    cmpl-float v27, v18, v27

    if-ltz v27, :cond_2

    const/high16 v27, 0x3fc00000    # 1.5f

    cmpg-float v27, v18, v27

    if-gtz v27, :cond_2

    .line 267
    const/high16 v18, 0x3fc00000    # 1.5f

    goto/16 :goto_0

    .line 268
    :cond_2
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v18, v27

    if-ltz v27, :cond_0

    const v27, 0x3fa66666    # 1.3f

    cmpg-float v27, v18, v27

    if-gtz v27, :cond_0

    .line 269
    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1997
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 1076
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1082
    :goto_0
    return v1

    .line 1078
    :pswitch_0
    invoke-virtual {p0}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->finish()V

    goto :goto_0

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mProfilesAdapter:Lcom/atmos/daxappUI/ProfilesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 1939
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1940
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 2004
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1893
    iget-object v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1895
    const v5, 0x7f0c000f

    invoke-virtual {p0, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1896
    .local v1, "exploreatmosaccess":Landroid/widget/LinearLayout;
    const v5, 0x7f0c000a

    invoke-virtual {p0, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1897
    .local v2, "exploreatmoslearnmore":Landroid/widget/LinearLayout;
    const v5, 0x7f0c0009

    invoke-virtual {p0, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1898
    .local v4, "txtupremark":Landroid/widget/TextView;
    const v5, 0x7f0c000e

    invoke-virtual {p0, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1899
    .local v3, "txtdownremark":Landroid/widget/TextView;
    const v5, 0x7f0c0005

    invoke-virtual {p0, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1900
    .local v0, "btncontrolImg":Landroid/widget/ImageView;
    iget-boolean v5, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mUpImgAtTop:Z

    if-ne v5, v9, :cond_4

    .line 1902
    if-eqz v4, :cond_0

    .line 1903
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1905
    :cond_0
    if-eqz v2, :cond_1

    .line 1906
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1908
    :cond_1
    if-eqz v3, :cond_2

    .line 1909
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1911
    :cond_2
    if-eqz v1, :cond_3

    .line 1912
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1914
    :cond_3
    if-eqz v0, :cond_4

    .line 1915
    const/4 v5, 0x0

    invoke-direct {p0, v7, v9, v5}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlBtnControlImg(FII)V

    .line 1919
    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1962
    iget-object v1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string v2, "onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1964
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1965
    .local v0, "upimg":Landroid/widget/ImageView;
    const-string v1, "UPIMGTOP"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1966
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->tag:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1926
    iget-boolean v0, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1929
    :cond_0
    return-void
.end method
