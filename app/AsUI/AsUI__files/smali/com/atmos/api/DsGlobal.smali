.class public Lcom/atmos/api/DsGlobal;
.super Lcom/atmos/api/DsFocus;
.source "DsGlobal.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/atmos/api/DsFocus;-><init>()V

    .line 62
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lcom/atmos/api/DsFocus;->setConnectionInfo(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public abandonAccessRight()I
    .locals 4

    .prologue
    .line 94
    const/4 v1, -0x6

    .line 97
    .local v1, "error":I
    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsFocus;->abandonAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 104
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsGlobal"

    const-string v3, "Exception in abandonAccessRight"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessRight()I
    .locals 3

    .prologue
    .line 114
    const/4 v1, -0x1

    .line 117
    .local v1, "ret_val":I
    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsFocus;->checkAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "checkAccessRight"

    invoke-virtual {p0, v0, v2}, Lcom/atmos/api/DsGlobal;->handleException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAvailableAccessRight()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    return v0
.end method

.method public requestAccessRight()I
    .locals 4

    .prologue
    .line 73
    const/4 v1, -0x6

    .line 76
    .local v1, "error":I
    const/4 v2, 0x2

    :try_start_0
    invoke-super {p0, v2}, Lcom/atmos/api/DsFocus;->requestAccessRight(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsGlobal"

    const-string v3, "Exception in requestAccessRight"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
