.class public Lcom/atmos/instoredemoapp/DlbApInfoExtractor;
.super Ljava/lang/Object;
.source "DlbApInfoExtractor.java"


# instance fields
.field private mApInfoStream:Ljava/io/InputStream;

.field private mApParser:Lcom/atmos/instoredemoapp/IAPMetadataParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    .line 26
    new-instance v0, Lcom/atmos/instoredemoapp/DlbAPMetadataParser;

    invoke-direct {v0}, Lcom/atmos/instoredemoapp/DlbAPMetadataParser;-><init>()V

    iput-object v0, p0, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->mApParser:Lcom/atmos/instoredemoapp/IAPMetadataParser;

    .line 27
    const-string v0, "DlbApInfoExtractor"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method


# virtual methods
.method public getAutoPilotMetadata()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/atmos/instoredemoapp/AutoPilotItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->mApParser:Lcom/atmos/instoredemoapp/IAPMetadataParser;

    invoke-interface {v0}, Lcom/atmos/instoredemoapp/IAPMetadataParser;->getAutoPilotMetadata()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setApInfoFile(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "apstream"    # Ljava/io/InputStream;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iput-object p1, p0, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    .line 33
    iget-object v0, p0, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->mApParser:Lcom/atmos/instoredemoapp/IAPMetadataParser;

    iget-object v1, p0, Lcom/atmos/instoredemoapp/DlbApInfoExtractor;->mApInfoStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/atmos/instoredemoapp/IAPMetadataParser;->parseFile(Ljava/io/InputStream;)V

    .line 35
    :cond_0
    return-void
.end method
