.class Lcom/atmos/service/DsService$4;
.super Landroid/database/ContentObserver;
.source "DsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/service/DsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atmos/service/DsService;


# direct methods
.method constructor <init>(Lcom/atmos/service/DsService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1954
    iput-object p1, p0, Lcom/atmos/service/DsService$4;->this$0:Lcom/atmos/service/DsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 1957
    if-nez p1, :cond_0

    .line 1958
    :try_start_0
    const-string v1, "dolby"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dsProfile change curr priofile--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/atmos/service/DsService;->getDsProfileState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget-object v1, p0, Lcom/atmos/service/DsService$4;->this$0:Lcom/atmos/service/DsService;

    const/4 v2, 0x0

    invoke-static {}, Lcom/atmos/service/DsService;->getDsProfileState()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/atmos/service/DsService;->access$600(Lcom/atmos/service/DsService;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1966
    :cond_0
    :goto_0
    return-void

    .line 1961
    :catch_0
    move-exception v0

    .line 1962
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DOLBY"

    const-string v2, "contentObserver currpofile error dolby statue error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
