.class public Lcom/atmos/instoredemoapp/DlbApController;
.super Ljava/lang/Object;
.source "DlbApController.java"

# interfaces
.implements Lcom/atmos/api/IDsAccessEvents;
.implements Lcom/atmos/api/IDsEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/instoredemoapp/DlbApController$APMessage;
    }
.end annotation


# instance fields
.field private mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mApInfoExtractor:Lcom/atmos/instoredemoapp/DlbApInfoExtractor;

.field private mApInfoStream:Ljava/io/InputStream;

.field private mContext:Landroid/content/Context;

.field private mDsConnected:Z

.field private mDsFocus:Lcom/atmos/api/DsFocus;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/atmos/instoredemoapp/DlbApController$APMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    .line 497
    new-instance v1, Lcom/atmos/instoredemoapp/DlbApController$1;

    invoke-direct {v1, p0}, Lcom/atmos/instoredemoapp/DlbApController$1;-><init>(Lcom/atmos/instoredemoapp/DlbApController;)V

    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 62
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;

    invoke-direct {v1}, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;-><init>()V

    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/atmos/instoredemoapp/DlbApInfoExtractor;

    .line 64
    new-instance v1, Lcom/atmos/api/DsFocus;

    invoke-direct {v1}, Lcom/atmos/api/DsFocus;-><init>()V

    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    .line 67
    :try_start_0
    const-string v1, "DlbApController"

    const-string v2, "going to bind the DS service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, p0}, Lcom/atmos/api/DsFocus;->registerClient(Landroid/content/Context;Lcom/atmos/api/IDsAccessEvents;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DlbApController"

    const-string v2, "Consturction of DlbApController, bindDsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/atmos/instoredemoapp/DlbApController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbApController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/atmos/instoredemoapp/DlbApController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbApController;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private calMsgDelaytime(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/16 v12, 0x3a

    const/4 v11, 0x0

    .line 394
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 395
    .local v4, "ret":Ljava/lang/Integer;
    move-object v7, p1

    .line 398
    .local v7, "tmp":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 399
    .local v0, "colonIdx":I
    if-ne v0, v10, :cond_0

    .line 400
    const-string v8, "DlbApController"

    const-string v9, "the format of the timestamp is not valid"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 427
    :goto_0
    return-object v8

    .line 403
    :cond_0
    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "sub":Ljava/lang/String;
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hour = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 406
    .local v1, "hour":Ljava/lang/Integer;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 409
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 410
    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 411
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "min = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 413
    .local v3, "minute":Ljava/lang/Integer;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 416
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 417
    invoke-virtual {v7, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 418
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sec = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 420
    .local v5, "second":Ljava/lang/Integer;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 423
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 425
    .local v2, "millisecond":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    add-int/2addr v8, v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 426
    const-string v8, "DlbApController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v4

    .line 427
    goto/16 :goto_0
.end method

.method private handleDialogEnhancer(Ljava/lang/String;)Z
    .locals 8
    .param p1, "deh"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 244
    const-string v3, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDialogEnhancer, deh = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "on":Z
    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    const/4 v1, 0x1

    .line 258
    :goto_0
    new-array v2, v4, [I

    .line 259
    .local v2, "values":[I
    if-eqz v1, :cond_4

    move v3, v4

    :goto_1
    aput v3, v2, v5

    .line 260
    iget-boolean v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v3

    if-nez v3, :cond_5

    .line 270
    .end local v2    # "values":[I
    :cond_0
    :goto_2
    return v5

    .line 248
    :cond_1
    const-string v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    const/4 v1, 0x0

    goto :goto_0

    .line 250
    :cond_2
    const-string v3, "unset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    const-string v3, "DlbApController"

    const-string v5, "value does not change"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 252
    goto :goto_2

    .line 254
    :cond_3
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleDialogEnhancer, invalid value = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v2    # "values":[I
    :cond_4
    move v3, v5

    .line 259
    goto :goto_1

    .line 264
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    sget-object v6, Lcom/atmos/api/DsParams;->DialogEnhancementEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v6}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/atmos/api/DsFocus;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .line 270
    goto :goto_2

    .line 265
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private handleIntelligentEq(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sieq"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 167
    const-string v4, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIntelligentEq, ieq = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v1, -0x1

    .line 169
    .local v1, "ieq":I
    const-string v4, "off"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const/4 v1, 0x0

    .line 200
    :goto_0
    iget-boolean v4, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_0
    move v2, v3

    .line 210
    :goto_1
    return v2

    .line 171
    :cond_1
    const-string v4, "Open"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    const/4 v1, 0x1

    goto :goto_0

    .line 173
    :cond_2
    const-string v4, "Rich"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    const/4 v1, 0x2

    goto :goto_0

    .line 175
    :cond_3
    const-string v4, "Focused"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    const/4 v1, 0x3

    goto :goto_0

    .line 177
    :cond_4
    const-string v4, "Warm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    const/4 v1, 0x4

    .line 180
    const-string v3, "DlbApController"

    const-string v4, "Not supported yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_5
    const-string v4, "Bright"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 183
    const/4 v1, 0x5

    .line 185
    const-string v3, "DlbApController"

    const-string v4, "Not supported yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :cond_6
    const-string v4, "Balanced"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    const/4 v1, 0x6

    .line 190
    const-string v3, "DlbApController"

    const-string v4, "Not supported yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 192
    :cond_7
    const-string v4, "unset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 193
    const-string v3, "DlbApController"

    const-string v4, "value does not change"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    :cond_8
    const-string v2, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DlbApController.handleIntelligentEq, invalid value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 197
    goto :goto_1

    .line 204
    :cond_9
    :try_start_0
    iget-object v4, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v4, v1}, Lcom/atmos/api/DsFocus;->setIeqPreset(I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    move v2, v3

    .line 208
    goto/16 :goto_1
.end method

.method private handleMasterControl(Ljava/lang/String;)Z
    .locals 8
    .param p1, "mastercontrol"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    const-string v5, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMasterControl, mastercontrol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, 0x0

    .line 340
    .local v1, "on":Z
    const-string v5, "on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    const/4 v1, 0x1

    .line 352
    :goto_0
    iget-boolean v5, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_0
    move v3, v4

    .line 371
    :cond_1
    :goto_1
    return v3

    .line 342
    :cond_2
    const-string v5, "off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 343
    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_3
    const-string v5, "unset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 345
    const-string v4, "DlbApController"

    const-string v5, "no need to handle this"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 348
    :cond_4
    const-string v3, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleMasterControl, invalid value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 349
    goto :goto_1

    .line 356
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v5, v1}, Lcom/atmos/api/DsFocus;->setState(Z)I

    move-result v2

    .line 359
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 361
    const-string v3, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleMasterControl, setDsOnChecked failed due to return code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 362
    goto :goto_1

    .line 365
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DlbApController"

    const-string v5, "DlbApController.handleMasterControl, setDsOnChecked failed"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 368
    goto :goto_1
.end method

.method private handleProfileControl(Ljava/lang/String;)Z
    .locals 7
    .param p1, "proctl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 304
    const-string v4, "DlbApController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleProfileControl, profilecontrol = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, -0x1

    .line 306
    .local v1, "profile":I
    const-string v4, "Movie"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    const/4 v1, 0x0

    .line 322
    :goto_0
    iget-boolean v4, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_0
    move v2, v3

    .line 333
    :goto_1
    return v2

    .line 308
    :cond_1
    const-string v4, "Music"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    const/4 v1, 0x1

    goto :goto_0

    .line 310
    :cond_2
    const-string v4, "Game"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    const/4 v1, 0x2

    goto :goto_0

    .line 312
    :cond_3
    const-string v4, "Voice"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 313
    const/4 v1, 0x3

    goto :goto_0

    .line 314
    :cond_4
    const-string v4, "unset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 315
    const-string v3, "DlbApController"

    const-string v4, "value not change!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 318
    :cond_5
    const-string v2, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DlbApController.handleProfileControl,invalid value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 319
    goto :goto_1

    .line 326
    :cond_6
    :try_start_0
    iget-object v4, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v4, v1}, Lcom/atmos/api/DsFocus;->setProfile(I)I

    .line 327
    iget-object v4, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v4, v1}, Lcom/atmos/api/DsFocus;->resetProfile(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DlbApController"

    const-string v4, "DlbApController.handleProfileControl,fail to call setProfileSettings"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 331
    goto :goto_1
.end method

.method private handleSurroundVirtualizer(Ljava/lang/String;)Z
    .locals 8
    .param p1, "sv"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 274
    const-string v3, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSurroundVirtualizer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "on":Z
    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const/4 v1, 0x1

    .line 288
    :goto_0
    new-array v2, v4, [I

    .line 289
    .local v2, "values":[I
    if-eqz v1, :cond_4

    move v3, v4

    :goto_1
    aput v3, v2, v5

    .line 290
    iget-boolean v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v3

    if-nez v3, :cond_5

    .line 300
    .end local v2    # "values":[I
    :cond_0
    :goto_2
    return v5

    .line 278
    :cond_1
    const-string v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    :cond_2
    const-string v3, "unset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    const-string v3, "DlbApController"

    const-string v5, "value does not change"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 282
    goto :goto_2

    .line 284
    :cond_3
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleSurroundVirtualizer, invalid value = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v2    # "values":[I
    :cond_4
    move v3, v5

    .line 289
    goto :goto_1

    .line 294
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    sget-object v6, Lcom/atmos/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/atmos/api/DsParams;

    invoke-virtual {v6}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/atmos/api/DsFocus;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .line 300
    goto :goto_2

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private handleTextInfo(Lcom/atmos/instoredemoapp/TextInfo;)V
    .locals 0
    .param p1, "ti"    # Lcom/atmos/instoredemoapp/TextInfo;

    .prologue
    .line 160
    return-void
.end method

.method private handleVolumeLeveler(Ljava/lang/String;)Z
    .locals 8
    .param p1, "vl"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 214
    const-string v3, "DlbApController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleVolumeLeveler, vl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "on":Z
    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    const/4 v1, 0x1

    .line 228
    :goto_0
    new-array v2, v4, [I

    .line 229
    .local v2, "values":[I
    if-eqz v1, :cond_4

    move v3, v4

    :goto_1
    aput v3, v2, v5

    .line 230
    iget-boolean v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v3

    if-nez v3, :cond_5

    .line 240
    .end local v2    # "values":[I
    :cond_0
    :goto_2
    return v5

    .line 218
    :cond_1
    const-string v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    const/4 v1, 0x0

    goto :goto_0

    .line 220
    :cond_2
    const-string v3, "unset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    const-string v3, "DlbApController"

    const-string v5, "value does not change"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 222
    goto :goto_2

    .line 224
    :cond_3
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DlbApController.handleVolumeLeveler, invalid value = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .restart local v2    # "values":[I
    :cond_4
    move v3, v5

    .line 229
    goto :goto_1

    .line 234
    :cond_5
    :try_start_0
    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    sget-object v6, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/atmos/api/DsParams;

    invoke-virtual {v6}, Lcom/atmos/api/DsParams;->toInt()I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/atmos/api/DsFocus;->setParameter(I[I)I
    :try_end_0
    .catch Lcom/atmos/api/DsAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    .line 240
    goto :goto_2

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lcom/atmos/api/DsAccessException;
    invoke-virtual {v0}, Lcom/atmos/api/DsAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private initMsgList()V
    .locals 10

    .prologue
    .line 375
    iget-object v7, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 376
    iget-object v7, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 377
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    .line 379
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    .line 380
    iget-object v7, p0, Lcom/atmos/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/atmos/instoredemoapp/DlbApInfoExtractor;

    invoke-virtual {v7}, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->getAutoPilotMetadata()Ljava/util/ArrayList;

    move-result-object v1

    .line 381
    .local v1, "aplist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/atmos/instoredemoapp/AutoPilotItem;>;"
    const-string v7, "DlbApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aplist.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 383
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/instoredemoapp/AutoPilotItem;

    .line 384
    .local v0, "apitem":Lcom/atmos/instoredemoapp/AutoPilotItem;
    const-string v7, "DlbApController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "obj of msg: \n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v7, p0, Lcom/atmos/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x7dc

    invoke-virtual {v7, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 386
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getTimeStamp()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/atmos/instoredemoapp/DlbApController;->calMsgDelaytime(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    .line 387
    .local v4, "delaytime":J
    new-instance v2, Lcom/atmos/instoredemoapp/DlbApController$APMessage;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/atmos/instoredemoapp/DlbApController$APMessage;-><init>(Lcom/atmos/instoredemoapp/DlbApController;JLandroid/os/Message;)V

    .line 388
    .local v2, "apmsg":Lcom/atmos/instoredemoapp/DlbApController$APMessage;
    iget-object v7, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v0    # "apitem":Lcom/atmos/instoredemoapp/AutoPilotItem;
    .end local v2    # "apmsg":Lcom/atmos/instoredemoapp/DlbApController$APMessage;
    .end local v4    # "delaytime":J
    .end local v6    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public abandonAFandAR()V
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-nez v1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v1}, Lcom/atmos/api/DsFocus;->abandonAccessRight()I

    .line 556
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 557
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public onAccessAvailable()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method

.method public onAccessForceReleased(Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 464
    return-void
.end method

.method public onAccessRequested(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public onClientConnected()V
    .locals 2

    .prologue
    .line 474
    const-string v0, "DlbApController"

    const-string v1, "onClientConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    .line 476
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v0, p0}, Lcom/atmos/api/DsFocus;->registerDsEvents(Lcom/atmos/api/IDsEvents;)V

    .line 478
    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string v0, "DlbApController"

    const-string v1, "onClientConnected() request audio focuse failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    return-void

    .line 483
    :cond_0
    const-string v0, "DlbApController"

    const-string v1, "onClientConnected() request audio focuse successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onClientDisconnected()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "DlbApController"

    const-string v1, "onClientDisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    .line 494
    return-void
.end method

.method public onDsOn(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 434
    return-void
.end method

.method public onDsSuspended(Z)V
    .locals 0
    .param p1, "isSuspended"    # Z

    .prologue
    .line 449
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 439
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 444
    return-void
.end method

.method public processApMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 125
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processApMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 128
    const-string v3, "DlbApController"

    const-string v4, "the msg.obj is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return v2

    .line 131
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/atmos/instoredemoapp/AutoPilotItem;

    .line 132
    .local v0, "apitem":Lcom/atmos/instoredemoapp/AutoPilotItem;
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getMasterControlValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/atmos/instoredemoapp/DlbApController;->handleMasterControl(Ljava/lang/String;)Z

    move-result v1

    .line 133
    .local v1, "ret":Z
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMasterControl, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez v1, :cond_1

    .line 137
    const/4 v2, 0x0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getProfileControlValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/atmos/instoredemoapp/DlbApController;->handleProfileControl(Ljava/lang/String;)Z

    move-result v1

    .line 140
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleProfileControl, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getSurroundVirtualizerValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/atmos/instoredemoapp/DlbApController;->handleSurroundVirtualizer(Ljava/lang/String;)Z

    move-result v1

    .line 142
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSurroundVirtualizer, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getDialogEnahancerValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/atmos/instoredemoapp/DlbApController;->handleDialogEnhancer(Ljava/lang/String;)Z

    move-result v1

    .line 144
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDialogEnhancer, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getVolumeLevelerValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/atmos/instoredemoapp/DlbApController;->handleVolumeLeveler(Ljava/lang/String;)Z

    move-result v1

    .line 146
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVolumeLeveler, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getIntelligenEqValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/atmos/instoredemoapp/DlbApController;->handleIntelligentEq(Ljava/lang/String;)Z

    move-result v1

    .line 148
    const-string v3, "DlbApController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIntelligentEq, returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/AutoPilotItem;->getDisplayText()Lcom/atmos/instoredemoapp/TextInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/atmos/instoredemoapp/DlbApController;->handleTextInfo(Lcom/atmos/instoredemoapp/TextInfo;)V

    goto/16 :goto_0
.end method

.method public requestAFandAR()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsConnected:Z

    if-nez v3, :cond_1

    .line 525
    :cond_0
    const/4 v3, 0x0

    .line 544
    :goto_0
    return v3

    .line 529
    :cond_1
    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 530
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3, v5, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 531
    .local v1, "result":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 533
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v4}, Lcom/atmos/api/DsFocus;->checkAccessRight()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 534
    iget-object v3, p0, Lcom/atmos/instoredemoapp/DlbApController;->mDsFocus:Lcom/atmos/api/DsFocus;

    invoke-virtual {v3}, Lcom/atmos/api/DsFocus;->requestAccessRight()I

    move-result v3

    if-nez v3, :cond_3

    .line 535
    const/4 v2, 0x1

    :cond_2
    :goto_1
    move v3, v2

    .line 544
    goto :goto_0

    .line 537
    :cond_3
    const-string v3, "DlbApController"

    const-string v4, "requestAFandAR(): requestAccessRight failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 540
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public sendApMessages()V
    .locals 6

    .prologue
    .line 101
    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 102
    const-string v2, "DlbApController"

    const-string v3, "the un-handled messages will be removed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 107
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/instoredemoapp/DlbApController$APMessage;

    .line 109
    .local v0, "apmsg":Lcom/atmos/instoredemoapp/DlbApController$APMessage;
    const-string v2, "DlbApController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "will send ap msg after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/atmos/instoredemoapp/DlbApController$APMessage;->delayTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/atmos/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/atmos/instoredemoapp/DlbApController$APMessage;->message:Landroid/os/Message;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, v0, Lcom/atmos/instoredemoapp/DlbApController$APMessage;->delayTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "apmsg":Lcom/atmos/instoredemoapp/DlbApController$APMessage;
    :cond_1
    return-void
.end method

.method public setApInfoFile(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "apstream"    # Ljava/io/InputStream;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    .line 116
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApController;->mApInfoExtractor:Lcom/atmos/instoredemoapp/DlbApInfoExtractor;

    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mApInfoStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->setApInfoFile(Ljava/io/InputStream;)V

    .line 117
    invoke-direct {p0}, Lcom/atmos/instoredemoapp/DlbApController;->initMsgList()V

    .line 118
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mHandler:Landroid/os/Handler;

    .line 86
    :cond_0
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbApController;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 80
    :cond_0
    return-void
.end method
