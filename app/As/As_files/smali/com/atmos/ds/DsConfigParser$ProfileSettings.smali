.class Lcom/atmos/ds/DsConfigParser$ProfileSettings;
.super Ljava/lang/Object;
.source "DsConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/ds/DsConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileSettings"
.end annotation


# instance fields
.field device:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field ieqId:Ljava/lang/String;

.field settingStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/atmos/ds/DsConfigParser;


# direct methods
.method private constructor <init>(Lcom/atmos/ds/DsConfigParser;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->this$0:Lcom/atmos/ds/DsConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/atmos/ds/DsConfigParser;
    .param p2, "x1"    # Lcom/atmos/ds/DsConfigParser$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/atmos/ds/DsConfigParser$ProfileSettings;-><init>(Lcom/atmos/ds/DsConfigParser;)V

    return-void
.end method
