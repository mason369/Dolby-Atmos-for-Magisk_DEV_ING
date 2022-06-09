.class Lcom/atmos/service/DsService$5;
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
    .line 1972
    iput-object p1, p0, Lcom/atmos/service/DsService$5;->this$0:Lcom/atmos/service/DsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1975
    if-nez p1, :cond_1

    .line 1976
    :try_start_0
    const-string v6, "dolby"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dsservice onchange--->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/atmos/service/DsService$5;->this$0:Lcom/atmos/service/DsService;

    invoke-virtual {v8}, Lcom/atmos/service/DsService;->getDsOnOffStateChange()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v6, p0, Lcom/atmos/service/DsService$5;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v6}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/atmos/ds/DsManager;->getDsOn()I

    move-result v3

    .line 1978
    .local v3, "newStatus":I
    iget-object v6, p0, Lcom/atmos/service/DsService$5;->this$0:Lcom/atmos/service/DsService;

    invoke-virtual {v6}, Lcom/atmos/service/DsService;->getDsOnOffStateChange()Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    .line 1979
    .local v1, "currState":I
    :cond_0
    if-ne v1, v3, :cond_2

    .line 2001
    .end local v1    # "currState":I
    .end local v3    # "newStatus":I
    :cond_1
    :goto_0
    return-void

    .line 1982
    .restart local v1    # "currState":I
    .restart local v3    # "newStatus":I
    :cond_2
    iget-object v6, p0, Lcom/atmos/service/DsService$5;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v6}, Lcom/atmos/service/DsService;->access$200(Lcom/atmos/service/DsService;)Lcom/atmos/ds/DsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/atmos/ds/DsManager;->getDsSuspended()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1983
    if-ne v3, v5, :cond_3

    const-string v0, "on"

    .line 1984
    .local v0, "curState":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/atmos/service/DsService;->setDsOnOffStateChange(Ljava/lang/String;)V

    .line 1985
    invoke-static {}, Lcom/atmos/service/DsService;->access$000()V

    .line 1986
    const-string v5, "DsService"

    const-string v6, "dolby audio has suspended,do nothins->in onchange"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1996
    .end local v0    # "curState":Ljava/lang/String;
    .end local v1    # "currState":I
    .end local v3    # "newStatus":I
    :catch_0
    move-exception v2

    .line 1997
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "DOLBY"

    const-string v6, "contentObserver set dolby statue error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1983
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "currState":I
    .restart local v3    # "newStatus":I
    :cond_3
    :try_start_1
    const-string v0, "off"

    goto :goto_1

    .line 1990
    :cond_4
    iget-object v6, p0, Lcom/atmos/service/DsService$5;->this$0:Lcom/atmos/service/DsService;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/atmos/service/DsService$5;->this$0:Lcom/atmos/service/DsService;

    invoke-virtual {v8}, Lcom/atmos/service/DsService;->getDsOnOffStateChange()Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/atmos/service/DsService;->access$400(Lcom/atmos/service/DsService;IZ)I

    move-result v4

    .line 1991
    .local v4, "ret":I
    if-eqz v4, :cond_1

    .line 1992
    if-ne v3, v5, :cond_5

    const-string v0, "on"

    .line 1993
    .restart local v0    # "curState":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Lcom/atmos/service/DsService;->setDsOnOffStateChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1992
    .end local v0    # "curState":Ljava/lang/String;
    :cond_5
    const-string v0, "off"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
