.class Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;
.super Ljava/lang/Object;
.source "DsAccessRightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/service/DsAccessRightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DsConnectedAppInfo"
.end annotation


# instance fields
.field appCurrentAccessRight:I

.field appPackageName:Ljava/lang/String;

.field connectionBridge:I

.field final synthetic this$0:Lcom/atmos/service/DsAccessRightManager;


# direct methods
.method private constructor <init>(Lcom/atmos/service/DsAccessRightManager;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;->this$0:Lcom/atmos/service/DsAccessRightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/atmos/service/DsAccessRightManager;Lcom/atmos/service/DsAccessRightManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/atmos/service/DsAccessRightManager;
    .param p2, "x1"    # Lcom/atmos/service/DsAccessRightManager$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/atmos/service/DsAccessRightManager$DsConnectedAppInfo;-><init>(Lcom/atmos/service/DsAccessRightManager;)V

    return-void
.end method
