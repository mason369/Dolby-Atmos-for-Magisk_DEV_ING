.class Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;
.super Ljava/lang/Object;
.source "ExploreDolbyAtmos.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atmos/daxappUI/ExploreDolbyAtmos;->onCreate(Landroid/os/Bundle;)V
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
    .line 375
    iput-object p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0004

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 379
    .local v8, "downimg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0005

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 380
    .local v6, "btncontrolImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0006

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 382
    .local v15, "exploreatmoslogo":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v12, v0

    .line 383
    .local v12, "exploreAtmosMaxDistance":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000d

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 384
    .local v10, "experienceDolby":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v11, v0

    .line 385
    .local v11, "experienceDolbyMaxDistance":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c0009

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 386
    .local v22, "txtupremark":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000e

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 387
    .local v21, "txtdownremark":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000a

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 388
    .local v14, "exploreatmoslearnmore":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const v24, 0x7f0c000f

    invoke-virtual/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 391
    .local v13, "exploreatmosaccess":Landroid/widget/LinearLayout;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 723
    :cond_0
    :goto_0
    const/16 v23, 0x1

    return v23

    .line 393
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1702(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1802(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v9, v23, v24

    .line 402
    .local v9, "dy":I
    if-gez v9, :cond_9

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 405
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 406
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 407
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 408
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 418
    :goto_1
    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 419
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 429
    :goto_2
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 430
    .local v7, "childNum":Ljava/math/BigDecimal;
    new-instance v18, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 431
    .local v18, "parentNum":Ljava/math/BigDecimal;
    const/16 v23, 0xa

    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->floatValue()F

    move-result v19

    .line 435
    .local v19, "percent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 436
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gtz v23, :cond_4

    if-gez v9, :cond_4

    .line 437
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 438
    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 439
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 440
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 461
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1702(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    .line 412
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v18    # "parentNum":Ljava/math/BigDecimal;
    .end local v19    # "percent":F
    :cond_2
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    .line 413
    .local v16, "halfDistance":I
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    add-int v24, v24, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v12

    add-int v26, v26, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_1

    .line 423
    .end local v16    # "halfDistance":I
    :cond_3
    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    .line 424
    .restart local v16    # "halfDistance":I
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    add-int v24, v24, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v11

    add-int v26, v26, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 441
    .end local v16    # "halfDistance":I
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    .restart local v18    # "parentNum":Ljava/math/BigDecimal;
    .restart local v19    # "percent":F
    :cond_4
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_1

    if-gez v9, :cond_1

    .line 442
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 443
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 444
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 445
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    .line 448
    :cond_5
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_6

    if-gez v9, :cond_6

    .line 449
    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 450
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 451
    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 452
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    .line 453
    :cond_6
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_1

    if-gez v9, :cond_1

    .line 454
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 455
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 456
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 457
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    .line 463
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v18    # "parentNum":Ljava/math/BigDecimal;
    .end local v19    # "percent":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v17

    .local v17, "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    sub-int v24, v17, v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 464
    add-int/lit8 v17, v17, -0x1

    goto :goto_4

    .line 468
    :cond_8
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 469
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    sub-int v26, v26, v27

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v29

    sub-int v28, v28, v29

    sub-int v27, v27, v28

    sub-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 474
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v12

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    sub-int v26, v26, v12

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 479
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v11

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    sub-int v26, v26, v11

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 484
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 485
    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 486
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 487
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1702(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    .line 494
    .end local v17    # "i":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_10

    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 496
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v8}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 497
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v24

    add-int v24, v24, v9

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v26

    add-int v26, v26, v9

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 500
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_b

    .line 501
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 512
    :goto_5
    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v9

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_c

    .line 513
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v24

    int-to-double v0, v9

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    invoke-virtual {v10}, Landroid/widget/TextView;->getBottom()I

    move-result v26

    int-to-double v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v30

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->rint(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 524
    :goto_6
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 525
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    new-instance v18, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 526
    .restart local v18    # "parentNum":Ljava/math/BigDecimal;
    const/16 v23, 0xa

    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->floatValue()F

    move-result v19

    .line 530
    .restart local v19    # "percent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 531
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gtz v23, :cond_d

    if-lez v9, :cond_d

    .line 532
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 533
    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 534
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 535
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 557
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1702(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    .line 506
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v18    # "parentNum":Ljava/math/BigDecimal;
    .end local v19    # "percent":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTop()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    .line 507
    .restart local v16    # "halfDistance":I
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v16

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_5

    .line 518
    .end local v16    # "halfDistance":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v24

    sub-int v23, v23, v24

    div-int/lit8 v16, v23, 0x2

    .line 519
    .restart local v16    # "halfDistance":I
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v24, v24, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v26, v26, v16

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_6

    .line 536
    .end local v16    # "halfDistance":I
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    .restart local v18    # "parentNum":Ljava/math/BigDecimal;
    .restart local v19    # "percent":F
    :cond_d
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_a

    if-lez v9, :cond_a

    .line 537
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 538
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 539
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 540
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_7

    .line 543
    :cond_e
    const/16 v23, 0x0

    cmpg-float v23, v19, v23

    if-gez v23, :cond_f

    if-lez v9, :cond_f

    .line 544
    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 545
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 546
    const/high16 v23, 0x3f800000    # 1.0f

    add-float v23, v23, v19

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 547
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_7

    .line 548
    :cond_f
    const/16 v23, 0x0

    cmpl-float v23, v19, v23

    if-lez v23, :cond_a

    if-lez v9, :cond_a

    .line 549
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 550
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 551
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 552
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_7

    .line 559
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v18    # "parentNum":Ljava/math/BigDecimal;
    .end local v19    # "percent":F
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v23, v23, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_0

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 561
    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v8}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 562
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v25

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 565
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 569
    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    invoke-virtual {v10}, Landroid/widget/TextView;->getRight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 573
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setAlpha(F)V

    .line 574
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 575
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 576
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1702(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    .line 585
    .end local v9    # "dy":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v20, v23, v24

    .line 587
    .local v20, "touchUpDy":I
    if-lez v20, :cond_16

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    add-int v20, v23, v24

    .line 603
    :goto_8
    if-eqz v20, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    if-eqz v23, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 604
    :cond_11
    const/16 v20, 0x0

    .line 607
    :cond_12
    new-instance v7, Ljava/math/BigDecimal;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 608
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    new-instance v18, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 609
    .restart local v18    # "parentNum":Ljava/math/BigDecimal;
    const/16 v23, 0xa

    const/16 v24, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->floatValue()F

    move-result v19

    .line 610
    .restart local v19    # "percent":F
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v23, v24, v26

    if-lez v23, :cond_13

    .line 611
    const/high16 v19, 0x3f800000    # 1.0f

    .line 613
    :cond_13
    const/high16 v23, -0x40800000    # -1.0f

    cmpg-float v23, v19, v23

    if-gez v23, :cond_14

    .line 614
    const/high16 v19, -0x40800000    # -1.0f

    .line 616
    :cond_14
    if-lez v20, :cond_1a

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 591
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v18    # "parentNum":Ljava/math/BigDecimal;
    .end local v19    # "percent":F
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    rsub-int/lit8 v20, v23, 0x0

    goto/16 :goto_8

    .line 594
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v24

    sub-int v20, v23, v24

    goto/16 :goto_8

    .line 597
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    add-int/lit8 v20, v23, 0x0

    goto/16 :goto_8

    .line 630
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    .restart local v18    # "parentNum":Ljava/math/BigDecimal;
    .restart local v19    # "percent":F
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 641
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 651
    :cond_1a
    if-nez v20, :cond_1d

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    if-nez v23, :cond_1b

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 666
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 677
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$102(Lcom/atmos/daxappUI/ExploreDolbyAtmos;Z)Z

    goto/16 :goto_0

    .line 684
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v23

    if-nez v23, :cond_1f

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_1e

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 697
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 708
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$4;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    invoke-static/range {v23 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
