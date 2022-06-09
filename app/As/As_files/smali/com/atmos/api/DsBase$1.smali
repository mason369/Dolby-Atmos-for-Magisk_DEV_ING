.class Lcom/atmos/api/DsBase$1;
.super Ljava/lang/Object;
.source "DsBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 374
    iput-object p1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 377
    const-string v1, "DsBase"

    const-string v2, "ServiceConnection.onServiceConnected()"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    invoke-static {p2}, Lcom/atmos/api/IDs$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atmos/api/IDs;

    move-result-object v2

    iput-object v2, v1, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    .line 381
    iget-object v1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, v1, Lcom/atmos/api/DsBase;->clientHandle_:I

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget-object v1, v1, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    iget-object v2, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget v2, v2, Lcom/atmos/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    invoke-static {v3}, Lcom/atmos/api/DsBase;->access$000(Lcom/atmos/api/DsBase;)Lcom/atmos/api/IDsDeathHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/atmos/api/IDs;->iRegisterDeathHandler(ILcom/atmos/api/IDsDeathHandler;)V

    .line 385
    iget-object v1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget-object v1, v1, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    iget-object v2, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget v2, v2, Lcom/atmos/api/DsBase;->clientHandle_:I

    iget-object v3, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget-object v3, v3, Lcom/atmos/api/DsBase;->DsClientInfo_:Lcom/atmos/api/DsClientInfo;

    invoke-interface {v1, v2, v3}, Lcom/atmos/api/IDs;->iRegisterDsAccess(ILcom/atmos/api/DsClientInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget-object v1, v1, Lcom/atmos/api/DsBase;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget-object v1, v1, Lcom/atmos/api/DsBase;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    invoke-interface {v1}, Lcom/atmos/api/IDsAccessEvents;->onClientConnected()V

    .line 397
    :cond_0
    const-string v1, "DsBase"

    const-string v2, "CONNECTED: DsService"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    const-string v2, "iRegisterDsAccess"

    invoke-virtual {v1, v0, v2}, Lcom/atmos/api/DsBase;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 402
    const-string v0, "DsBase"

    const-string v1, "ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget-object v0, v0, Lcom/atmos/api/DsBase;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    iget-object v0, v0, Lcom/atmos/api/DsBase;->accessListener_:Lcom/atmos/api/IDsAccessEvents;

    invoke-interface {v0}, Lcom/atmos/api/IDsAccessEvents;->onClientDisconnected()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/atmos/api/DsBase$1;->this$0:Lcom/atmos/api/DsBase;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/atmos/api/DsBase;->iDs_:Lcom/atmos/api/IDs;

    .line 411
    const-string v0, "DsBase"

    const-string v1, "/ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method
