.class Lcom/atmos/daxappUI/ExploreDolbyAtmos$18;
.super Ljava/lang/Object;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/ExploreDolbyAtmos;->controlExploreAtmosLogo(FII)V
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
    .line 1395
    iput-object p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$18;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1399
    iget-object v1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$18;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1400
    .local v0, "exploreatmoslogo":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1402
    return-void
.end method
