.class Lcom/atmos/api/DsBase$2;
.super Lcom/atmos/api/IDsDeathHandler$Stub;
.source "DsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/api/DsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/api/DsBase;


# direct methods
.method constructor <init>(Lcom/atmos/api/DsBase;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/atmos/api/DsBase$2;->this$0:Lcom/atmos/api/DsBase;

    invoke-direct {p0}, Lcom/atmos/api/IDsDeathHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientDied()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method
