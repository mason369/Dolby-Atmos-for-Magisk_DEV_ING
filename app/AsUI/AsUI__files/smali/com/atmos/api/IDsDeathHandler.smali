.class public interface abstract Lcom/atmos/api/IDsDeathHandler;
.super Ljava/lang/Object;
.source "IDsDeathHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/api/IDsDeathHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract onClientDied()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
