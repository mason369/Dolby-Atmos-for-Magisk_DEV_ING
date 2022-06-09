.class Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;
.super Ljava/lang/Object;
.source "GraphicEqualizerPainter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/daxappUI/GraphicEqualizerPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EQTouchQueue"
.end annotation


# instance fields
.field private final mBands:[I

.field private final mGains:[F

.field private mSize:I

.field final synthetic this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;


# direct methods
.method public constructor <init>(Lcom/atmos/daxappUI/GraphicEqualizerPainter;I)V
    .locals 1
    .param p2, "maxSize"    # I

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    const/4 v0, 0x0

    iput v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    .line 1073
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    .line 1074
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    .line 1075
    return-void
.end method


# virtual methods
.method public declared-synchronized add(IF)V
    .locals 18
    .param p1, "band"    # I
    .param p2, "gain"    # F

    .prologue
    .line 1086
    monitor-enter p0

    :try_start_0
    const-string v13, "GraphicEqualizerPainter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EQTouchQueue.add  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/atmos/daxappCoreUI/Tools;->mDecFormat:Ljava/text/DecimalFormat;

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  size before: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  mPrevEditBand: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v15}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$300(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$300(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$300(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)I

    move-result v13

    sub-int v9, p1, v13

    .local v9, "n":I
    const/4 v13, -0x1

    if-lt v9, v13, :cond_0

    const/4 v13, 0x1

    if-le v9, v13, :cond_7

    .line 1095
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$300(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)I

    move-result v14

    if-gez v9, :cond_2

    const/4 v13, -0x1

    :goto_0
    add-int/2addr v13, v14

    int-to-float v4, v13

    .line 1096
    .local v4, "fromBand":F
    if-gez v9, :cond_3

    const/4 v13, 0x1

    :goto_1
    add-int v13, v13, p1

    int-to-float v10, v13

    .line 1097
    .local v10, "toBand":F
    if-gez v9, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    .line 1098
    .local v6, "inc":F
    :goto_2
    if-gez v9, :cond_5

    .line 1099
    move/from16 v0, p1

    int-to-float v8, v0

    .line 1100
    .local v8, "minBand":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$300(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)I

    move-result v13

    int-to-float v7, v13

    .line 1101
    .local v7, "maxBand":F
    move/from16 v5, p2

    .line 1102
    .local v5, "fromValue":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$400(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)F

    move-result v13

    sub-float v12, v13, p2

    .line 1110
    .local v12, "valueSpan":F
    :goto_3
    sub-float v3, v7, v8

    .line 1111
    .local v3, "bandSpan":F
    move v2, v4

    .local v2, "b":F
    :goto_4
    if-gez v9, :cond_6

    cmpl-float v13, v2, v10

    if-ltz v13, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    array-length v14, v14

    if-ge v13, v14, :cond_7

    .line 1112
    sub-float v13, v2, v8

    mul-float/2addr v13, v12

    div-float/2addr v13, v3

    add-float v11, v5, v13

    .line 1113
    .local v11, "val":F
    const-string v13, "GraphicEqualizerPainter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EQTouchQueue adding missing  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    float-to-int v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/atmos/daxappCoreUI/Tools;->mDecFormat:Ljava/text/DecimalFormat;

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    float-to-int v15, v2

    aput v15, v13, v14

    .line 1115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput v11, v13, v14

    .line 1116
    move-object/from16 v0, p0

    iget v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    .line 1111
    add-float/2addr v2, v6

    goto :goto_4

    .line 1095
    .end local v2    # "b":F
    .end local v3    # "bandSpan":F
    .end local v4    # "fromBand":F
    .end local v5    # "fromValue":F
    .end local v6    # "inc":F
    .end local v7    # "maxBand":F
    .end local v8    # "minBand":F
    .end local v10    # "toBand":F
    .end local v11    # "val":F
    .end local v12    # "valueSpan":F
    :cond_2
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1096
    .restart local v4    # "fromBand":F
    :cond_3
    const/4 v13, -0x1

    goto/16 :goto_1

    .line 1097
    .restart local v10    # "toBand":F
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 1104
    .restart local v6    # "inc":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$300(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)I

    move-result v13

    int-to-float v8, v13

    .line 1105
    .restart local v8    # "minBand":F
    move/from16 v0, p1

    int-to-float v7, v0

    .line 1106
    .restart local v7    # "maxBand":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$400(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)F

    move-result v5

    .line 1107
    .restart local v5    # "fromValue":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->this$0:Lcom/atmos/daxappUI/GraphicEqualizerPainter;

    invoke-static {v13}, Lcom/atmos/daxappUI/GraphicEqualizerPainter;->access$400(Lcom/atmos/daxappUI/GraphicEqualizerPainter;)F

    move-result v13

    sub-float v12, p2, v13

    .restart local v12    # "valueSpan":F
    goto/16 :goto_3

    .line 1111
    .restart local v2    # "b":F
    .restart local v3    # "bandSpan":F
    :cond_6
    cmpg-float v13, v2, v10

    if-lez v13, :cond_1

    .line 1120
    .end local v2    # "b":F
    .end local v3    # "bandSpan":F
    .end local v4    # "fromBand":F
    .end local v5    # "fromValue":F
    .end local v6    # "inc":F
    .end local v7    # "maxBand":F
    .end local v8    # "minBand":F
    .end local v9    # "n":I
    .end local v10    # "toBand":F
    .end local v12    # "valueSpan":F
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    if-lez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    move/from16 v0, p1

    if-ne v13, v0, :cond_8

    .line 1121
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v14, v14, -0x1

    aput p2, v13, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :goto_5
    monitor-exit p0

    return-void

    .line 1122
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    array-length v14, v14

    if-ge v13, v14, :cond_9

    .line 1123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput p1, v13, v14

    .line 1124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    aput p2, v13, v14

    .line 1125
    move-object/from16 v0, p0

    iget v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1086
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1127
    :cond_9
    :try_start_2
    const-string v13, "GraphicEqualizerPainter"

    const-string v14, "EQTouchQueue.add buffer overflow"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method public declared-synchronized getBandAt(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mBands:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGainAt(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mGains:[F

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 1082
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    monitor-exit p0

    return-void

    .line 1082
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 1078
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/atmos/daxappUI/GraphicEqualizerPainter$EQTouchQueue;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
