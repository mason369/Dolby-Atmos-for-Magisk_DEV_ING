.class Lcom/atmos/daxappUI/ExploreDolbyAtmos$30;
.super Ljava/lang/Object;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlTxtDownRemark(FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;


# direct methods
.method constructor <init>(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)V
    .locals 0

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$30;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$30;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    const v2, 0x7f0c000e

    invoke-virtual {v1, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1662
    .local v0, "txtdownremark":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1663
    return-void
.end method
