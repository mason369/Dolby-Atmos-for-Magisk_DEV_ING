.class Lcom/atmos/service/DsService$DsClientDeathHandler;
.super Ljava/lang/Object;
.source "DsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/service/DsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DsClientDeathHandler"
.end annotation


# instance fields
.field mHandle:I

.field private final mIDsDeathHandler:Lcom/atmos/api/IDsDeathHandler;

.field final synthetic this$0:Lcom/atmos/service/DsService;


# direct methods
.method constructor <init>(Lcom/atmos/service/DsService;Lcom/atmos/api/IDsDeathHandler;I)V
    .locals 0
    .param p2, "dh"    # Lcom/atmos/api/IDsDeathHandler;
    .param p3, "handle"    # I

    .prologue
    .line 577
    iput-object p1, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->this$0:Lcom/atmos/service/DsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p2, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/atmos/api/IDsDeathHandler;

    .line 579
    iput p3, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mHandle:I

    .line 580
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$100(Lcom/atmos/service/DsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$700(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsVisualizerManager;

    move-result-object v0

    iget v2, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-virtual {v0, v2}, Lcom/atmos/service/DsVisualizerManager;->unregister(I)V

    .line 597
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    iget v2, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-virtual {v0, v2}, Lcom/atmos/service/DsAccessRightManager;->removeDsConnectedApp(I)V

    .line 598
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$500(Lcom/atmos/service/DsService;)Lcom/atmos/service/DsAccessRightManager;

    move-result-object v0

    iget v2, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-virtual {v0, v2}, Lcom/atmos/service/DsAccessRightManager;->unRegisterDsVersion(I)V

    .line 599
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$800(Lcom/atmos/service/DsService;)Ljava/util/HashMap;

    move-result-object v0

    iget v2, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->this$0:Lcom/atmos/service/DsService;

    invoke-static {v0}, Lcom/atmos/service/DsService;->access$900(Lcom/atmos/service/DsService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/atmos/api/IDsDeathHandler;

    invoke-interface {v2}, Lcom/atmos/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    monitor-exit v1

    .line 602
    return-void

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/atmos/api/IDsDeathHandler;

    invoke-interface {v0}, Lcom/atmos/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 585
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/atmos/service/DsService$DsClientDeathHandler;->mIDsDeathHandler:Lcom/atmos/api/IDsDeathHandler;

    invoke-interface {v0}, Lcom/atmos/api/IDsDeathHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 590
    return-void
.end method
