.class public Lcom/atmos/ds/DsManager;
.super Ljava/lang/Object;
.source "DsManager.java"


# static fields
.field private static DS_CURRENT_DIR:Ljava/lang/String;


# instance fields
.field private audioSessionId_:I

.field private currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

.field private defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

.field private dsEffect_:Lcom/atmos/ds/DsEffect;

.field private isDsOn_:Z

.field private isDsSuspended_:Z

.field private offProfile_:Lcom/atmos/ds/DsProfileSettings;

.field private selectedProfile_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/atmos/ds/DsManager;->DS_CURRENT_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-array v0, v2, [Lcom/atmos/ds/DsProfileSettings;

    iput-object v0, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    .line 46
    new-array v0, v2, [Lcom/atmos/ds/DsProfileSettings;

    iput-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    .line 56
    iput v1, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atmos/ds/DsManager;->isDsOn_:Z

    .line 67
    iput-boolean v1, p0, Lcom/atmos/ds/DsManager;->isDsSuspended_:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    .line 118
    invoke-static {}, Lcom/atmos/ds/DsProperty;->init()V

    .line 121
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->getDefaultSettings()[Lcom/atmos/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    .line 124
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->getCurrentSettings()[Lcom/atmos/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    .line 127
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->getOffProfileSettings()Lcom/atmos/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/ds/DsManager;->offProfile_:Lcom/atmos/ds/DsProfileSettings;

    .line 128
    return-void
.end method

.method public static isBasicProfileParam(Ljava/lang/String;)Z
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 880
    invoke-static {p0}, Lcom/atmos/ds/DsProfileSettings;->isBasicProfileParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadSettings(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 8
    .param p0, "defaultInStream"    # Ljava/io/InputStream;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v4, 0x1

    .line 179
    .local v4, "ret":Z
    const-string v5, "DsManager"

    const-string v6, "loadSettings"

    invoke-static {v5, v6}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz p1, :cond_2

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ds-current.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "dsCurSettingsPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ds-state.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "dsStatePath":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/atmos/ds/DsStoreUtil;->storeDsPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sput-object p1, Lcom/atmos/ds/DsManager;->DS_CURRENT_DIR:Ljava/lang/String;

    .line 198
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "currentInStream":Ljava/io/FileInputStream;
    invoke-static {v0, p0}, Lcom/atmos/ds/DsPresetsConfiguration;->xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v4

    .line 200
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 201
    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    .end local v0    # "currentInStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 221
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->createProfileSettings()Z

    move-result v4

    .line 222
    if-eqz v4, :cond_1

    .line 225
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->getParserStatusFlag()Z

    move-result v4

    :cond_1
    move v5, v4

    .line 229
    .end local v1    # "dsCurSettingsPath":Ljava/lang/String;
    .end local v2    # "dsStatePath":Ljava/lang/String;
    :goto_1
    return v5

    .line 192
    :cond_2
    const-string v5, "DsManager"

    const-string v6, "No specified location to store the DS current settings and DS state!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v5, 0x0

    goto :goto_1

    .line 206
    .restart local v1    # "dsCurSettingsPath":Ljava/lang/String;
    .restart local v2    # "dsStatePath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 208
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v5, "DsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find DS config XML file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 210
    const/4 v4, 0x0

    .line 217
    goto :goto_0

    .line 212
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "DsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "populateSettings(): Exception loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or parsing the file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private recreateDsEffect()Z
    .locals 4

    .prologue
    .line 1126
    const/4 v1, 0x0

    .line 1127
    .local v1, "ret":Z
    const-string v2, "DsManager"

    const-string v3, "recreateDsEffect"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :try_start_0
    iget-object v2, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    if-eqz v2, :cond_0

    .line 1132
    iget-object v2, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v2}, Lcom/atmos/ds/DsEffect;->release()V

    .line 1134
    :cond_0
    new-instance v2, Lcom/atmos/ds/DsEffect;

    iget v3, p0, Lcom/atmos/ds/DsManager;->audioSessionId_:I

    invoke-direct {v2, v3}, Lcom/atmos/ds/DsEffect;-><init>(I)V

    iput-object v2, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    .line 1135
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/atmos/ds/DsManager;->setInitStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    const/4 v1, 0x1

    .line 1143
    :goto_0
    return v1

    .line 1138
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsManager"

    const-string v3, "Exception in recreateDsEffect."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setInitStatus(Z)V
    .locals 8
    .param p1, "useExistingState"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1153
    if-nez p1, :cond_0

    .line 1156
    invoke-static {}, Lcom/atmos/ds/DsStoreUtil;->loadDsState()[Ljava/lang/String;

    move-result-object v3

    .line 1157
    .local v3, "restoredState":[Ljava/lang/String;
    aget-object v4, v3, v6

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/atmos/ds/DsManager;->isDsOn_:Z

    .line 1158
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    .line 1159
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    const/4 v7, 0x4

    aget-object v4, v4, v7

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v4, v7}, Lcom/atmos/ds/DsProfileSettings;->setDefaultName(Ljava/lang/String;)V

    .line 1160
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    const/4 v7, 0x5

    aget-object v4, v4, v7

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v4, v7}, Lcom/atmos/ds/DsProfileSettings;->setDefaultName(Ljava/lang/String;)V

    .line 1162
    .end local v3    # "restoredState":[Ljava/lang/String;
    :cond_0
    new-array v2, v5, [I

    aput v5, v2, v6

    .line 1163
    .local v2, "enable":[I
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v4, v4, v6

    const-string v7, "dvme"

    invoke-virtual {v4, v7, v2}, Lcom/atmos/ds/DsProfileSettings;->setParameter(Ljava/lang/String;[I)V

    .line 1164
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v4, v4, v5

    const-string v7, "dvme"

    invoke-virtual {v4, v7, v2}, Lcom/atmos/ds/DsProfileSettings;->setParameter(Ljava/lang/String;[I)V

    .line 1166
    new-array v0, v5, [I

    const/16 v4, 0xa0

    aput v4, v0, v6

    .line 1167
    .local v0, "dvmc":[I
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v4, v4, v6

    const-string v6, "dvmc"

    invoke-virtual {v4, v6, v0}, Lcom/atmos/ds/DsProfileSettings;->setParameter(Ljava/lang/String;[I)V

    .line 1168
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v4, v4, v5

    const-string v5, "dvmc"

    invoke-virtual {v4, v5, v0}, Lcom/atmos/ds/DsProfileSettings;->setParameter(Ljava/lang/String;[I)V

    .line 1170
    const-string v4, "DsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore Ds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/atmos/ds/DsManager;->isDsOn_:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string v4, "DsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore profile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :try_start_0
    iget v4, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    invoke-virtual {p0, v4}, Lcom/atmos/ds/DsManager;->setSelectedProfile(I)Z

    .line 1177
    iget-boolean v4, p0, Lcom/atmos/ds/DsManager;->isDsOn_:Z

    invoke-virtual {p0, v4}, Lcom/atmos/ds/DsManager;->setDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_1
    return-void

    .end local v0    # "dvmc":[I
    .end local v2    # "enable":[I
    .restart local v3    # "restoredState":[Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 1157
    goto/16 :goto_0

    .line 1179
    .end local v3    # "restoredState":[Ljava/lang/String;
    .restart local v0    # "dvmc":[I
    .restart local v2    # "enable":[I
    :catch_0
    move-exception v1

    .line 1181
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DsManager"

    const-string v5, "Exception in setInitStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public createDsEffect(I)V
    .locals 4
    .param p1, "audioSessionId"    # I

    .prologue
    .line 135
    const-string v1, "DsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating Ds effect on audioSessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-gez p1, :cond_0

    .line 139
    const-string v1, "DsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ds effect with specified session Id ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is less than zero"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :try_start_0
    iput p1, p0, Lcom/atmos/ds/DsManager;->audioSessionId_:I

    .line 148
    new-instance v1, Lcom/atmos/ds/DsEffect;

    iget v2, p0, Lcom/atmos/ds/DsManager;->audioSessionId_:I

    invoke-direct {v1, v2}, Lcom/atmos/ds/DsEffect;-><init>(I)V

    iput-object v1, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    .line 149
    iget-object v1, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/atmos/ds/DsManager;->offProfile_:Lcom/atmos/ds/DsProfileSettings;

    invoke-virtual {v1, v2, v3}, Lcom/atmos/ds/DsEffect;->defineProfile(ILcom/atmos/ds/DsProfileSettings;)I

    .line 150
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/atmos/ds/DsManager;->setInitStatus(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "DsManager"

    const-string v2, "createDsEffect() FAILED! IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "DsManager"

    const-string v2, "createDsEffect() FAILED! Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v1, "DsManager"

    const-string v2, "createDsEffect() FAILED! Constant AK parameters NOT defined yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDsApVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 703
    const-string v2, "DsManager"

    const-string v3, "getDsApVersion"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    .line 709
    :cond_0
    iget-object v2, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v2}, Lcom/atmos/ds/DsEffect;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DAP version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    .local v1, "version":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDsOn()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 334
    const-string v2, "DsManager"

    const-string v3, "getDsOn"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    .line 340
    :cond_0
    iget-boolean v2, p0, Lcom/atmos/ds/DsManager;->isDsSuspended_:Z

    if-eqz v2, :cond_2

    .line 342
    const-string v2, "DsManager"

    const-string v3, "DS effect is now suspended"

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_1
    :goto_0
    return v1

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v2}, Lcom/atmos/ds/DsEffect;->getEnabled()Z

    move-result v0

    .line 350
    .local v0, "effectEnabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDsSuspended()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 316
    const-string v0, "DsManager"

    const-string v1, "getDsSuspended()"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 322
    :cond_0
    iget-boolean v0, p0, Lcom/atmos/ds/DsManager;->isDsSuspended_:Z

    return v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 722
    const-string v0, "DsManager"

    const-string v1, "getDsVersion"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "DAX version 2.1.2.10"

    return-object v0
.end method

.method public getIeqPreset(I)I
    .locals 3
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 778
    const/4 v0, -0x1

    .line 779
    .local v0, "ret":I
    const-string v1, "DsManager"

    const-string v2, "getIeqPreset"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/atmos/ds/DsProfileSettings;->getIeqPreset()I

    move-result v0

    .line 790
    return v0

    .line 787
    :cond_0
    const-string v1, "DsManager"

    const-string v2, "getIeqPrest: Invalid profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getOffType()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 1212
    const-string v0, "DsManager"

    const-string v1, "getOffType"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v0}, Lcom/atmos/ds/DsEffect;->getOffType()I

    move-result v0

    return v0
.end method

.method public getParamLength(I)I
    .locals 3
    .param p1, "paramId"    # I

    .prologue
    .line 1108
    invoke-static {p1}, Lcom/atmos/api/DsParams;->FromInt(I)Lcom/atmos/api/DsParams;

    move-result-object v0

    .line 1109
    .local v0, "param":Lcom/atmos/api/DsParams;
    if-nez v0, :cond_0

    .line 1111
    const/4 v2, 0x0

    .line 1115
    :goto_0
    return v2

    .line 1114
    :cond_0
    invoke-virtual {v0}, Lcom/atmos/api/DsParams;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "parameter":Ljava/lang/String;
    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getParameter(II)[I
    .locals 7
    .param p1, "profile"    # I
    .param p2, "paramId"    # I

    .prologue
    .line 1076
    const/4 v3, 0x0

    .line 1077
    .local v3, "values":[I
    const-string v5, "DsManager"

    const-string v6, "getParameter"

    invoke-static {v5, v6}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-static {p2}, Lcom/atmos/api/DsParams;->FromInt(I)Lcom/atmos/api/DsParams;

    move-result-object v1

    .line 1080
    .local v1, "param":Lcom/atmos/api/DsParams;
    if-nez v1, :cond_0

    move-object v4, v3

    .line 1097
    .end local v3    # "values":[I
    .local v4, "values":[I
    :goto_0
    return-object v4

    .line 1085
    .end local v4    # "values":[I
    .restart local v3    # "values":[I
    :cond_0
    invoke-virtual {v1}, Lcom/atmos/api/DsParams;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1088
    .local v2, "parameter":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Lcom/atmos/ds/DsProfileSettings;->getParameter(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 1097
    .end local v3    # "values":[I
    .restart local v4    # "values":[I
    goto :goto_0

    .line 1090
    .end local v4    # "values":[I
    .restart local v3    # "values":[I
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DsManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1094
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getProfileCount()I
    .locals 2

    .prologue
    .line 360
    const-string v0, "DsManager"

    const-string v1, "getProfileCount"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x6

    return v0
.end method

.method public getProfileModified(I)I
    .locals 19
    .param p1, "profile"    # I

    .prologue
    .line 804
    const-string v17, "DsManager"

    const-string v18, "getProfileModified"

    invoke-static/range {v17 .. v18}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v13, 0x0

    .line 808
    .local v13, "modifiedValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, "currentName":Ljava/lang/String;
    const/16 v17, 0x4

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    const/16 v17, 0x6

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getDefaultName()Ljava/lang/String;

    move-result-object v5

    .line 812
    .local v5, "defaultName":Ljava/lang/String;
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 814
    or-int/lit8 v13, v13, 0x2

    .line 819
    .end local v5    # "defaultName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getAllSettings()Lcom/atmos/ds/DsAkSettings;

    move-result-object v3

    .line 820
    .local v3, "akDefaultSettings":Lcom/atmos/ds/DsAkSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getAllSettings()Lcom/atmos/ds/DsAkSettings;

    move-result-object v2

    .line 821
    .local v2, "akCurrentSettings":Lcom/atmos/ds/DsAkSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getParamsSaved()[Ljava/lang/Object;

    move-result-object v16

    .line 822
    .local v16, "params":[Ljava/lang/Object;
    if-eqz v16, :cond_3

    .line 824
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 826
    aget-object v14, v16, v9

    check-cast v14, Ljava/lang/String;

    .line 827
    .local v14, "param":Ljava/lang/String;
    invoke-static {v14}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v15

    .line 828
    .local v15, "paramLen":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v15, :cond_1

    .line 830
    invoke-virtual {v2, v14, v12}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual {v3, v14, v12}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 832
    or-int/lit8 v13, v13, 0x1

    .line 824
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 828
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 839
    .end local v9    # "i":I
    .end local v12    # "j":I
    .end local v14    # "param":Ljava/lang/String;
    .end local v15    # "paramLen":I
    :cond_3
    and-int/lit8 v17, v13, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getIeqPreset()I

    move-result v11

    .line 843
    .local v11, "ieqDefaultIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getIeqPreset()I

    move-result v10

    .line 844
    .local v10, "ieqCurrentIndex":I
    if-eq v10, v11, :cond_4

    .line 846
    or-int/lit8 v13, v13, 0x1

    .line 850
    .end local v10    # "ieqCurrentIndex":I
    .end local v11    # "ieqDefaultIndex":I
    :cond_4
    and-int/lit8 v17, v13, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getGeqGainArray()[[I

    move-result-object v8

    .line 854
    .local v8, "geqDefaultSettings":[[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Lcom/atmos/ds/DsProfileSettings;->getGeqGainArray()[[I

    move-result-object v7

    .line 855
    .local v7, "geqCurrentSettings":[[I
    const-string v17, "gebf"

    invoke-static/range {v17 .. v17}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v6

    .line 856
    .local v6, "gebfLen":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 858
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    if-ge v12, v6, :cond_5

    .line 860
    aget-object v17, v7, v9

    aget v17, v17, v12

    aget-object v18, v8, v9

    aget v18, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 862
    or-int/lit8 v13, v13, 0x1

    .line 856
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 858
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 869
    .end local v6    # "gebfLen":I
    .end local v7    # "geqCurrentSettings":[[I
    .end local v8    # "geqDefaultSettings":[[I
    .end local v9    # "i":I
    .end local v12    # "j":I
    :cond_7
    return v13
.end method

.method public getProfileName(I)Lcom/atmos/api/DsProfileName;
    .locals 7
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 585
    const-string v4, "DsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProfileName: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/atmos/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v3, 0x0

    .line 587
    .local v3, "ret":Z
    new-instance v2, Lcom/atmos/api/DsProfileName;

    invoke-direct {v2}, Lcom/atmos/api/DsProfileName;-><init>()V

    .line 589
    .local v2, "profileName":Lcom/atmos/api/DsProfileName;
    if-ltz p1, :cond_1

    const/4 v4, 0x6

    if-ge p1, v4, :cond_1

    .line 591
    const/4 v4, 0x4

    if-lt p1, v4, :cond_0

    .line 593
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/atmos/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "currentName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/atmos/api/DsProfileName;->setCurrentName(Ljava/lang/String;)V

    .line 595
    iget-object v4, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/atmos/ds/DsProfileSettings;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "defaultName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/atmos/api/DsProfileName;->setDefaultName(Ljava/lang/String;)V

    .line 597
    const/4 v3, 0x1

    .line 610
    return-object v2

    .line 601
    .end local v0    # "currentName":Ljava/lang/String;
    .end local v1    # "defaultName":Ljava/lang/String;
    :cond_0
    const-string v4, "DsManager"

    const-string v5, "getProfileName: Name of this Profile is not gettable"

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 607
    :cond_1
    const-string v4, "DsManager"

    const-string v5, "getProfileName: Invalid profile input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public getSelectedProfile()I
    .locals 2

    .prologue
    .line 428
    const-string v0, "DsManager"

    const-string v1, "getSelectedProfile"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget v0, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    return v0
.end method

.method public getVisualizerData([F[F)I
    .locals 9
    .param p1, "gains"    # [F
    .param p2, "excitations"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 664
    const-string v7, "DsManager"

    const-string v8, "getVisualizerData"

    invoke-static {v7, v8}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v7

    if-nez v7, :cond_0

    .line 667
    new-instance v7, Landroid/os/DeadObjectException;

    invoke-direct {v7}, Landroid/os/DeadObjectException;-><init>()V

    throw v7

    .line 670
    :cond_0
    iget-object v7, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v7}, Lcom/atmos/ds/DsEffect;->getVisualizerData()[I

    move-result-object v6

    .line 671
    .local v6, "visualizerData":[I
    if-nez v6, :cond_1

    .line 673
    const/4 v7, 0x0

    .line 691
    :goto_0
    return v7

    .line 676
    :cond_1
    const/high16 v5, 0x41800000    # 16.0f

    .line 677
    .local v5, "scale":F
    const-string v7, "vcbg"

    invoke-static {v7}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 678
    .local v2, "maxLen":I
    array-length v7, p1

    if-ge v7, v2, :cond_2

    array-length v4, p1

    .line 679
    .local v4, "numGains":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 681
    aget v7, v6, v0

    int-to-float v7, v7

    div-float/2addr v7, v5

    aput v7, p1, v0

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v4    # "numGains":I
    :cond_2
    move v4, v2

    .line 678
    goto :goto_1

    .line 683
    .restart local v0    # "i":I
    .restart local v4    # "numGains":I
    :cond_3
    array-length v7, p2

    if-ge v7, v2, :cond_4

    array-length v3, p2

    .line 684
    .local v3, "numExcitations":I
    :goto_3
    const/4 v1, 0x0

    .line 685
    .local v1, "index":I
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_5

    .line 687
    add-int v1, v0, v2

    .line 688
    aget v7, v6, v1

    int-to-float v7, v7

    div-float/2addr v7, v5

    aput v7, p2, v0

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v1    # "index":I
    .end local v3    # "numExcitations":I
    :cond_4
    move v3, v2

    .line 683
    goto :goto_3

    .line 691
    .restart local v1    # "index":I
    .restart local v3    # "numExcitations":I
    :cond_5
    add-int v7, v4, v3

    goto :goto_0
.end method

.method public resetProfile(I)Z
    .locals 14
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    .line 445
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 450
    :cond_0
    const/4 v11, 0x0

    .line 451
    .local v11, "ret":Z
    const-string v10, ""

    .line 453
    .local v10, "lastDefName":Ljava/lang/String;
    const-string v0, "DsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetProfile: \""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/atmos/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-ltz p1, :cond_4

    const/4 v0, 0x6

    if-ge p1, v0, :cond_4

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "displayName":Ljava/lang/String;
    if-lt p1, v13, :cond_3

    .line 459
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/atmos/ds/DsProfileSettings;->getDefaultName()Ljava/lang/String;

    move-result-object v10

    .line 460
    const-string v1, ""

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/atmos/ds/DsProfileSettings;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/atmos/ds/DsProfileSettings;->getAllSettings()Lcom/atmos/ds/DsAkSettings;

    move-result-object v3

    .line 469
    .local v3, "akSettings":Lcom/atmos/ds/DsAkSettings;
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/atmos/ds/DsProfileSettings;->isCustom()Z

    move-result v4

    .line 470
    .local v4, "custom":Z
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/atmos/ds/DsProfileSettings;->getCategory()Lcom/atmos/ds/DsProfileSettings$Category;

    move-result-object v5

    .line 471
    .local v5, "category":Lcom/atmos/ds/DsProfileSettings$Category;
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/atmos/ds/DsProfileSettings;->getIeqPreset()I

    move-result v6

    .line 475
    .local v6, "ieqPreset":I
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-static {}, Lcom/atmos/ds/DsProfileSettings;->getBasicProfileParams()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 476
    .local v8, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    new-instance v0, Lcom/atmos/ds/DsProfileSettings;

    const/4 v7, 0x0

    check-cast v7, [[I

    invoke-direct/range {v0 .. v8}, Lcom/atmos/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/atmos/ds/DsAkSettings;ZLcom/atmos/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    aput-object v0, v12, p1

    .line 477
    if-lt p1, v13, :cond_1

    .line 479
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0, v10}, Lcom/atmos/ds/DsProfileSettings;->setDefaultName(Ljava/lang/String;)V

    .line 481
    :cond_1
    iget v0, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    if-ne p1, v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    iget-object v7, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Lcom/atmos/ds/DsEffect;->setAllProfileSettings(Lcom/atmos/ds/DsProfileSettings;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_2
    const/4 v11, 0x1

    .line 498
    return v11

    .line 464
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "akSettings":Lcom/atmos/ds/DsAkSettings;
    .end local v4    # "custom":Z
    .end local v5    # "category":Lcom/atmos/ds/DsProfileSettings$Category;
    .end local v6    # "ieqPreset":I
    .end local v8    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/atmos/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 486
    .restart local v2    # "description":Ljava/lang/String;
    .restart local v3    # "akSettings":Lcom/atmos/ds/DsAkSettings;
    .restart local v4    # "custom":Z
    .restart local v5    # "category":Lcom/atmos/ds/DsProfileSettings$Category;
    .restart local v6    # "ieqPreset":I
    :catch_0
    move-exception v9

    .line 488
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "DsManager"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 495
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "akSettings":Lcom/atmos/ds/DsAkSettings;
    .end local v4    # "custom":Z
    .end local v5    # "category":Lcom/atmos/ds/DsProfileSettings$Category;
    .end local v6    # "ieqPreset":I
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v0, "DsManager"

    const-string v7, "resetProfile: Invalid profile input"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public restoreCurrentProfiles()V
    .locals 4

    .prologue
    .line 243
    const-string v0, "DsManager"

    const-string v1, "Ds restoreCurrentProfiles"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    sget-object v1, Lcom/atmos/ds/DsManager;->DS_CURRENT_DIR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/atmos/ds/DsManager;->loadSettings(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->getCurrentSettings()[Lcom/atmos/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    .line 248
    const-string v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current profile settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    iget v3, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/atmos/ds/DsProfileSettings;->getCurrentProfileSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/atmos/ds/DsManager;->setInitStatus(Z)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "DsManager"

    const-string v1, "loadSettings FAILED! DS settings are NOT loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveDsStateAndSettings()V
    .locals 5

    .prologue
    .line 263
    const-string v0, "DsManager"

    const-string v1, "saveDsStateAndSettings"

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/atmos/ds/DsManager;->isDsOn_:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iget v1, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/atmos/ds/DsProfileSettings;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/atmos/ds/DsProfileSettings;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/atmos/ds/DsStoreUtil;->saveDsState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    invoke-static {v0}, Lcom/atmos/ds/DsStoreUtil;->saveDsProfileSettings([Lcom/atmos/ds/DsProfileSettings;)V

    .line 266
    return-void

    .line 264
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setDsOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDsOn: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 283
    :cond_0
    iput-boolean p1, p0, Lcom/atmos/ds/DsManager;->isDsOn_:Z

    .line 285
    const-string v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ds on/off setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v0, p1}, Lcom/atmos/ds/DsEffect;->setEnabled(Z)I

    .line 287
    return-void
.end method

.method public setDsSuspended(Z)V
    .locals 3
    .param p1, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDsSuspended("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 304
    :cond_0
    iput-boolean p1, p0, Lcom/atmos/ds/DsManager;->isDsSuspended_:Z

    .line 305
    return-void
.end method

.method public setIeqPreset(II)Z
    .locals 5
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 741
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    .line 744
    :cond_0
    const/4 v1, 0x0

    .line 745
    .local v1, "ret":Z
    const-string v2, "DsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIeqPreset: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    if-ltz p1, :cond_1

    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    .line 749
    if-ltz p2, :cond_2

    const/4 v2, 0x4

    if-ge p2, v2, :cond_2

    .line 751
    iget-object v2, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Lcom/atmos/ds/DsProfileSettings;->setIeqPreset(I)V

    .line 752
    iget-object v2, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    iget-object v3, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/atmos/ds/DsEffect;->setAllProfileSettings(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v0

    .line 753
    .local v0, "iRet":I
    if-nez v0, :cond_1

    .line 755
    const/4 v1, 0x1

    .line 764
    .end local v0    # "iRet":I
    :cond_1
    return v1

    .line 760
    :cond_2
    const-string v2, "DsManager"

    const-string v3, "setIeqPreset: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setParameter(II[I)Z
    .locals 14
    .param p1, "profile"    # I
    .param p2, "paramId"    # I
    .param p3, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 985
    const/4 v9, 0x1

    .line 987
    .local v9, "ret":Z
    const-string v12, "DsManager"

    const-string v13, "setParameter"

    invoke-static {v12, v13}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v12

    if-nez v12, :cond_0

    .line 990
    new-instance v12, Landroid/os/DeadObjectException;

    invoke-direct {v12}, Landroid/os/DeadObjectException;-><init>()V

    throw v12

    .line 993
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/atmos/api/DsParams;->FromInt(I)Lcom/atmos/api/DsParams;

    move-result-object v6

    .line 994
    .local v6, "param":Lcom/atmos/api/DsParams;
    if-nez v6, :cond_1

    move v10, v9

    .line 1064
    .end local v9    # "ret":Z
    .local v10, "ret":I
    :goto_0
    return v10

    .line 998
    .end local v10    # "ret":I
    .restart local v9    # "ret":Z
    :cond_1
    invoke-virtual {v6}, Lcom/atmos/api/DsParams;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1000
    .local v8, "parameter":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v12, v0

    new-array v11, v12, [I

    .line 1001
    .local v11, "settings":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v3, v12, :cond_6

    .line 1003
    const-string v12, "vdhe"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "vspe"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1005
    :cond_2
    const-string v12, "vspe"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1007
    invoke-static {}, Lcom/atmos/ds/DsProperty;->getMonoSpeakerProperty()Ljava/lang/String;

    move-result-object v5

    .line 1008
    .local v5, "monoSpeaker":Ljava/lang/String;
    const-string v12, "true"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move v10, v9

    .line 1010
    .restart local v10    # "ret":I
    goto :goto_0

    .line 1013
    .end local v5    # "monoSpeaker":Ljava/lang/String;
    .end local v10    # "ret":I
    :cond_3
    aget v12, p3, v3

    if-nez v12, :cond_4

    const/4 v12, 0x0

    :goto_2
    aput v12, v11, v3

    .line 1001
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1013
    :cond_4
    const/4 v12, 0x2

    goto :goto_2

    .line 1017
    :cond_5
    aget v12, p3, v3

    aput v12, v11, v3

    goto :goto_3

    .line 1022
    :cond_6
    :try_start_0
    iget-object v12, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12, v8, v11}, Lcom/atmos/ds/DsProfileSettings;->setParameter(Ljava/lang/String;[I)V

    .line 1025
    iget v12, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    if-ne p1, v12, :cond_7

    .line 1027
    iget-object v12, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    iget-object v13, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v13, v13, p1

    invoke-virtual {v12, v13, v8}, Lcom/atmos/ds/DsEffect;->setSingleSetting(Lcom/atmos/ds/DsProfileSettings;Ljava/lang/String;)I

    move-result v4

    .line 1028
    .local v4, "iRet":I
    if-eqz v4, :cond_7

    .line 1030
    const/4 v9, 0x0

    .line 1033
    .end local v4    # "iRet":I
    :cond_7
    invoke-static {v8}, Lcom/atmos/ds/DsManager;->isBasicProfileParam(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    if-eqz v9, :cond_9

    .line 1036
    const/4 v7, 0x0

    .line 1037
    .local v7, "paramModified":Z
    iget-object v12, p0, Lcom/atmos/ds/DsManager;->defaultProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Lcom/atmos/ds/DsProfileSettings;->getAllSettings()Lcom/atmos/ds/DsAkSettings;

    move-result-object v1

    .line 1038
    .local v1, "defaultSettings":Lcom/atmos/ds/DsAkSettings;
    const/4 v3, 0x0

    :goto_4
    array-length v12, v11

    if-ge v3, v12, :cond_8

    .line 1040
    aget v12, v11, v3

    invoke-virtual {v1, v8, v3}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v13

    if-eq v12, v13, :cond_a

    .line 1042
    const/4 v7, 0x1

    .line 1047
    :cond_8
    if-eqz v7, :cond_b

    .line 1049
    iget-object v12, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12, v8}, Lcom/atmos/ds/DsProfileSettings;->addParamSaved(Ljava/lang/String;)V

    .end local v1    # "defaultSettings":Lcom/atmos/ds/DsAkSettings;
    .end local v7    # "paramModified":Z
    :cond_9
    :goto_5
    move v10, v9

    .line 1064
    .restart local v10    # "ret":I
    goto/16 :goto_0

    .line 1038
    .end local v10    # "ret":I
    .restart local v1    # "defaultSettings":Lcom/atmos/ds/DsAkSettings;
    .restart local v7    # "paramModified":Z
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1053
    :cond_b
    iget-object v12, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12, v8}, Lcom/atmos/ds/DsProfileSettings;->removeParamSaved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1057
    .end local v1    # "defaultSettings":Lcom/atmos/ds/DsAkSettings;
    .end local v7    # "paramModified":Z
    :catch_0
    move-exception v2

    .line 1059
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "DsManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1061
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string v13, "Fail to set the parameter"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public setProfileName(ILcom/atmos/api/DsProfileName;)Z
    .locals 5
    .param p1, "profile"    # I
    .param p2, "name"    # Lcom/atmos/api/DsProfileName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x14

    .line 514
    const-string v1, "DsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProfileNames: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/atmos/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    .line 518
    .local v0, "ret":Z
    if-eqz p2, :cond_6

    .line 520
    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_0

    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 524
    :cond_0
    const-string v1, "DsManager"

    const-string v2, "setProfileName: Invalid profile length input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 528
    :cond_1
    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 530
    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_2

    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 532
    :cond_2
    const-string v1, "DsManager"

    const-string v2, "setProfileName: Invalid profile length input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 536
    :cond_3
    if-ltz p1, :cond_9

    const/4 v1, 0x6

    if-ge p1, v1, :cond_9

    .line 538
    const/4 v1, 0x4

    if-lt p1, v1, :cond_8

    .line 540
    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 542
    iget-object v1, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getDefaultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/atmos/ds/DsProfileSettings;->setDefaultName(Ljava/lang/String;)V

    .line 544
    :cond_4
    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 546
    iget-object v1, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/atmos/ds/DsProfileSettings;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 548
    iget-object v1, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v1, v1, p1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/atmos/ds/DsProfileSettings;->setDisplayName(Ljava/lang/String;)V

    .line 556
    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 570
    :cond_6
    return v0

    .line 552
    :cond_7
    iget-object v1, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {p2}, Lcom/atmos/api/DsProfileName;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/atmos/ds/DsProfileSettings;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_8
    const-string v1, "DsManager"

    const-string v2, "setProfileName: Name of this Profile is not settable"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 566
    :cond_9
    const-string v1, "DsManager"

    const-string v2, "setProfileName: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setProfileProperties(I)V
    .locals 5
    .param p1, "profile"    # I

    .prologue
    const/4 v4, 0x0

    .line 1227
    sget-object v3, Lcom/atmos/api/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/atmos/ds/DsProperty;->setProfileNameProperty(Ljava/lang/String;)V

    .line 1228
    iget-object v3, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/atmos/ds/DsProfileSettings;->getAllSettings()Lcom/atmos/ds/DsAkSettings;

    move-result-object v1

    .line 1230
    .local v1, "settings":Lcom/atmos/ds/DsAkSettings;
    const-string v3, "deon"

    invoke-virtual {v1, v3, v4}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "on"

    .line 1231
    .local v2, "state":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/atmos/ds/DsProperty;->setDialogEnhancerProperty(Ljava/lang/String;)V

    .line 1233
    const-string v3, "vdhe"

    invoke-virtual {v1, v3, v4}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "on"

    .line 1234
    :goto_1
    invoke-static {v2}, Lcom/atmos/ds/DsProperty;->setHeadphoneVirtualizerProperty(Ljava/lang/String;)V

    .line 1236
    const-string v3, "vspe"

    invoke-virtual {v1, v3, v4}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "on"

    .line 1237
    :goto_2
    invoke-static {v2}, Lcom/atmos/ds/DsProperty;->setSpeakerVirtualizerProperty(Ljava/lang/String;)V

    .line 1239
    const-string v3, "dvle"

    invoke-virtual {v1, v3, v4}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "on"

    .line 1240
    :goto_3
    invoke-static {v2}, Lcom/atmos/ds/DsProperty;->setVolumeLevellerProperty(Ljava/lang/String;)V

    .line 1242
    const-string v3, "geon"

    invoke-virtual {v1, v3, v4}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "on"

    .line 1243
    :goto_4
    invoke-static {v2}, Lcom/atmos/ds/DsProperty;->setGeqStateProperty(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0, p1}, Lcom/atmos/ds/DsManager;->getIeqPreset(I)I

    move-result v0

    .line 1246
    .local v0, "index":I
    if-eqz v0, :cond_5

    const-string v2, "on"

    .line 1247
    :goto_5
    invoke-static {v2}, Lcom/atmos/ds/DsProperty;->setIeqStateProperty(Ljava/lang/String;)V

    .line 1248
    sget-object v3, Lcom/atmos/api/DsCommon;->IEQ_PRESET_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/atmos/ds/DsProperty;->setIeqPresetProperty(Ljava/lang/String;)V

    .line 1249
    return-void

    .line 1230
    .end local v0    # "index":I
    .end local v2    # "state":Ljava/lang/String;
    :cond_0
    const-string v2, "off"

    goto :goto_0

    .line 1233
    .restart local v2    # "state":Ljava/lang/String;
    :cond_1
    const-string v2, "off"

    goto :goto_1

    .line 1236
    :cond_2
    const-string v2, "off"

    goto :goto_2

    .line 1239
    :cond_3
    const-string v2, "off"

    goto :goto_3

    .line 1242
    :cond_4
    const-string v2, "off"

    goto :goto_4

    .line 1246
    .restart local v0    # "index":I
    :cond_5
    const-string v2, "off"

    goto :goto_5
.end method

.method public setSelectedProfile(I)Z
    .locals 5
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    .line 399
    :cond_0
    const/4 v1, 0x0

    .line 401
    .local v1, "ret":Z
    if-ltz p1, :cond_2

    const/4 v2, 0x6

    if-ge p1, v2, :cond_2

    .line 403
    const-string v2, "DsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedProfile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    iget-object v3, p0, Lcom/atmos/ds/DsManager;->currentProfiles_:[Lcom/atmos/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Lcom/atmos/ds/DsEffect;->setAllProfileSettings(Lcom/atmos/ds/DsProfileSettings;)I

    move-result v0

    .line 405
    .local v0, "iRet":I
    if-nez v0, :cond_1

    .line 407
    iput p1, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    .line 408
    iget v2, p0, Lcom/atmos/ds/DsManager;->selectedProfile_:I

    invoke-static {v2}, Lcom/atmos/service/DsService;->setDsProfileState(I)V

    .line 409
    const/4 v1, 0x1

    .line 418
    :cond_1
    return v1

    .line 414
    .end local v0    # "iRet":I
    :cond_2
    const-string v2, "DsManager"

    const-string v3, "setSelectedProfile: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setVisualizerOn(Z)I
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 627
    const-string v0, "DsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisualizerOn: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/atmos/ds/DsManager;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v0, p1}, Lcom/atmos/ds/DsEffect;->setVisualizerOn(Z)I

    move-result v0

    return v0
.end method

.method public validateDsEffect()Z
    .locals 3

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/atmos/ds/DsManager;->dsEffect_:Lcom/atmos/ds/DsEffect;

    invoke-virtual {v1}, Lcom/atmos/ds/DsEffect;->hasControl()Z

    move-result v0

    .line 1195
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 1197
    const-string v1, "DsManager"

    const-string v2, "Cannot control the DsEffect, trying to recreate..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-direct {p0}, Lcom/atmos/ds/DsManager;->recreateDsEffect()Z

    move-result v0

    .line 1201
    :cond_0
    return v0
.end method
