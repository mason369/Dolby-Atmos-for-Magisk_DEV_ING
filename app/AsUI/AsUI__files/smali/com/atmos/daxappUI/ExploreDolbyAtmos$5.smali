.class Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;
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
    .line 728
    iput-object p1, p0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c0003

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 732
    .local v21, "upimg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c0005

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 733
    .local v6, "btncontrolImg":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c0006

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 735
    .local v14, "exploreatmoslogo":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v11, v0

    .line 736
    .local v11, "exploreAtmosMaxDistance":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c000d

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 737
    .local v9, "experienceDolby":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v10, v0

    .line 738
    .local v10, "experienceDolbyMaxDistance":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c0009

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 739
    .local v20, "txtupremark":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c000e

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 740
    .local v19, "txtdownremark":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c000a

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 741
    .local v13, "exploreatmoslearnmore":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const v23, 0x7f0c000f

    invoke-virtual/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 743
    .local v12, "exploreatmosaccess":Landroid/widget/LinearLayout;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 1063
    :cond_0
    :goto_0
    const/16 v22, 0x1

    return v22

    .line 745
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2302(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto :goto_0

    .line 750
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v8, v22, v23

    .line 757
    .local v8, "dy":I
    if-gez v8, :cond_8

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 760
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    invoke-virtual/range {v21 .. v25}, Landroid/widget/ImageView;->layout(IIII)V

    .line 761
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 763
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 764
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

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

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 775
    :goto_1
    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_3

    .line 776
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

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

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 787
    :goto_2
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 788
    .local v7, "childNum":Ljava/math/BigDecimal;
    new-instance v16, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 789
    .local v16, "parentNum":Ljava/math/BigDecimal;
    const/16 v22, 0xa

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    .line 793
    .local v17, "percent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 794
    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gtz v22, :cond_4

    if-gez v8, :cond_4

    .line 795
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 796
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 797
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 798
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 819
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    .line 769
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v16    # "parentNum":Ljava/math/BigDecimal;
    .end local v17    # "percent":F
    :cond_2
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v11

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    .line 770
    .local v15, "halfDistance":I
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v11

    add-int v23, v23, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v11

    add-int v25, v25, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_1

    .line 781
    .end local v15    # "halfDistance":I
    :cond_3
    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v10

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    .line 782
    .restart local v15    # "halfDistance":I
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v10

    add-int v23, v23, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v10

    add-int v25, v25, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 799
    .end local v15    # "halfDistance":I
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    .restart local v16    # "parentNum":Ljava/math/BigDecimal;
    .restart local v17    # "percent":F
    :cond_4
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_1

    if-gez v8, :cond_1

    .line 800
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 801
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 802
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 803
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    .line 806
    :cond_5
    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gez v22, :cond_6

    if-gez v8, :cond_6

    .line 807
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 808
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 809
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 810
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    .line 811
    :cond_6
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_1

    if-gez v8, :cond_1

    .line 812
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 813
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 814
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 815
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_3

    .line 821
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v16    # "parentNum":Ljava/math/BigDecimal;
    .end local v17    # "percent":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 823
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {v21 .. v25}, Landroid/widget/ImageView;->layout(IIII)V

    .line 824
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    sub-int v23, v23, v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v28

    sub-int v27, v27, v28

    sub-int v26, v26, v27

    sub-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 827
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v11

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    sub-int v25, v25, v11

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 831
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v10

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    sub-int v25, v25, v10

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 835
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 836
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 837
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 838
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    .line 846
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_f

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 848
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    invoke-virtual/range {v21 .. v25}, Landroid/widget/ImageView;->layout(IIII)V

    .line 849
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v23

    add-int v23, v23, v8

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v25

    add-int v25, v25, v8

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 851
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    .line 852
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

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

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 863
    :goto_4
    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v22

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->rint(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 864
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v23

    int-to-double v0, v8

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

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

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getBottom()I

    move-result v25

    int-to-double v0, v8

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)D

    move-result-wide v28

    mul-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->rint(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 875
    :goto_5
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 876
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    new-instance v16, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 877
    .restart local v16    # "parentNum":Ljava/math/BigDecimal;
    const/16 v22, 0xa

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    .line 881
    .restart local v17    # "percent":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 882
    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gtz v22, :cond_c

    if-lez v8, :cond_c

    .line 883
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 884
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 885
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 886
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 907
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    goto/16 :goto_0

    .line 857
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v16    # "parentNum":Ljava/math/BigDecimal;
    .end local v17    # "percent":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    .line 858
    .restart local v15    # "halfDistance":I
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v15

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto/16 :goto_4

    .line 869
    .end local v15    # "halfDistance":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    invoke-virtual {v9}, Landroid/widget/TextView;->getTop()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v15, v22, 0x2

    .line 870
    .restart local v15    # "halfDistance":I
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v23, v23, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    sub-int v25, v25, v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_5

    .line 887
    .end local v15    # "halfDistance":I
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    .restart local v16    # "parentNum":Ljava/math/BigDecimal;
    .restart local v17    # "percent":F
    :cond_c
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_9

    if-lez v8, :cond_9

    .line 888
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 889
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 890
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 891
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_6

    .line 894
    :cond_d
    const/16 v22, 0x0

    cmpg-float v22, v17, v22

    if-gez v22, :cond_e

    if-lez v8, :cond_e

    .line 895
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 896
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 897
    const/high16 v22, 0x3f800000    # 1.0f

    add-float v22, v22, v17

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 898
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_6

    .line 899
    :cond_e
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_9

    if-lez v8, :cond_9

    .line 900
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 901
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 902
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 903
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_6

    .line 909
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v16    # "parentNum":Ljava/math/BigDecimal;
    .end local v17    # "percent":F
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 910
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 911
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v25

    invoke-virtual/range {v21 .. v25}, Landroid/widget/ImageView;->layout(IIII)V

    .line 912
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v24

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 915
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v24

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 919
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    invoke-virtual {v9}, Landroid/widget/TextView;->getRight()I

    move-result v24

    invoke-virtual {v9}, Landroid/widget/TextView;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2202(Lcom/atmos/daxappUI/ExploreDolbyAtmos;I)I

    .line 923
    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 924
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 925
    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 926
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_0

    .line 933
    .end local v8    # "dy":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v18, v22, v23

    .line 934
    .local v18, "touchUpDy":I
    if-lez v18, :cond_13

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 936
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v18, v22, v23

    .line 949
    :goto_7
    new-instance v7, Ljava/math/BigDecimal;

    move/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 950
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    new-instance v16, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v24

    sub-int v23, v23, v24

    sub-int v22, v22, v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 951
    .restart local v16    # "parentNum":Ljava/math/BigDecimal;
    const/16 v22, 0xa

    const/16 v23, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigDecimal;->floatValue()F

    move-result v17

    .line 952
    .restart local v17    # "percent":F
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_10

    .line 953
    const/high16 v17, 0x3f800000    # 1.0f

    .line 955
    :cond_10
    const/high16 v22, -0x40800000    # -1.0f

    cmpg-float v22, v17, v22

    if-gez v22, :cond_11

    .line 956
    const/high16 v17, -0x40800000    # -1.0f

    .line 958
    :cond_11
    if-lez v18, :cond_17

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 938
    .end local v7    # "childNum":Ljava/math/BigDecimal;
    .end local v16    # "parentNum":Ljava/math/BigDecimal;
    .end local v17    # "percent":F
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v18, v22, v23

    goto/16 :goto_7

    .line 941
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v23

    sub-int v18, v22, v23

    goto/16 :goto_7

    .line 944
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    sub-int v18, v22, v23

    goto/16 :goto_7

    .line 972
    .restart local v7    # "childNum":Ljava/math/BigDecimal;
    .restart local v16    # "parentNum":Ljava/math/BigDecimal;
    .restart local v17    # "percent":F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 983
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 993
    :cond_17
    if-nez v18, :cond_1a

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v22

    if-nez v22, :cond_19

    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 1008
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 1019
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$300(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$102(Lcom/atmos/daxappUI/ExploreDolbyAtmos;Z)Z

    goto/16 :goto_0

    .line 1025
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)Z

    move-result v22

    if-nez v22, :cond_1c

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$2100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;)I

    move-result v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_1b

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 1037
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, -0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 1048
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$500(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$600(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$400(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$700(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$800(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$900(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1000(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1100(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/daxappUI/ExploreDolbyAtmos$5;->this$0:Lcom/atmos/daxappUI/ExploreDolbyAtmos;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-static/range {v22 .. v25}, Lcom/atmos/daxappUI/ExploreDolbyAtmos;->access$1200(Lcom/atmos/daxappUI/ExploreDolbyAtmos;FII)V

    goto/16 :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
