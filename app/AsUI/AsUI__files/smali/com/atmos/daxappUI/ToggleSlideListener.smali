.class public Lcom/atmos/daxappUI/ToggleSlideListener;
.super Ljava/lang/Object;
.source "ToggleSlideListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDetected:Z

.field private mHalfWidth:F

.field private mMinDist:F

.field private mRight:Z

.field private mStartX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onDetected(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mDetected:Z

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 82
    return-void
.end method

.method private testXonOtherHalf(F)Z
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    iget-boolean v3, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mRight:Z

    iget v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mHalfWidth:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-ne v3, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 34
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 35
    iput-boolean v4, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mDetected:Z

    .line 36
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mHalfWidth:F

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iput v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mMinDist:F

    .line 39
    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 41
    check-cast v2, Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mRight:Z

    .line 43
    :cond_0
    iget v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    invoke-direct {p0, v2}, Lcom/atmos/daxappUI/ToggleSlideListener;->testXonOtherHalf(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/ToggleSlideListener;->onDetected(Landroid/view/View;)V

    .line 46
    :cond_1
    iget-boolean v3, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mDetected:Z

    .line 76
    :cond_2
    :goto_1
    return v3

    :cond_3
    move v2, v4

    .line 41
    goto :goto_0

    .line 49
    :cond_4
    iget-boolean v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mDetected:Z

    if-nez v2, :cond_2

    .line 53
    const/4 v2, 0x2

    if-ne v2, v0, :cond_6

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 55
    .local v1, "x":F
    iget-boolean v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mRight:Z

    if-eqz v2, :cond_7

    .line 57
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    .line 58
    iput v1, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    .line 67
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lcom/atmos/daxappUI/ToggleSlideListener;->testXonOtherHalf(F)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 69
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/ToggleSlideListener;->onDetected(Landroid/view/View;)V

    .line 76
    .end local v1    # "x":F
    :cond_6
    :goto_3
    iget-boolean v3, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mDetected:Z

    goto :goto_1

    .line 62
    .restart local v1    # "x":F
    :cond_7
    iget v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5

    .line 63
    iput v1, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    goto :goto_2

    .line 70
    :cond_8
    iget-boolean v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mRight:Z

    iget v5, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_9

    :goto_4
    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mStartX:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/atmos/daxappUI/ToggleSlideListener;->mMinDist:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 72
    invoke-direct {p0, p1}, Lcom/atmos/daxappUI/ToggleSlideListener;->onDetected(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    move v3, v4

    .line 70
    goto :goto_4
.end method
