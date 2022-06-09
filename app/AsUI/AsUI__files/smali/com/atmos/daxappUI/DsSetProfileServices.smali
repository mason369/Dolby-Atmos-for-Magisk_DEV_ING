.class public Lcom/atmos/daxappUI/DsSetProfileServices;
.super Landroid/app/Service;
.source "DsSetProfileServices.java"


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    const-string v0, "dolby"

    const-string v1, "SetProfileServices has oncreate---->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 48
    const-string v0, "dolby"

    const-string v1, "SetProfileServices has destrory---->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    .line 28
    const-string v0, "dolby"

    const-string v1, "SetProfileServices onstartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/atmos/daxappUI/DsSetProfileServices;->stopSelf()V

    .line 34
    :goto_0
    return v2

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/atmos/daxappUI/DsSetProfileServices;->intent:Landroid/content/Intent;

    goto :goto_0
.end method
