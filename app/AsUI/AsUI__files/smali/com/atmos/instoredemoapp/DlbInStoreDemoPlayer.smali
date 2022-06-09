.class public Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;
.super Landroid/app/Activity;
.source "DlbInStoreDemoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mApController:Lcom/atmos/instoredemoapp/DlbApController;

.field private mAutoPilotDataStream:Ljava/io/InputStream;

.field private mExitBtn:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mIsManualStop:Z

.field private mIsPlayingLoopMedia:Z

.field private mIsPrepared:Z

.field private mIsResumed:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mReplayBtn:Landroid/widget/ImageButton;

.field private mReplayEnabled:Z

.field private mStopBtn:Landroid/widget/ImageButton;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    .line 47
    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    .line 48
    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    .line 49
    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    .line 50
    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    .line 51
    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    .line 52
    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    .line 53
    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    return-void
.end method

.method static synthetic access$000(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Lcom/atmos/instoredemoapp/DlbApController;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getLoopUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    return v0
.end method

.method static synthetic access$402(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    return p1
.end method

.method static synthetic access$500(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getDemoUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getAutoPilotXmlFile()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    return p1
.end method

.method static synthetic access$900(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAutoPilotXmlFile()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 300
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "instore_demo_autopilot.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mAutoPilotDataStream:Ljava/io/InputStream;

    return-object v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "DlbInstoreDemoPlayer.getAutoPilotXmlFile, the file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getDemoUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 289
    .local v0, "demoUri":Landroid/net/Uri;
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "demoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v0
.end method

.method private getLoopUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 295
    .local v0, "loopUri":Landroid/net/Uri;
    const-string v1, "DlbInStoreDemoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loopUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 210
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onCompletion called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    .line 213
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsManualStop:Z

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->setContentView(I)V

    .line 62
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    .line 63
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 64
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 65
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 67
    new-instance v0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;

    invoke-direct {v0, p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$1;-><init>(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)V

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    .line 110
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    .line 111
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mStopBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;

    invoke-direct {v1, p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$2;-><init>(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    .line 126
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mReplayBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$3;

    invoke-direct {v1, p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$3;-><init>(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mExitBtn:Landroid/widget/ImageButton;

    .line 142
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mExitBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$4;

    invoke-direct {v1, p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer$4;-><init>(Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 201
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 203
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "onDestroy---executer overy---->"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 207
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 237
    const-string v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError called, what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 176
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    .line 184
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 186
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 187
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 189
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    invoke-virtual {v1}, Lcom/atmos/instoredemoapp/DlbApController;->abandonAFandAR()V

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 193
    const-string v1, "DlbInStoreDemoPlayer"

    const-string v2, "onPause---executer overy---->"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 225
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    .line 228
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/atmos/instoredemoapp/DlbApController;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 230
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 231
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 232
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/DlbApController;->sendApMessages()V

    .line 234
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    invoke-virtual {v0}, Lcom/atmos/instoredemoapp/DlbApController;->requestAFandAR()Z

    .line 167
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsResumed:Z

    .line 168
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 171
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 153
    const-string v0, "DlbInStoreDemoPlayer"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/atmos/instoredemoapp/DlbApController;

    invoke-direct {v0, p0}, Lcom/atmos/instoredemoapp/DlbApController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    .line 156
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/atmos/instoredemoapp/DlbApController;->setHandler(Landroid/os/Handler;)V

    .line 157
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mApController:Lcom/atmos/instoredemoapp/DlbApController;

    invoke-direct {p0}, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->getAutoPilotXmlFile()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/atmos/instoredemoapp/DlbApController;->setApInfoFile(Ljava/io/InputStream;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x7df

    const/4 v3, 0x0

    .line 243
    const-string v0, "DlbInStoreDemoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent called action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-boolean v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mIsPlayingLoopMedia:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 247
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    :cond_0
    :goto_0
    return v3

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbInStoreDemoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
