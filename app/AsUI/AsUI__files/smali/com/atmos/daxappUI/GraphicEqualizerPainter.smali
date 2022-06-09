.class public Lcom/atmos/daxappUI/GraphicEqualizerPainter;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;
    }
.end annotation


# static fields
.field private static GAIN_SMOOTHER:[F

.field private static GAIN_SMOOTHER_INV:[[F

.field private static final GAIN_SMOOTHER_INV_MOBILE:[[F

.field private static final GAIN_SMOOTHER_INV_TABLET:[[F

.field private static final GAIN_SMOOTHER_MOBILE:[F

.field private static final GAIN_SMOOTHER_TABLET:[F

.field private static GAIN_SMOOTH_LENGTH:I


# instance fields
.field private final MOBILE_LAYOUT_INITIAL_COLUMN:F

.field private final MOBILE_LAYOUT_INITIAL_STEP:F

.field private final TABLET_LAYOUT_INITIAL_COLUMN:F

.field private final TABLET_LAYOUT_INITIAL_STEP:F

.field private mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

.field private mBlur:Landroid/graphics/MaskFilter;

.field private final mContext:Landroid/content/Context;

.field private mDefaultProfileNames:[Ljava/lang/String;

.field private final mDrawFpsCounter:Lcom/atmos/daxappUI/FPSCounter;

.field private mDsClient:Lcom/atmos/api/DsGlobalEx;

.field private mEditBand:I

.field private mEditGain:F

.field private mEffect1:Landroid/graphics/PathEffect;

.field private mEnabled:Z

.field private mEqPreset:I

.field private final mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

.field private mForceSmoothenCurve:Z

.field private mGainsSmooth:[F

.field private final mGainsSmoothOld:[F

.field private final mGainsUi:[F

.field private mHeight:I

.field private final mHideAction:Ljava/lang/Runnable;

.field private mHideAnimEndTimestamp:J

.field private mListener:Lcom/atmos/daxappUI/IEqualizerChangeListener;

.field private mMobileLayout:Z

.field private mNotifyListener:Z

.field private mPaintCurve1:Landroid/graphics/Paint;

.field private mPaintCurve2:Landroid/graphics/Paint;

.field private final mPaintGreen:Landroid/graphics/Paint;

.field private final mPaintRed:Landroid/graphics/Paint;

.field private mPrevEditBand:I

.field private mPrevEditGain:F

.field private mProfile:I

.field private final mRecalcPositions:Ljava/lang/Runnable;

.field private mShowAnimEndTimestamp:J

.field private mSliderBg:Landroid/graphics/drawable/Drawable;

.field private mSliderThumb:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

.field private mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

.field private final mSmoothFpsCounter:Lcom/atmos/daxappUI/FPSCounter;

.field private mSmoothenTimestamp:J

.field private mUserBandsUpdated:I

.field private final mUserGainsTemp:[F

.field private mViewHeight:I

.field private mVisible:Z

.field private final mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

.field private mWidth:I

.field private recalcPosTimestamp:J

.field private final tmp_userGain_1:[I

.field private final tmp_userGain_2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x14

    .line 54
    sput v4, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    .line 55
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_TABLET:[F

    .line 56
    new-array v0, v6, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_MOBILE:[F

    .line 60
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    sput-object v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_TABLET:[[F

    .line 82
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_16

    aput-object v1, v0, v7

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_18

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_19

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [F

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [F

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [F

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [F

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [F

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [F

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [F

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [F

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [F

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [F

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_MOBILE:[[F

    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3e99999a    # 0.3f
        0x3e800000    # 0.25f
        0x3dcccccd    # 0.1f
    .end array-data

    .line 60
    :array_2
    .array-data 4
        0x3ff9999a    # 1.95f
        -0x40133333    # -1.85f
        0x3fe00000    # 1.75f
        -0x402ccccd    # -1.65f
        0x3fc66666    # 1.55f
        -0x40466666    # -1.45f
        0x3faccccd    # 1.35f
        -0x40600000    # -1.25f
        0x3f933333    # 1.15f
        -0x4079999a    # -1.05f
        0x3f733333    # 0.95f
        -0x40a66666    # -0.85f
        0x3f400000    # 0.75f
        -0x40d9999a    # -0.65f
        0x3f0ccccd    # 0.55f
        -0x4119999a    # -0.45f
        0x3eb33333    # 0.35f
        -0x41800000    # -0.25f
        0x3e19999a    # 0.15f
        -0x42b33333    # -0.05f
    .end array-data

    :array_3
    .array-data 4
        -0x40133333    # -1.85f
        0x40b1999a    # 5.55f
        -0x3f580000    # -5.25f
        0x409e6666    # 4.95f
        -0x3f6b3333    # -4.65f
        0x408b3333    # 4.35f
        -0x3f7e6666    # -4.05f
        0x40700000    # 3.75f
        -0x3fa33333    # -3.45f
        0x4049999a    # 3.15f
        -0x3fc9999a    # -2.85f
        0x40233333    # 2.55f
        -0x3ff00000    # -2.25f
        0x3ff9999a    # 1.95f
        -0x402ccccd    # -1.65f
        0x3faccccd    # 1.35f
        -0x4079999a    # -1.05f
        0x3f400000    # 0.75f
        -0x4119999a    # -0.45f
        0x3e19999a    # 0.15f
    .end array-data

    :array_4
    .array-data 4
        0x3fe00000    # 1.75f
        -0x3f580000    # -5.25f
        0x410c0000    # 8.75f
        -0x3efc0000    # -8.25f
        0x40f80000    # 7.75f
        -0x3f180000    # -7.25f
        0x40d80000    # 6.75f
        -0x3f380000    # -6.25f
        0x40b80000    # 5.75f
        -0x3f580000    # -5.25f
        0x40980000    # 4.75f
        -0x3f780000    # -4.25f
        0x40700000    # 3.75f
        -0x3fb00000    # -3.25f
        0x40300000    # 2.75f
        -0x3ff00000    # -2.25f
        0x3fe00000    # 1.75f
        -0x40600000    # -1.25f
        0x3f400000    # 0.75f
        -0x41800000    # -0.25f
    .end array-data

    :array_5
    .array-data 4
        -0x402ccccd    # -1.65f
        0x409e6666    # 4.95f
        -0x3efc0000    # -8.25f
        0x4138cccd    # 11.55f
        -0x3ed26666    # -10.85f
        0x41226666    # 10.15f
        -0x3ee8cccd    # -9.45f
        0x410c0000    # 8.75f
        -0x3eff3333    # -8.05f
        0x40eb3333    # 7.35f
        -0x3f2b3333    # -6.65f
        0x40be6666    # 5.95f
        -0x3f580000    # -5.25f
        0x4091999a    # 4.55f
        -0x3f89999a    # -3.85f
        0x4049999a    # 3.15f
        -0x3fe33333    # -2.45f
        0x3fe00000    # 1.75f
        -0x4079999a    # -1.05f
        0x3eb33333    # 0.35f
    .end array-data

    :array_6
    .array-data 4
        0x3fc66666    # 1.55f
        -0x3f6b3333    # -4.65f
        0x40f80000    # 7.75f
        -0x3ed26666    # -10.85f
        0x415f3333    # 13.95f
        -0x3eaf3333    # -13.05f
        0x41426666    # 12.15f
        -0x3ecc0000    # -11.25f
        0x4125999a    # 10.35f
        -0x3ee8cccd    # -9.45f
        0x4108cccd    # 8.55f
        -0x3f0b3333    # -7.65f
        0x40d80000    # 6.75f
        -0x3f44cccd    # -5.85f
        0x409e6666    # 4.95f
        -0x3f7e6666    # -4.05f
        0x4049999a    # 3.15f
        -0x3ff00000    # -2.25f
        0x3faccccd    # 1.35f
        -0x4119999a    # -0.45f
    .end array-data

    :array_7
    .array-data 4
        -0x40466666    # -1.45f
        0x408b3333    # 4.35f
        -0x3f180000    # -7.25f
        0x41226666    # 10.15f
        -0x3eaf3333    # -13.05f
        0x417f3333    # 15.95f
        -0x3e926666    # -14.85f
        0x415c0000    # 13.75f
        -0x3eb5999a    # -12.65f
        0x4138cccd    # 11.55f
        -0x3ed8cccd    # -10.45f
        0x4115999a    # 9.35f
        -0x3efc0000    # -8.25f
        0x40e4cccd    # 7.15f
        -0x3f3e6666    # -6.05f
        0x409e6666    # 4.95f
        -0x3f89999a    # -3.85f
        0x40300000    # 2.75f
        -0x402ccccd    # -1.65f
        0x3f0ccccd    # 0.55f
    .end array-data

    :array_8
    .array-data 4
        0x3faccccd    # 1.35f
        -0x3f7e6666    # -4.05f
        0x40d80000    # 6.75f
        -0x3ee8cccd    # -9.45f
        0x41426666    # 12.15f
        -0x3e926666    # -14.85f
        0x418c6666    # 17.55f
        -0x3e7e0000    # -16.25f
        0x416f3333    # 14.95f
        -0x3ea5999a    # -13.65f
        0x4145999a    # 12.35f
        -0x3ecf3333    # -11.05f
        0x411c0000    # 9.75f
        -0x3ef8cccd    # -8.45f
        0x40e4cccd    # 7.15f
        -0x3f44cccd    # -5.85f
        0x4091999a    # 4.55f
        -0x3fb00000    # -3.25f
        0x3ff9999a    # 1.95f
        -0x40d9999a    # -0.65f
    .end array-data

    :array_9
    .array-data 4
        -0x40600000    # -1.25f
        0x40700000    # 3.75f
        -0x3f380000    # -6.25f
        0x410c0000    # 8.75f
        -0x3ecc0000    # -11.25f
        0x415c0000    # 13.75f
        -0x3e7e0000    # -16.25f
        0x41960000    # 18.75f
        -0x3e760000    # -17.25f
        0x417c0000    # 15.75f
        -0x3e9c0000    # -14.25f
        0x414c0000    # 12.75f
        -0x3ecc0000    # -11.25f
        0x411c0000    # 9.75f
        -0x3efc0000    # -8.25f
        0x40d80000    # 6.75f
        -0x3f580000    # -5.25f
        0x40700000    # 3.75f
        -0x3ff00000    # -2.25f
        0x3f400000    # 0.75f
    .end array-data

    :array_a
    .array-data 4
        0x3f933333    # 1.15f
        -0x3fa33333    # -3.45f
        0x40b80000    # 5.75f
        -0x3eff3333    # -8.05f
        0x4125999a    # 10.35f
        -0x3eb5999a    # -12.65f
        0x416f3333    # 14.95f
        -0x3e760000    # -17.25f
        0x419c6666    # 19.55f
        -0x3e713333    # -17.85f
        0x41813333    # 16.15f
        -0x3e98cccd    # -14.45f
        0x414c0000    # 12.75f
        -0x3ecf3333    # -11.05f
        0x4115999a    # 9.35f
        -0x3f0b3333    # -7.65f
        0x40be6666    # 5.95f
        -0x3f780000    # -4.25f
        0x40233333    # 2.55f
        -0x40a66666    # -0.85f
    .end array-data

    :array_b
    .array-data 4
        -0x4079999a    # -1.05f
        0x4049999a    # 3.15f
        -0x3f580000    # -5.25f
        0x40eb3333    # 7.35f
        -0x3ee8cccd    # -9.45f
        0x4138cccd    # 11.55f
        -0x3ea5999a    # -13.65f
        0x417c0000    # 15.75f
        -0x3e713333    # -17.85f
        0x419f999a    # 19.95f
        -0x3e6f999a    # -18.05f
        0x41813333    # 16.15f
        -0x3e9c0000    # -14.25f
        0x4145999a    # 12.35f
        -0x3ed8cccd    # -10.45f
        0x4108cccd    # 8.55f
        -0x3f2b3333    # -6.65f
        0x40980000    # 4.75f
        -0x3fc9999a    # -2.85f
        0x3f733333    # 0.95f
    .end array-data

    :array_c
    .array-data 4
        0x3f733333    # 0.95f
        -0x3fc9999a    # -2.85f
        0x40980000    # 4.75f
        -0x3f2b3333    # -6.65f
        0x4108cccd    # 8.55f
        -0x3ed8cccd    # -10.45f
        0x4145999a    # 12.35f
        -0x3e9c0000    # -14.25f
        0x41813333    # 16.15f
        -0x3e6f999a    # -18.05f
        0x419f999a    # 19.95f
        -0x3e713333    # -17.85f
        0x417c0000    # 15.75f
        -0x3ea5999a    # -13.65f
        0x4138cccd    # 11.55f
        -0x3ee8cccd    # -9.45f
        0x40eb3333    # 7.35f
        -0x3f580000    # -5.25f
        0x4049999a    # 3.15f
        -0x4079999a    # -1.05f
    .end array-data

    :array_d
    .array-data 4
        -0x40a66666    # -0.85f
        0x40233333    # 2.55f
        -0x3f780000    # -4.25f
        0x40be6666    # 5.95f
        -0x3f0b3333    # -7.65f
        0x4115999a    # 9.35f
        -0x3ecf3333    # -11.05f
        0x414c0000    # 12.75f
        -0x3e98cccd    # -14.45f
        0x41813333    # 16.15f
        -0x3e713333    # -17.85f
        0x419c6666    # 19.55f
        -0x3e760000    # -17.25f
        0x416f3333    # 14.95f
        -0x3eb5999a    # -12.65f
        0x4125999a    # 10.35f
        -0x3eff3333    # -8.05f
        0x40b80000    # 5.75f
        -0x3fa33333    # -3.45f
        0x3f933333    # 1.15f
    .end array-data

    :array_e
    .array-data 4
        0x3f400000    # 0.75f
        -0x3ff00000    # -2.25f
        0x40700000    # 3.75f
        -0x3f580000    # -5.25f
        0x40d80000    # 6.75f
        -0x3efc0000    # -8.25f
        0x411c0000    # 9.75f
        -0x3ecc0000    # -11.25f
        0x414c0000    # 12.75f
        -0x3e9c0000    # -14.25f
        0x417c0000    # 15.75f
        -0x3e760000    # -17.25f
        0x41960000    # 18.75f
        -0x3e7e0000    # -16.25f
        0x415c0000    # 13.75f
        -0x3ecc0000    # -11.25f
        0x410c0000    # 8.75f
        -0x3f380000    # -6.25f
        0x40700000    # 3.75f
        -0x40600000    # -1.25f
    .end array-data

    :array_f
    .array-data 4
        -0x40d9999a    # -0.65f
        0x3ff9999a    # 1.95f
        -0x3fb00000    # -3.25f
        0x4091999a    # 4.55f
        -0x3f44cccd    # -5.85f
        0x40e4cccd    # 7.15f
        -0x3ef8cccd    # -8.45f
        0x411c0000    # 9.75f
        -0x3ecf3333    # -11.05f
        0x4145999a    # 12.35f
        -0x3ea5999a    # -13.65f
        0x416f3333    # 14.95f
        -0x3e7e0000    # -16.25f
        0x418c6666    # 17.55f
        -0x3e926666    # -14.85f
        0x41426666    # 12.15f
        -0x3ee8cccd    # -9.45f
        0x40d80000    # 6.75f
        -0x3f7e6666    # -4.05f
        0x3faccccd    # 1.35f
    .end array-data

    :array_10
    .array-data 4
        0x3f0ccccd    # 0.55f
        -0x402ccccd    # -1.65f
        0x40300000    # 2.75f
        -0x3f89999a    # -3.85f
        0x409e6666    # 4.95f
        -0x3f3e6666    # -6.05f
        0x40e4cccd    # 7.15f
        -0x3efc0000    # -8.25f
        0x4115999a    # 9.35f
        -0x3ed8cccd    # -10.45f
        0x4138cccd    # 11.55f
        -0x3eb5999a    # -12.65f
        0x415c0000    # 13.75f
        -0x3e926666    # -14.85f
        0x417f3333    # 15.95f
        -0x3eaf3333    # -13.05f
        0x41226666    # 10.15f
        -0x3f180000    # -7.25f
        0x408b3333    # 4.35f
        -0x40466666    # -1.45f
    .end array-data

    :array_11
    .array-data 4
        -0x4119999a    # -0.45f
        0x3faccccd    # 1.35f
        -0x3ff00000    # -2.25f
        0x4049999a    # 3.15f
        -0x3f7e6666    # -4.05f
        0x409e6666    # 4.95f
        -0x3f44cccd    # -5.85f
        0x40d80000    # 6.75f
        -0x3f0b3333    # -7.65f
        0x4108cccd    # 8.55f
        -0x3ee8cccd    # -9.45f
        0x4125999a    # 10.35f
        -0x3ecc0000    # -11.25f
        0x41426666    # 12.15f
        -0x3eaf3333    # -13.05f
        0x415f3333    # 13.95f
        -0x3ed26666    # -10.85f
        0x40f80000    # 7.75f
        -0x3f6b3333    # -4.65f
        0x3fc66666    # 1.55f
    .end array-data

    :array_12
    .array-data 4
        0x3eb33333    # 0.35f
        -0x4079999a    # -1.05f
        0x3fe00000    # 1.75f
        -0x3fe33333    # -2.45f
        0x4049999a    # 3.15f
        -0x3f89999a    # -3.85f
        0x4091999a    # 4.55f
        -0x3f580000    # -5.25f
        0x40be6666    # 5.95f
        -0x3f2b3333    # -6.65f
        0x40eb3333    # 7.35f
        -0x3eff3333    # -8.05f
        0x410c0000    # 8.75f
        -0x3ee8cccd    # -9.45f
        0x41226666    # 10.15f
        -0x3ed26666    # -10.85f
        0x4138cccd    # 11.55f
        -0x3efc0000    # -8.25f
        0x409e6666    # 4.95f
        -0x402ccccd    # -1.65f
    .end array-data

    :array_13
    .array-data 4
        -0x41800000    # -0.25f
        0x3f400000    # 0.75f
        -0x40600000    # -1.25f
        0x3fe00000    # 1.75f
        -0x3ff00000    # -2.25f
        0x40300000    # 2.75f
        -0x3fb00000    # -3.25f
        0x40700000    # 3.75f
        -0x3f780000    # -4.25f
        0x40980000    # 4.75f
        -0x3f580000    # -5.25f
        0x40b80000    # 5.75f
        -0x3f380000    # -6.25f
        0x40d80000    # 6.75f
        -0x3f180000    # -7.25f
        0x40f80000    # 7.75f
        -0x3efc0000    # -8.25f
        0x410c0000    # 8.75f
        -0x3f580000    # -5.25f
        0x3fe00000    # 1.75f
    .end array-data

    :array_14
    .array-data 4
        0x3e19999a    # 0.15f
        -0x4119999a    # -0.45f
        0x3f400000    # 0.75f
        -0x4079999a    # -1.05f
        0x3faccccd    # 1.35f
        -0x402ccccd    # -1.65f
        0x3ff9999a    # 1.95f
        -0x3ff00000    # -2.25f
        0x40233333    # 2.55f
        -0x3fc9999a    # -2.85f
        0x4049999a    # 3.15f
        -0x3fa33333    # -3.45f
        0x40700000    # 3.75f
        -0x3f7e6666    # -4.05f
        0x408b3333    # 4.35f
        -0x3f6b3333    # -4.65f
        0x409e6666    # 4.95f
        -0x3f580000    # -5.25f
        0x40b1999a    # 5.55f
        -0x40133333    # -1.85f
    .end array-data

    :array_15
    .array-data 4
        -0x42b33333    # -0.05f
        0x3e19999a    # 0.15f
        -0x41800000    # -0.25f
        0x3eb33333    # 0.35f
        -0x4119999a    # -0.45f
        0x3f0ccccd    # 0.55f
        -0x40d9999a    # -0.65f
        0x3f400000    # 0.75f
        -0x40a66666    # -0.85f
        0x3f733333    # 0.95f
        -0x4079999a    # -1.05f
        0x3f933333    # 1.15f
        -0x40600000    # -1.25f
        0x3faccccd    # 1.35f
        -0x40466666    # -1.45f
        0x3fc66666    # 1.55f
        -0x402ccccd    # -1.65f
        0x3fe00000    # 1.75f
        -0x40133333    # -1.85f
        0x3ff9999a    # 1.95f
    .end array-data

    .line 82
    :array_16
    .array-data 4
        0x40bf32c4
        -0x3ee7093b
        0x4093f560
        0x400bc882
        -0x404c1145
        -0x3f5ed08b
        0x40d739ac
        -0x4140f217
        -0x3f581f79
        0x401d4667
        0x4073542a
        -0x3fa71ec5
        -0x3f8ac7a8
        0x40f90be3
        -0x3fad4c90
        -0x3ff6676a
        -0x4140a5ad
        0x40fa9f66
        -0x3ee35570
        0x40822900
    .end array-data

    :array_17
    .array-data 4
        -0x3ead1ce0
        0x41d71dd6
        -0x3ef8f372
        -0x3e7b1216
        0x414d192b
        0x41403845
        -0x3e6becf8
        -0x3f59a67c
        0x41cd5e1d
        -0x3e9ad695
        -0x3ee4c8d1
        0x4103dc68
        0x419514ee
        -0x3dfd0d61
        0x41708cce
        0x40b974c9    # 5.795506f
        0x40675fdd
        -0x3e05cfb2
        0x421742b6    # 37.815147f
        -0x3e873068
    .end array-data

    :array_18
    .array-data 4
        0x4083a59e
        -0x3f5d5d9a
        -0x3ef0c1ee
        0x41dabfdf
        -0x3e48b984
        0x402d363b
        0x40238ede
        0x4176beb6
        -0x3e0f6193
        0x419eaa93
        -0x41142635
        0x3fb637ef
        -0x3e528976
        0x41fa09cb
        -0x3e7e81cc
        -0x40fc5f6c
        -0x3f2c84dc
        0x41da35bd
        -0x3e08dcc4
        0x414701b8
    .end array-data

    :array_19
    .array-data 4
        0x41058181
        -0x3e3bfbd4
        0x41fc29b9
        -0x3e2ec257
        0x41bde6ac
        -0x3e36942c
        0x41ccc9fb
        -0x3e52c782
        0x4184562f
        -0x3e8c89ca
        0x41879477
        -0x3e7c9f30
        0x413b646d
        -0x3f1ab35f
        0x40dc5b42
        -0x3ef6c76c
        0x40df7fd4
        -0x401bf184
        -0x400724d1
        0x3fa915c6
    .end array-data

    :array_1a
    .array-data 4
        -0x3f38c47c
        0x4196b504
        -0x3e344728
        0x41b5b442
        -0x3e55f23a
        0x41ee9ec2
        -0x3dff8950
        0x41a9e355
        -0x3edf2153
        0x413e3e09
        -0x3e5bb583
        0x419c902f
        -0x3f206339
        -0x401aca58    # -1.7907f
        -0x3fc34007
        0x412a4fb7
        -0x3f366fb1
        -0x3f1f47d8
        0x414ca75b
        -0x3f462d08
    .end array-data

    :array_1b
    .array-data 4
        -0x3f2db3fa
        0x41439f45
        -0x4264d120    # -0.075773f
        -0x3e5f8493
        0x41d3120b
        -0x3e717981
        0x4179d3bc
        -0x3e541925
        0x41c841bd
        -0x3e654e0d
        0x41359ddc
        -0x3ec8a60f
        0x418f3ec4
        -0x3e64969e
        0x4142594f
        -0x3f537247
        0x40f66d39
        -0x3e9fbf8c
        0x41545524
        -0x3f6055ae
    .end array-data

    :array_1c
    .array-data 4
        0x412221bc
        -0x3e5a0ce5
        0x40d794ea
        0x41a07213
        -0x3e1b0205
        0x4174b583
        -0x3eec2943
        0x41e5c507
        -0x3dd13850
        0x41f70903
        -0x3ef52cc4
        0x41191cd0
        -0x3e04d1ad
        0x422263d0
        -0x3e4b9d84
        0x406025ee
        -0x3eccadb8
        0x4205239b
        -0x3df0d003
        0x416278d5    # 14.1545f
    .end array-data

    :array_1d
    .array-data 4
        0x3fcd34ad
        -0x3f12c1f8
        0x417871bf
        -0x3e5b501c
        0x41ae8096
        -0x3e3e8f89
        0x41f79643
        -0x3de4e416
        0x422af0b0
        -0x3df93670
        0x41b04102
        -0x3e4f9b3f
        0x41f4474a
        -0x3e036ca3
        0x41a3556b
        -0x3ed62e29
        0x415ade56
        -0x3e5162a9
        0x419d2cbb
        -0x3f18ecca
    .end array-data

    :array_1e
    .array-data 4
        -0x3ec3f71d
        0x41fae3fc
        -0x3dfa7f78
        0x4195e1cf
        -0x3eaa3248
        0x41ea3a62
        -0x3dc5b793
        0x422d0d28
        -0x3e1dc5ad
        0x41e0729f
        -0x3dec6fbf
        0x420df874    # 35.49263f
        -0x3e60a309
        0x40efd169
        -0x3ed2f487
        0x4196e8ca
        -0x3ea78aa0
        -0x3fb192a3
        0x4144e3fd
        -0x3f3bd7cf
    .end array-data

    :array_1f
    .array-data 4
        0x40b9e842
        -0x3e7bc4b1
        0x41a0b626
        -0x3e8d72c5
        0x41525096
        -0x3e57630c
        0x41f889e4
        -0x3dff7002
        0x41d59263
        -0x3e28b63a
        0x4211e3ae
        -0x3df3ce7a
        0x41964799
        -0x3f3d3624
        0x41202f48
        -0x3e6a8c5b
        0x4151a184
        0x408b219b
        -0x3ea84462
        0x40d2ec44
    .end array-data

    :array_20
    .array-data 4
        0x40d2ec44
        -0x3ea84462
        0x408b219b
        0x4151a184
        -0x3e6a8c5b
        0x41202f48
        -0x3f3d3624
        0x41964799
        -0x3df3ce7a
        0x4211e3ae
        -0x3e28b63a
        0x41d59263
        -0x3dff7002
        0x41f889e4
        -0x3e57630c
        0x41525096
        -0x3e8d72c5
        0x41a0b626
        -0x3e7bc4b1
        0x40b9e842
    .end array-data

    :array_21
    .array-data 4
        -0x3f3bd7cf
        0x4144e3fd
        -0x3fb192a3
        -0x3ea78aa0
        0x4196e8ca
        -0x3ed2f487
        0x40efd169
        -0x3e60a309
        0x420df874    # 35.49263f
        -0x3dec6fbf
        0x41e0729f
        -0x3e1dc5ad
        0x422d0d28
        -0x3dc5b793
        0x41ea3a62
        -0x3eaa3248
        0x4195e1cf
        -0x3dfa7f78
        0x41fae3fc
        -0x3ec3f71d
    .end array-data

    :array_22
    .array-data 4
        -0x3f18ecca
        0x419d2cbb
        -0x3e5162a9
        0x415ade56
        -0x3ed62e29
        0x41a3556b
        -0x3e036ca3
        0x41f4474a
        -0x3e4f9b3f
        0x41b04102
        -0x3df93670
        0x422af0b0
        -0x3de4e416
        0x41f79643
        -0x3e3e8f89
        0x41ae8096
        -0x3e5b501c
        0x417871bf
        -0x3f12c1f8
        0x3fcd34ad
    .end array-data

    :array_23
    .array-data 4
        0x416278d5    # 14.1545f
        -0x3df0d003
        0x4205239b
        -0x3eccadb8
        0x406025ee
        -0x3e4b9d84
        0x422263d0
        -0x3e04d1ad
        0x41191cd0
        -0x3ef52cc4
        0x41f70903
        -0x3dd13850
        0x41e5c507
        -0x3eec2943
        0x4174b583
        -0x3e1b0205
        0x41a07213
        0x40d794ea
        -0x3e5a0ce5
        0x412221bc
    .end array-data

    :array_24
    .array-data 4
        -0x3f6055ae
        0x41545524
        -0x3e9fbf8c
        0x40f66d39
        -0x3f537247
        0x4142594f
        -0x3e64969e
        0x418f3ec4
        -0x3ec8a60f
        0x41359ddc
        -0x3e654e0d
        0x41c841bd
        -0x3e541925
        0x4179d3bc
        -0x3e717981
        0x41d3120b
        -0x3e5f8493
        -0x4264d120    # -0.075773f
        0x41439f45
        -0x3f2db3fa
    .end array-data

    :array_25
    .array-data 4
        -0x3f462d08
        0x414ca75b
        -0x3f1f47d8
        -0x3f366fb1
        0x412a4fb7
        -0x3fc34007
        -0x401aca58    # -1.7907f
        -0x3f206339
        0x419c902f
        -0x3e5bb583
        0x413e3e09
        -0x3edf2153
        0x41a9e355
        -0x3dff8950
        0x41ee9ec2
        -0x3e55f23a
        0x41b5b442
        -0x3e344728
        0x4196b504
        -0x3f38c47c
    .end array-data

    :array_26
    .array-data 4
        0x3fa915c6
        -0x400724d1
        -0x401bf184
        0x40df7fd4
        -0x3ef6c76c
        0x40dc5b42
        -0x3f1ab35f
        0x413b646d
        -0x3e7c9f30
        0x41879477
        -0x3e8c89ca
        0x4184562f
        -0x3e52c782
        0x41ccc9fb
        -0x3e36942c
        0x41bde6ac
        -0x3e2ec257
        0x41fc29b9
        -0x3e3bfbd4
        0x41058181
    .end array-data

    :array_27
    .array-data 4
        0x414701b8
        -0x3e08dcc4
        0x41da35bd
        -0x3f2c84dc
        -0x40fc5f6c
        -0x3e7e81cc
        0x41fa09cb
        -0x3e528976
        0x3fb637ef
        -0x41142635
        0x419eaa93
        -0x3e0f6193
        0x4176beb6
        0x40238ede
        0x402d363b
        -0x3e48b984
        0x41dabfdf
        -0x3ef0c1ee
        -0x3f5d5d9a
        0x4083a59e
    .end array-data

    :array_28
    .array-data 4
        -0x3e873068
        0x421742b6    # 37.815147f
        -0x3e05cfb2
        0x40675fdd
        0x40b974c9    # 5.795506f
        0x41708cce
        -0x3dfd0d61
        0x419514ee
        0x4103dc68
        -0x3ee4c8d1
        -0x3e9ad695
        0x41cd5e1d
        -0x3f59a67c
        -0x3e6becf8
        0x41403845
        0x414d192b
        -0x3e7b1216
        -0x3ef8f372
        0x41d71dd6
        -0x3ead1ce0
    .end array-data

    :array_29
    .array-data 4
        0x40822900
        -0x3ee35570
        0x40fa9f66
        -0x4140a5ad
        -0x3ff6676a
        -0x3fad4c90
        0x40f90be3
        -0x3f8ac7a8
        -0x3fa71ec5
        0x4073542a
        0x401d4667
        -0x3f581f79
        -0x4140f217
        0x40d739ac
        -0x3f5ed08b
        -0x404c1145
        0x400bc882
        0x4093f560
        -0x3ee7093b
        0x40bf32c4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/atmos/daxappUI/GraphicVisualiser;[F[F)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visualizer"    # Lcom/atmos/daxappUI/GraphicVisualiser;
    .param p3, "gainsUi"    # [F
    .param p4, "gainsUser"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x14

    const/4 v1, -0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    .line 124
    new-instance v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-direct {v0, p0, v2}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;-><init>(Lcom/atmos/daxappUI/GraphicEqualizerPainter;I)V

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    .line 131
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    .line 133
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    .line 134
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_2:[I

    .line 144
    iput v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    .line 151
    iput v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    .line 155
    iput-boolean v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    .line 165
    iput v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mProfile:I

    .line 167
    iput v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEnabled:Z

    .line 185
    iput-boolean v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    .line 186
    iput v4, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->TABLET_LAYOUT_INITIAL_COLUMN:F

    .line 187
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->TABLET_LAYOUT_INITIAL_STEP:F

    .line 188
    iput v4, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->MOBILE_LAYOUT_INITIAL_COLUMN:F

    .line 189
    const/high16 v0, 0x40980000    # 4.75f

    iput v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->MOBILE_LAYOUT_INITIAL_STEP:F

    .line 498
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    .line 500
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintGreen:Landroid/graphics/Paint;

    .line 503
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    const v1, -0x2f007f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 504
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintRed:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 505
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintGreen:Landroid/graphics/Paint;

    const v1, -0x2f7f0080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    new-instance v0, Lcom/atmos/daxappUI/FPSCounter;

    invoke-direct {v0}, Lcom/atmos/daxappUI/FPSCounter;-><init>()V

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDrawFpsCounter:Lcom/atmos/daxappUI/FPSCounter;

    .line 510
    new-instance v0, Lcom/atmos/daxappUI/FPSCounter;

    invoke-direct {v0}, Lcom/atmos/daxappUI/FPSCounter;-><init>()V

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSmoothFpsCounter:Lcom/atmos/daxappUI/FPSCounter;

    .line 697
    new-instance v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$1;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$1;-><init>(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    .line 856
    iput-boolean v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    .line 858
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    .line 973
    new-instance v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$2;

    invoke-direct {v0, p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$2;-><init>(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)V

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    .line 198
    iput-object p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    .line 200
    iput-object p3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsUi:[F

    .line 201
    iput-object p4, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    .line 202
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->init()V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/atmos/daxappUI/GraphicEqualizerPainter;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/GraphicEqualizerPainter;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)Lcom/atmos/daxappUI/GraphicVisualiser;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)V
    .locals 0
    .param p0, "x0"    # Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->doRecalcPositions()V

    return-void
.end method

.method static synthetic access$300(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)I
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    .prologue
    .line 39
    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    return v0
.end method

.method static synthetic access$400(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)F
    .locals 1
    .param p0, "x0"    # Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    .prologue
    .line 39
    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPrevEditGain:F

    return v0
.end method

.method private animateVisibility(Z)V
    .locals 10
    .param p1, "visible"    # Z

    .prologue
    const-wide/16 v8, 0xfa

    .line 665
    invoke-virtual {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    :goto_0
    return-void

    .line 669
    :cond_0
    const-string v4, "GraphicEqualizerPainter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateVisibility "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->preventHiding()V

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 674
    .local v0, "now":J
    add-long v2, v0, v8

    .line 675
    .local v2, "until":J
    if-eqz p1, :cond_1

    .line 676
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    .line 677
    iput-wide v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    .line 678
    invoke-direct {p0, v8, v9}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->delayHide(J)V

    goto :goto_0

    .line 680
    :cond_1
    iput-wide v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    goto :goto_0
.end method

.method private calculateTempGainsFromSmoothed()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    .line 945
    const-string v3, "GraphicEqualizerPainter"

    const-string v4, "GraphicEqualizerPainter.calculateTempGainsFromSmoothed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 950
    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 951
    const/4 v1, 0x0

    .local v1, "bb":I
    :goto_1
    if-ge v1, v8, :cond_0

    .line 952
    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/2addr v4, v0

    aget v5, v3, v4

    sget-object v6, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    aget-object v6, v6, v0

    aget v6, v6, v1

    iget-object v7, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 951
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 949
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    .end local v1    # "bb":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget v3, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    if-ge v2, v3, :cond_2

    .line 958
    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    iget-object v4, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v5, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    aget v4, v4, v5

    aput v4, v3, v2

    .line 959
    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v4, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x14

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    sget v6, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 961
    :cond_2
    return-void
.end method

.method private delayHide()V
    .locals 2

    .prologue
    .line 689
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->delayHide(J)V

    .line 690
    return-void
.end method

.method private delayHide(J)V
    .locals 5
    .param p1, "add"    # J

    .prologue
    .line 693
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 694
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    return-void
.end method

.method private doRecalcPositions()V
    .locals 14

    .prologue
    .line 863
    iget-object v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v10}, Lcom/atmos/daxappUI/GraphicVisualiser;->isSurfaceCreated()Z

    move-result v10

    if-nez v10, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 867
    .local v0, "beginTime":J
    iget-wide v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    sub-long v2, v0, v10

    .line 868
    .local v2, "delay":J
    const-wide/16 v6, 0x3c

    .line 869
    .local v6, "minInterval":J
    iget-object v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    iget-boolean v10, v10, Lcom/atmos/daxappUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v10, :cond_2

    .line 870
    const-wide/16 v10, 0x2

    div-long/2addr v6, v10

    .line 872
    :cond_2
    cmp-long v10, v2, v6

    if-gez v10, :cond_3

    .line 873
    sub-long v10, v6, v2

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    .line 874
    .local v8, "postDelay":J
    const-string v10, "GraphicEqualizerPainter"

    const-string v11, "GraphicEqualizerPainter.doRecalcPositions ignore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    sget-object v10, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 879
    .end local v8    # "postDelay":J
    :cond_3
    const-string v10, "GraphicEqualizerPainter"

    const-string v11, "GraphicEqualizerPainter.doRecalcPositions"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    sget-object v10, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 881
    iput-wide v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->recalcPosTimestamp:J

    .line 883
    iget-object v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_4

    .line 884
    const-string v10, "GraphicEqualizerPainter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTouchEvents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v12}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_4
    iget v4, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    .line 889
    .local v4, "editBand":I
    iget v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditGain:F

    .line 890
    .local v5, "editGain":F
    iget-object v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, -0x1

    if-eq v4, v10, :cond_5

    .line 891
    iget-object v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10, v4, v5}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->add(IF)V

    .line 894
    :cond_5
    iget-object v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v10}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v10

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    if-eqz v10, :cond_7

    .line 898
    :cond_6
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->handleNewTouchEvents()V

    .line 899
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->smoothenCurve()V

    .line 900
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->updateEqUserGainsInEngine()V

    .line 902
    :cond_7
    iget-boolean v10, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    if-eqz v10, :cond_8

    .line 903
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->delayHide()V

    .line 906
    :cond_8
    invoke-virtual {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v0

    .line 908
    const-wide/16 v10, 0x3c

    sub-long v2, v10, v2

    .line 909
    sget-object v10, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v11, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-virtual {v10, v11, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private getVerticalThumbPadding()I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 772
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleNewTouchEvents()V
    .locals 10

    .prologue
    .line 292
    const-string v8, "GraphicEqualizerPainter"

    const-string v9, "GraphicEqualizerPainter.handleNewTouchEvents"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->size()I

    move-result v6

    .line 301
    .local v6, "size":I
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    iget-boolean v7, v8, Lcom/atmos/daxappUI/GraphicVisualiser;->mSuspended:Z

    .line 302
    .local v7, "suspended":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 303
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->getBandAt(I)I

    move-result v0

    .line 304
    .local v0, "b":I
    if-eqz v7, :cond_0

    .line 305
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->getGainAt(I)F

    move-result v5

    .line 311
    .local v5, "newUserGain":F
    :goto_1
    move v1, v0

    .local v1, "bb":I
    :goto_2
    sget v8, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    if-gt v1, v8, :cond_1

    .line 312
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    aput v5, v8, v1

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 307
    .end local v1    # "bb":I
    .end local v5    # "newUserGain":F
    :cond_0
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsUi:[F

    aget v2, v8, v0

    .line 308
    .local v2, "currentUiGain":F
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v8, v8, v0

    sub-float v3, v2, v8

    .line 309
    .local v3, "engineGain":F
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8, v4}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->getGainAt(I)F

    move-result v8

    sub-float v5, v8, v3

    .restart local v5    # "newUserGain":F
    goto :goto_1

    .line 302
    .end local v2    # "currentUiGain":F
    .end local v3    # "engineGain":F
    .restart local v1    # "bb":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "b":I
    .end local v1    # "bb":I
    .end local v5    # "newUserGain":F
    :cond_2
    iget-object v8, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v8}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    .line 317
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const v3, 0x7f020030

    const/4 v5, 0x1

    .line 206
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x7f090000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    .line 208
    iget-boolean v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v2, :cond_1

    .line 209
    sget-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_MOBILE:[F

    sput-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    .line 210
    sget-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_MOBILE:[[F

    sput-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    .line 216
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    .line 217
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    .line 219
    const v2, 0x7f020031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    .line 220
    const v2, 0x7f02002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    .line 221
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    .line 222
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 223
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const v3, 0x7f06000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 224
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    const v4, 0x7f06000c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 225
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x3

    const v4, 0x7f06000d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 226
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x4

    const v4, 0x7f06000e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 227
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v3, 0x5

    const v4, 0x7f06000f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 228
    const/high16 v1, 0x3f800000    # 1.0f

    .line 229
    .local v1, "scale":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 240
    :goto_1
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v1

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mBlur:Landroid/graphics/MaskFilter;

    .line 241
    new-instance v2, Landroid/graphics/CornerPathEffect;

    mul-float v3, v6, v1

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    .line 242
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    .line 243
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 245
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    const v3, -0x2f8a2d01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 248
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    .line 249
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 251
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    mul-float v3, v6, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 252
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    const v3, -0x7f8a2d01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 254
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEffect1:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 257
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x71

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 265
    :cond_0
    iput-boolean v7, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    .line 267
    return-void

    .line 212
    .end local v1    # "scale":F
    :cond_1
    sget-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_TABLET:[F

    sput-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    .line 213
    sget-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV_TABLET:[[F

    sput-object v2, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER_INV:[[F

    .line 214
    sput v5, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    goto/16 :goto_0

    .line 231
    .restart local v1    # "scale":F
    :sswitch_0
    const/high16 v1, 0x3f400000    # 0.75f

    .line 232
    goto/16 :goto_1

    .line 234
    :sswitch_1
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 235
    goto/16 :goto_1

    .line 237
    :sswitch_2
    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_1

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
    .end sparse-switch
.end method

.method private isAnimatedVisible()Z
    .locals 4

    .prologue
    .line 1057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAnimating(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 1048
    iget-wide v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEnabled:Z

    return v0
.end method

.method private onIEqPresetChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 964
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    .line 966
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    .line 967
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->smoothenCurve()V

    .line 968
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    const/16 v2, 0x14

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 970
    const-string v0, "GraphicEqualizerPainter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usergains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-static {v2}, Lcom/atmos/daxappCoreUI/Tools;->floatArrayToString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void
.end method

.method private preventHiding()V
    .locals 2

    .prologue
    .line 685
    sget-object v0, Lcom/atmos/daxappCoreUI/DAXApplication;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    return-void
.end method

.method private smoothenCurve()V
    .locals 24

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    move-object/from16 v19, v0

    check-cast v19, Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/atmos/daxappUI/MainActivity;->getConfiguration()Lcom/atmos/daxappCoreUI/Configuration;

    move-result-object v5

    .line 332
    .local v5, "conf":Lcom/atmos/daxappCoreUI/Configuration;
    if-nez v5, :cond_0

    .line 410
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 337
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    const-wide/16 v22, 0x3e8

    cmp-long v19, v20, v22

    if-ltz v19, :cond_1

    .line 338
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    .line 341
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    move-wide/from16 v20, v0

    sub-long v6, v14, v20

    .line 342
    .local v6, "delta":J
    long-to-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x447a0000    # 1000.0f

    div-float v10, v19, v20

    .line 346
    .local v10, "fDelta":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    move-object/from16 v18, v0

    .line 348
    .local v18, "tempGains":[F
    const v16, 0x3ca3d70a    # 0.02f

    .line 351
    .local v16, "significantDiff":F
    const/4 v13, 0x0

    .line 352
    .local v13, "redraw":Z
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    const v19, 0x3e99999a    # 0.3f

    div-float v19, v10, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v9, v0

    .line 354
    .local v9, "fAlpha":F
    const v17, 0x3e4ccccd    # 0.2f

    .line 355
    .local v17, "snap":F
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_1
    sget v19, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x14

    move/from16 v0, v19

    if-ge v3, v0, :cond_8

    .line 357
    aget v19, v18, v3

    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v20

    sub-float v8, v19, v20

    .line 358
    .local v8, "diff":F
    const/16 v19, 0x0

    cmpl-float v19, v8, v19

    if-lez v19, :cond_5

    .line 359
    const v19, 0x3ca3d70a    # 0.02f

    cmpl-float v19, v8, v19

    if-ltz v19, :cond_4

    .line 360
    const v19, 0x3e4ccccd    # 0.2f

    cmpg-float v19, v8, v19

    if-gez v19, :cond_3

    .line 361
    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v19

    aput v19, v18, v3

    .line 355
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 363
    :cond_3
    aget v19, v18, v3

    mul-float v19, v19, v9

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v9

    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v18, v3

    goto :goto_2

    .line 366
    :cond_4
    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v19

    aput v19, v18, v3

    goto :goto_2

    .line 369
    :cond_5
    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v19

    aget v20, v18, v3

    sub-float v8, v19, v20

    .line 370
    const/16 v19, 0x0

    cmpl-float v19, v8, v19

    if-lez v19, :cond_2

    .line 371
    const v19, 0x3ca3d70a    # 0.02f

    cmpl-float v19, v8, v19

    if-ltz v19, :cond_7

    .line 372
    const v19, 0x3e4ccccd    # 0.2f

    cmpg-float v19, v8, v19

    if-gez v19, :cond_6

    .line 373
    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v19

    aput v19, v18, v3

    goto :goto_2

    .line 375
    :cond_6
    aget v19, v18, v3

    mul-float v19, v19, v9

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v9

    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aput v19, v18, v3

    goto :goto_2

    .line 378
    :cond_7
    invoke-virtual {v5}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v19

    aput v19, v18, v3

    goto :goto_2

    .line 384
    .end local v8    # "diff":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x14

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    const/4 v3, 0x0

    :goto_3
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v3, v0, :cond_b

    .line 389
    const/4 v11, 0x0

    .line 390
    .local v11, "fGain":F
    const/4 v12, 0x0

    .local v12, "i":I
    move v4, v3

    .local v4, "bb":I
    :goto_4
    sget v19, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTH_LENGTH:I

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    if-gt v12, v0, :cond_9

    .line 391
    sget-object v19, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->GAIN_SMOOTHER:[F

    aget v19, v19, v12

    aget v20, v18, v4

    mul-float v19, v19, v20

    add-float v11, v11, v19

    .line 390
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 394
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    aget v19, v19, v3

    cmpl-float v19, v19, v11

    if-eqz v19, :cond_a

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    aget v19, v19, v3

    sub-float v19, v19, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 396
    .local v2, "absDiff":F
    const v19, 0x3ca3d70a    # 0.02f

    cmpl-float v19, v2, v19

    if-lez v19, :cond_a

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    move-object/from16 v19, v0

    aput v11, v19, v3

    .line 398
    if-nez v13, :cond_a

    .line 401
    const/4 v13, 0x1

    .line 388
    .end local v2    # "absDiff":F
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 407
    .end local v4    # "bb":I
    .end local v11    # "fGain":F
    .end local v12    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSmoothenTimestamp:J

    .line 409
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    goto/16 :goto_0
.end method

.method private static translateEqPresetIndex(I)I
    .locals 1
    .param p0, "eqPreset"    # I

    .prologue
    .line 811
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 812
    const/4 p0, 0x0

    .line 816
    :goto_0
    return p0

    .line 814
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private translateGaindBToY([FF)F
    .locals 18
    .param p1, "gainval"    # [F
    .param p2, "freq"    # F

    .prologue
    .line 786
    const/4 v12, 0x0

    .line 787
    .local v12, "value":F
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v15, :cond_1

    .line 788
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 789
    .local v2, "ba1":D
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 790
    .local v4, "ba2":D
    cmpl-double v15, v2, v4

    if-eqz v15, :cond_0

    .line 791
    double-to-int v15, v2

    aget v10, p1, v15

    .line 792
    .local v10, "val1":F
    double-to-int v15, v4

    aget v11, p1, v15

    .line 793
    .local v11, "val2":F
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-float v7, v0

    .line 794
    .local v7, "inc":F
    sub-float v15, v11, v10

    mul-float/2addr v15, v7

    add-float v12, v15, v10

    .line 801
    .end local v2    # "ba1":D
    .end local v4    # "ba2":D
    .end local v7    # "inc":F
    .end local v10    # "val1":F
    .end local v11    # "val2":F
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->getVerticalThumbPadding()I

    move-result v15

    int-to-float v14, v15

    .line 802
    .local v14, "verticalThumbPadding":F
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->getHeight()I

    move-result v15

    int-to-float v6, v15

    .line 803
    .local v6, "height":F
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v15, v14

    sub-float v8, v6, v15

    .line 804
    .local v8, "paddedHeight":F
    const/high16 v15, -0x3ec00000    # -12.0f

    sub-float v13, v12, v15

    .line 805
    .local v13, "valueAbs":F
    mul-float v15, v13, v8

    const/high16 v16, 0x42400000    # 48.0f

    div-float v9, v15, v16

    .line 807
    .local v9, "paddedY":F
    sub-float v15, v6, v14

    sub-float/2addr v15, v9

    return v15

    .line 796
    .end local v6    # "height":F
    .end local v8    # "paddedHeight":F
    .end local v9    # "paddedY":F
    .end local v13    # "valueAbs":F
    .end local v14    # "verticalThumbPadding":F
    .restart local v2    # "ba1":D
    .restart local v4    # "ba2":D
    :cond_0
    move/from16 v0, p2

    float-to-int v15, v0

    aget v12, p1, v15

    goto :goto_0

    .line 799
    .end local v2    # "ba1":D
    .end local v4    # "ba2":D
    :cond_1
    move/from16 v0, p2

    float-to-int v15, v0

    aget v12, p1, v15

    goto :goto_0
.end method

.method private translateYtoGaindB(F)F
    .locals 8
    .param p1, "y"    # F

    .prologue
    const/high16 v7, -0x3ec00000    # -12.0f

    .line 777
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->getVerticalThumbPadding()I

    move-result v4

    .line 778
    .local v4, "verticalThumbPadding":I
    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mViewHeight:I

    .line 779
    .local v0, "height":I
    mul-int/lit8 v5, v4, 0x2

    sub-int v1, v0, v5

    .line 780
    .local v1, "paddedHeight":I
    sub-int v5, v0, v4

    int-to-float v5, v5

    sub-float/2addr v5, p1

    const/high16 v6, 0x42400000    # 48.0f

    mul-float/2addr v5, v6

    int-to-float v6, v1

    div-float v3, v5, v6

    .line 781
    .local v3, "valueAbs":F
    const/high16 v5, 0x42100000    # 36.0f

    add-float v6, v3, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 782
    .local v2, "value":F
    return v2
.end method

.method private updateEqUserGainsInEngine()V
    .locals 17

    .prologue
    .line 418
    const-string v13, "GraphicEqualizerPainter"

    const-string v14, "GraphicEqualizerPainter.updateEqUserGainsInEngine"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    invoke-interface {v13}, Lcom/atmos/daxappUI/IDsActivityCommon;->useDsApiOnUiEvent()Z

    move-result v13

    if-nez v13, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v13}, Lcom/atmos/daxappUI/MainActivity;->getConfiguration()Lcom/atmos/daxappCoreUI/Configuration;

    move-result-object v3

    .line 425
    .local v3, "conf":Lcom/atmos/daxappCoreUI/Configuration;
    if-eqz v3, :cond_0

    .line 430
    sget-object v14, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/atmos/daxappUI/MainActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v14, v13, v15}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getGeqOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)Z

    move-result v7

    .line 434
    .local v7, "isGeqOn":Z
    const/4 v4, 0x0

    .line 436
    .local v4, "counter":I
    invoke-virtual {v3}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v10

    .line 437
    .local v10, "minEditGain":F
    const/high16 v8, 0x42100000    # 36.0f

    .line 439
    .local v8, "maxVisibleGain":F
    invoke-virtual {v3}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v11

    .line 440
    .local v11, "minEditGain_DS2":I
    sget v9, Lcom/atmos/daxappCoreUI/Constants;->MAX_VISIBLE_GAIN_DS2:I

    .line 442
    .local v9, "maxVisibleGain_DS2":I
    const/4 v2, 0x0

    .line 444
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    iget-boolean v12, v13, Lcom/atmos/daxappUI/GraphicVisualiser;->mSuspended:Z

    .line 446
    .local v12, "suspended":Z
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    const/16 v13, 0x14

    if-ge v1, v13, :cond_7

    .line 447
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmoothOld:[F

    aget v14, v14, v1

    sub-float v5, v13, v14

    .line 448
    .local v5, "diff":F
    if-nez v2, :cond_2

    .line 449
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-eqz v13, :cond_4

    const/4 v2, 0x1

    .line 452
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_3

    if-nez v7, :cond_3

    .line 453
    const/4 v7, 0x1

    .line 454
    const-string v13, "GraphicEqualizerPainter"

    const-string v14, "GraphicEqualizerPainter.setGeqOn true"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object v14, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/atmos/daxappUI/MainActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setGeqOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    cmpg-float v13, v13, v10

    if-gez v13, :cond_5

    .line 458
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    aput v11, v13, v1

    .line 465
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 459
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v13, v13, v1

    const/high16 v14, 0x42100000    # 36.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    aput v9, v13, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 468
    .end local v5    # "diff":F
    :catch_0
    move-exception v6

    .line 469
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 462
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "diff":F
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v14, v14, v1

    float-to-int v14, v14

    sget v15, Lcom/atmos/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v14, v15

    aput v14, v13, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 473
    .end local v5    # "diff":F
    :cond_7
    if-eqz v12, :cond_8

    if-eqz v2, :cond_8

    .line 474
    const-string v13, "GraphicEqualizerPainter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mGainsUi: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsUi:[F

    invoke-static {v15}, Lcom/atmos/daxappCoreUI/Tools;->floatArrayToString([F)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/atmos/daxappUI/GraphicVisualiser;->repaint(Z)V

    .line 478
    :cond_8
    if-eqz v2, :cond_9

    .line 479
    sget-object v14, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v13, Lcom/atmos/daxappUI/MainActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_1:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setGraphicEqualizerBandGains(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;[I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 484
    :cond_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserBandsUpdated:I

    .line 489
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    if-eqz v13, :cond_0

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mListener:Lcom/atmos/daxappUI/IEqualizerChangeListener;

    if-eqz v13, :cond_a

    .line 492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mListener:Lcom/atmos/daxappUI/IEqualizerChangeListener;

    invoke-interface {v13}, Lcom/atmos/daxappUI/IEqualizerChangeListener;->onEqualizerEditStart()V

    .line 494
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    goto/16 :goto_0
.end method

.method private updateGeqOnInDs()V
    .locals 7

    .prologue
    .line 1004
    const-string v3, "GraphicEqualizerPainter"

    const-string v4, "GraphicEqualizerPainter.updateGeqOnInDs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const/4 v2, 0x0

    .line 1007
    .local v2, "geqOn":Z
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    .line 1008
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 1009
    const/4 v2, 0x1

    .line 1011
    :cond_0
    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_2:[I

    iget-object v4, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v4, v4, v0

    float-to-int v4, v4

    sget v5, Lcom/atmos/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shl-int/2addr v4, v5

    aput v4, v3, v0

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    :try_start_0
    sget-object v4, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v3, Lcom/atmos/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v4, v3, v5, v2}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setGeqOn(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;Z)Z

    .line 1018
    sget-object v4, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v3, Lcom/atmos/daxappUI/MainActivity;

    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    iget-object v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->tmp_userGain_2:[I

    invoke-virtual {v4, v3, v5, v6}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setGraphicEqualizerBandGains(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_1
    return-void

    .line 1019
    :catch_0
    move-exception v1

    .line 1020
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mWidth:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 848
    invoke-direct {p0, v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    .line 849
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    invoke-virtual {v0, v1}, Lcom/atmos/daxappUI/GraphicVisualiser;->repaint(Z)V

    .line 850
    return-void
.end method

.method public isAnimating()Z
    .locals 3

    .prologue
    .line 1036
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1037
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->isAnimating(J)Z

    move-result v2

    return v2
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    if-nez v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 527
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    iget-boolean v2, v2, Lcom/atmos/daxappUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    .line 531
    .local v15, "gainsPaint":[F
    :goto_1
    const/16 v7, 0xff

    .line 535
    .local v7, "alpha":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    cmp-long v2, v24, v2

    if-gez v2, :cond_a

    .line 536
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mShowAnimEndTimestamp:J

    const-wide/16 v4, 0xfa

    sub-long/2addr v2, v4

    sub-long v10, v24, v2

    .line 537
    .local v10, "delay":J
    const-wide/16 v2, 0xff

    mul-long/2addr v2, v10

    const-wide/16 v4, 0xfa

    div-long/2addr v2, v4

    long-to-int v7, v2

    .line 542
    .end local v10    # "delay":J
    :cond_3
    :goto_2
    if-gez v7, :cond_b

    .line 543
    const/4 v7, 0x0

    .line 547
    :cond_4
    :goto_3
    const/16 v2, 0xff

    if-ge v7, v2, :cond_c

    .line 548
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHeight:I

    int-to-float v6, v2

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 556
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->getWidth()I

    move-result v23

    .line 558
    .local v23, "width":I
    const/16 v22, 0x14

    .line 560
    .local v22, "nodes":I
    const/16 v17, 0x0

    .line 561
    .local v17, "initialI":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 563
    .local v18, "initialStep":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 564
    const/16 v17, 0x0

    .line 565
    const/high16 v18, 0x40980000    # 4.75f

    .line 568
    :cond_6
    div-int/lit8 v27, v23, 0x28

    .line 569
    .local v27, "x0":I
    move/from16 v16, v17

    .local v16, "i":F
    :goto_4
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, v16, v2

    if-gez v2, :cond_11

    .line 570
    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float v3, v3, v16

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v26, v0

    .line 571
    .local v26, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 579
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    .line 580
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    .line 594
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v9, :cond_8

    .line 595
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 596
    .local v14, "dw":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 598
    .local v12, "dh":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 600
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v28

    .line 601
    .local v28, "yThumb":F
    div-int/lit8 v2, v14, 0x2

    sub-int v2, v26, v2

    int-to-float v2, v2

    div-int/lit8 v3, v12, 0x2

    int-to-float v3, v3

    sub-float v3, v28, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 603
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 569
    .end local v12    # "dh":I
    .end local v14    # "dw":I
    .end local v28    # "yThumb":F
    :cond_8
    add-float v16, v16, v18

    goto/16 :goto_4

    .line 527
    .end local v7    # "alpha":I
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v15    # "gainsPaint":[F
    .end local v16    # "i":F
    .end local v17    # "initialI":F
    .end local v18    # "initialStep":F
    .end local v22    # "nodes":I
    .end local v23    # "width":I
    .end local v26    # "x":I
    .end local v27    # "x0":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsUi:[F

    goto/16 :goto_1

    .line 538
    .restart local v7    # "alpha":I
    .restart local v15    # "gainsPaint":[F
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v2, v24, v2

    if-gez v2, :cond_3

    .line 539
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    sub-long v20, v2, v24

    .line 540
    .local v20, "left":J
    const-wide/16 v2, 0xff

    mul-long v2, v2, v20

    const-wide/16 v4, 0xfa

    div-long/2addr v2, v4

    long-to-int v7, v2

    goto/16 :goto_2

    .line 544
    .end local v20    # "left":J
    :cond_b
    const/16 v2, 0xff

    if-le v7, v2, :cond_4

    .line 545
    const/16 v7, 0xff

    goto/16 :goto_3

    .line 549
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    cmp-long v2, v24, v2

    if-lez v2, :cond_5

    .line 550
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHideAnimEndTimestamp:J

    .line 551
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    goto/16 :goto_0

    .line 582
    .restart local v16    # "i":F
    .restart local v17    # "initialI":F
    .restart local v18    # "initialStep":F
    .restart local v22    # "nodes":I
    .restart local v23    # "width":I
    .restart local v26    # "x":I
    .restart local v27    # "x0":I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    int-to-float v2, v2

    sub-float v2, v16, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v13, v2

    .line 583
    .local v13, "dist":I
    if-nez v13, :cond_e

    .line 584
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 585
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_e
    const/4 v2, 0x1

    if-ne v13, v2, :cond_f

    .line 586
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 587
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_f
    const/4 v2, 0x2

    if-ne v13, v2, :cond_10

    .line 588
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 590
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    .restart local v9    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 613
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v13    # "dist":I
    .end local v26    # "x":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-eqz v2, :cond_13

    .line 614
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 615
    .local v19, "mPath":Landroid/graphics/Path;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v28

    .line 616
    .restart local v28    # "yThumb":F
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 618
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_6
    const/16 v2, 0x14

    move/from16 v0, v16

    if-ge v0, v2, :cond_12

    .line 619
    mul-int v2, v16, v23

    div-int/lit8 v2, v2, 0x14

    add-int v26, v27, v2

    .line 620
    .restart local v26    # "x":I
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->translateGaindBToY([FF)F

    move-result v28

    .line 621
    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 630
    .end local v26    # "x":I
    :cond_12
    add-int v2, v27, v23

    int-to-float v2, v2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPaintCurve1:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 641
    .end local v16    # "i":I
    .end local v19    # "mPath":Landroid/graphics/Path;
    .end local v28    # "yThumb":F
    :cond_13
    const/16 v2, 0xff

    if-ge v7, v2, :cond_0

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .param p5, "viewH"    # I

    .prologue
    const/4 v3, 0x0

    .line 270
    iput p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mWidth:I

    .line 271
    iput p2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mHeight:I

    .line 272
    iput p5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mViewHeight:I

    .line 274
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 284
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mSliderThumbBright3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 708
    const-string v6, "GraphicEqualizerPainter"

    const-string v7, "GraphicEqualizerPainter.onTouchEvent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 714
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 715
    iput-boolean v12, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mNotifyListener:Z

    .line 716
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->preventHiding()V

    .line 717
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->isAnimatedVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisible:Z

    if-nez v6, :cond_1

    .line 718
    :cond_0
    invoke-direct {p0, v12}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->animateVisibility(Z)V

    .line 719
    iget-object v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 724
    :cond_1
    iget v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    iput v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    .line 725
    iget v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditGain:F

    iput v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPrevEditGain:F

    .line 727
    const/4 v6, 0x2

    if-eq v6, v0, :cond_2

    if-nez v0, :cond_6

    .line 728
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 729
    .local v1, "eX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 731
    .local v2, "eY":F
    cmpg-float v6, v1, v8

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gez v6, :cond_3

    cmpg-float v6, v2, v8

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mViewHeight:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_4

    .line 765
    .end local v1    # "eX":F
    .end local v2    # "eY":F
    :cond_3
    :goto_0
    return v12

    .line 737
    .restart local v1    # "eX":F
    .restart local v2    # "eY":F
    :cond_4
    const/4 v6, 0x0

    const/16 v7, 0x13

    const/high16 v8, 0x41a00000    # 20.0f

    mul-float/2addr v8, v1

    iget v9, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 739
    .local v5, "iSetCenter":I
    iget-boolean v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mMobileLayout:Z

    if-ne v6, v12, :cond_5

    .line 740
    const/high16 v6, 0x40980000    # 4.75f

    add-int/lit8 v7, v5, 0x1

    int-to-double v8, v7

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-float v7, v8

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 741
    const/16 v6, 0x14

    if-lt v5, v6, :cond_5

    .line 742
    const/16 v5, 0x13

    .line 745
    :cond_5
    iput v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    .line 748
    invoke-direct {p0, v2}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->translateYtoGaindB(F)F

    move-result v4

    .line 749
    .local v4, "fTrackdB":F
    const/high16 v6, -0x3ec00000    # -12.0f

    const/high16 v7, 0x42100000    # 36.0f

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 750
    .local v3, "fSetdBdraw":F
    iput v3, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditGain:F

    .line 754
    iget-object v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v6, v5, v3}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->add(IF)V

    .line 755
    iget-object v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mVisualizer:Lcom/atmos/daxappUI/GraphicVisualiser;

    iget-boolean v6, v6, Lcom/atmos/daxappUI/GraphicVisualiser;->mSuspended:Z

    if-eqz v6, :cond_3

    .line 756
    iget-object v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 758
    .end local v1    # "eX":F
    .end local v2    # "eY":F
    .end local v3    # "fSetdBdraw":F
    .end local v4    # "fTrackdB":F
    .end local v5    # "iSetCenter":I
    :cond_6
    if-ne v12, v0, :cond_3

    .line 759
    iput v9, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEditBand:I

    .line 760
    iput v9, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mPrevEditBand:I

    .line 761
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->delayHide()V

    .line 762
    iput-boolean v12, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mForceSmoothenCurve:Z

    .line 763
    iget-object v6, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method readUserGainsFromEngine()V
    .locals 8

    .prologue
    .line 914
    const-string v5, "GraphicEqualizerPainter"

    const-string v6, "GraphicEqualizerPainter.readUserGainsFromEngine"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v0, 0x0

    .line 917
    .local v0, "changed":Z
    :try_start_0
    sget-object v6, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v5, Lcom/atmos/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6, v5, v7}, Lcom/atmos/daxappCoreUI/DsClientSettings;->getGraphicEqualizerBandGains(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;)[I

    move-result-object v4

    .line 919
    .local v4, "userGain":[I
    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v5, Lcom/atmos/daxappUI/MainActivity;

    invoke-virtual {v5}, Lcom/atmos/daxappUI/MainActivity;->getConfiguration()Lcom/atmos/daxappCoreUI/Configuration;

    move-result-object v1

    .line 920
    .local v1, "conf":Lcom/atmos/daxappCoreUI/Configuration;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x14

    if-ge v3, v5, :cond_3

    .line 921
    aget v5, v4, v3

    invoke-virtual {v1}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 922
    invoke-virtual {v1}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain_DS2()I

    move-result v5

    aput v5, v4, v3

    .line 923
    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v1}, Lcom/atmos/daxappCoreUI/Configuration;->getMaxEditGain()F

    move-result v6

    aput v6, v5, v3

    .line 924
    const/4 v0, 0x1

    .line 920
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    :cond_0
    aget v5, v4, v3

    invoke-virtual {v1}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 926
    invoke-virtual {v1}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain_DS2()I

    move-result v5

    aput v5, v4, v3

    .line 927
    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    invoke-virtual {v1}, Lcom/atmos/daxappCoreUI/Configuration;->getMinEditGain()F

    move-result v6

    aput v6, v5, v3

    .line 928
    const/4 v0, 0x1

    goto :goto_1

    .line 930
    :cond_1
    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aget v6, v4, v3

    sget v7, Lcom/atmos/daxappCoreUI/Constants;->GEQ_GAIN_RIGHT_SHIFT_COUNT:I

    shr-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 939
    .end local v1    # "conf":Lcom/atmos/daxappCoreUI/Configuration;
    .end local v3    # "i":I
    .end local v4    # "userGain":[I
    :catch_0
    move-exception v2

    .line 940
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 942
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 933
    .restart local v1    # "conf":Lcom/atmos/daxappCoreUI/Configuration;
    .restart local v3    # "i":I
    .restart local v4    # "userGain":[I
    :cond_3
    if-eqz v0, :cond_4

    .line 934
    :try_start_1
    sget-object v6, Lcom/atmos/daxappCoreUI/DsClientSettings;->INSTANCE:Lcom/atmos/daxappCoreUI/DsClientSettings;

    iget-object v5, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    check-cast v5, Lcom/atmos/daxappUI/MainActivity;

    iget-object v7, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    invoke-virtual {v6, v5, v7, v4}, Lcom/atmos/daxappCoreUI/DsClientSettings;->setGraphicEqualizerBandGains(Lcom/atmos/daxappUI/MainActivity;Lcom/atmos/api/DsGlobalEx;[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 938
    :cond_4
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->calculateTempGainsFromSmoothed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public resetUserGains(Z)V
    .locals 6
    .param p1, "updateInDs"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 982
    const-string v1, "GraphicEqualizerPainter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GraphicEqualizerPainter.resetUserGains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mProfile:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    if-ne v1, v5, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    const/4 v0, 0x0

    .local v0, "b":I
    :goto_1
    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 988
    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mUserGainsTemp:[F

    aput v4, v1, v0

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 991
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 992
    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mGainsSmooth:[F

    aput v4, v1, v0

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 995
    :cond_3
    iget-object v1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEventQueue:Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;

    invoke-virtual {v1}, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->reset()V

    .line 996
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->onIEqPresetChanged()V

    .line 998
    if-eqz p1, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->updateGeqOnInDs()V

    goto :goto_0
.end method

.method public setActivity(Lcom/atmos/daxappUI/IDsActivityCommon;)V
    .locals 0
    .param p1, "activity"    # Lcom/atmos/daxappUI/IDsActivityCommon;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mActivity:Lcom/atmos/daxappUI/IDsActivityCommon;

    .line 841
    return-void
.end method

.method public setDsClient(Lcom/atmos/api/DsGlobalEx;)V
    .locals 0
    .param p1, "dsc"    # Lcom/atmos/api/DsGlobalEx;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mDsClient:Lcom/atmos/api/DsGlobalEx;

    .line 845
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEnabled:Z

    .line 654
    return-void
.end method

.method public setEqualizerListener(Lcom/atmos/daxappUI/IEqualizerChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/atmos/daxappUI/IEqualizerChangeListener;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mListener:Lcom/atmos/daxappUI/IEqualizerChangeListener;

    .line 837
    return-void
.end method

.method public switchPreset(IIZ)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "eqPreset"    # I
    .param p3, "updateInDs"    # Z

    .prologue
    .line 820
    const-string v0, "GraphicEqualizerPainter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GraphicEqualizerPainter.switchPreset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {p2}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->translateEqPresetIndex(I)I

    move-result p2

    .line 822
    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mProfile:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    if-eq v0, p2, :cond_2

    .line 823
    :cond_0
    const-string v0, "GraphicEqualizerPainter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUserGains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iput p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mProfile:I

    .line 825
    iput p2, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mEqPreset:I

    .line 826
    invoke-virtual {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->readUserGainsFromEngine()V

    .line 827
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->onIEqPresetChanged()V

    .line 828
    if-eqz p3, :cond_1

    .line 829
    invoke-direct {p0}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->updateGeqOnInDs()V

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->mRecalcPositions:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 833
    :cond_2
    return-void
.end method
