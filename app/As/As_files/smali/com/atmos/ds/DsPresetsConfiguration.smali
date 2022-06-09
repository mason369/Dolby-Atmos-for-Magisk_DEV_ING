.class public Lcom/atmos/ds/DsPresetsConfiguration;
.super Ljava/lang/Object;
.source "DsPresetsConfiguration.java"


# static fields
.field private static currentProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/atmos/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/atmos/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static ieqSettingsAdded:Z

.field private static offProfile_:Lcom/atmos/ds/DsProfileSettings;

.field private static xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;

.field private static xmlParserDefault:Lcom/atmos/ds/DsConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    .line 26
    sput-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/atmos/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    return-void
.end method

.method private static addIeqSettings()V
    .locals 8

    .prologue
    .line 155
    sget-object v7, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    invoke-virtual {v7}, Lcom/atmos/ds/DsConfigParser;->getIeqSettingArray()[[I

    move-result-object v4

    .line 156
    .local v4, "ieqSettings":[[I
    const/4 v2, 0x0

    .line 157
    .local v2, "ieqIndex":I
    if-eqz v4, :cond_1

    .line 159
    move-object v0, v4

    .local v0, "arr$":[[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v3, v2

    .end local v2    # "ieqIndex":I
    .local v3, "ieqIndex":I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    .line 160
    .local v6, "settings":[I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ieqIndex":I
    .restart local v2    # "ieqIndex":I
    invoke-static {v3, v6}, Lcom/atmos/ds/DsProfileSettings;->setIeqBandTargets(I[I)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "ieqIndex":I
    .restart local v3    # "ieqIndex":I
    goto :goto_0

    .end local v6    # "settings":[I
    :cond_0
    move v2, v3

    .line 162
    .end local v0    # "arr$":[[I
    .end local v1    # "i$":I
    .end local v3    # "ieqIndex":I
    .end local v5    # "len$":I
    .restart local v2    # "ieqIndex":I
    :cond_1
    return-void
.end method

.method private static addNewProfileSettings(Ljava/lang/String;Lcom/atmos/ds/DsProfileSettings$Category;)V
    .locals 26
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Lcom/atmos/ds/DsProfileSettings$Category;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 183
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/atmos/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v25

    .line 184
    .local v25, "profileSettings":[[I
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/atmos/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 185
    .local v24, "profileName":Ljava/lang/String;
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/atmos/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v23

    .line 188
    .local v23, "profileIeq":I
    sget-object v3, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    const/4 v2, 0x0

    check-cast v2, [[I

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v2}, Lcom/atmos/ds/DsConfigParser;->getGeqSettingArray(Ljava/lang/String;[[I)[[I

    move-result-object v9

    .line 190
    .local v9, "profileGebg":[[I
    if-eqz v25, :cond_7

    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 194
    :try_start_0
    sget-boolean v2, Lcom/atmos/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    if-nez v2, :cond_0

    .line 196
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->addIeqSettings()V

    .line 197
    const/4 v2, 0x1

    sput-boolean v2, Lcom/atmos/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    .line 199
    :cond_0
    new-instance v5, Lcom/atmos/ds/DsAkSettings;

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Lcom/atmos/ds/DsAkSettings;-><init>([[I)V

    .line 200
    .local v5, "allSettings":Lcom/atmos/ds/DsAkSettings;
    sget-object v11, Lcom/atmos/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    new-instance v2, Lcom/atmos/ds/DsProfileSettings;

    if-eqz v24, :cond_1

    move-object/from16 v3, v24

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The preset loaded for"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, -0x1

    move/from16 v0, v23

    if-eq v0, v7, :cond_2

    move/from16 v8, v23

    :goto_1
    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v10}, Lcom/atmos/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/atmos/ds/DsAkSettings;ZLcom/atmos/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lcom/atmos/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v21

    .line 205
    .local v21, "currentSettings":[[I
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;

    invoke-virtual {v2}, Lcom/atmos/ds/DsConfigParser;->getSavedParams()Ljava/util/HashSet;

    move-result-object v18

    .line 206
    .local v18, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/atmos/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 207
    .local v20, "currentName":Ljava/lang/String;
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/atmos/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v19

    .line 208
    .local v19, "currentIeq":I
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v9}, Lcom/atmos/ds/DsConfigParser;->getGeqSettingArray(Ljava/lang/String;[[I)[[I

    move-result-object v17

    .line 211
    .local v17, "geqSettings":[[I
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/atmos/ds/DsPresetsConfiguration;->combineSettings([[I[[I)[[I

    move-result-object v25

    .line 212
    move/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/atmos/ds/DsPresetsConfiguration;->resolveIeqPreset(II)I

    move-result v23

    .line 213
    sget-object v2, Lcom/atmos/ds/DsProfileSettings$Category;->CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_4

    .line 215
    if-eqz v20, :cond_3

    move-object/from16 v24, v20

    .line 222
    :goto_2
    new-instance v5, Lcom/atmos/ds/DsAkSettings;

    .end local v5    # "allSettings":Lcom/atmos/ds/DsAkSettings;
    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Lcom/atmos/ds/DsAkSettings;-><init>([[I)V

    .line 223
    .restart local v5    # "allSettings":Lcom/atmos/ds/DsAkSettings;
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    new-instance v10, Lcom/atmos/ds/DsProfileSettings;

    if-eqz v24, :cond_5

    move-object/from16 v11, v24

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The current settings loaded for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_6

    move/from16 v16, v23

    :goto_4
    move-object v13, v5

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v18}, Lcom/atmos/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/atmos/ds/DsAkSettings;ZLcom/atmos/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 237
    return-void

    .end local v17    # "geqSettings":[[I
    .end local v18    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19    # "currentIeq":I
    .end local v20    # "currentName":Ljava/lang/String;
    .end local v21    # "currentSettings":[[I
    :cond_1
    move-object/from16 v3, p0

    .line 200
    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 215
    .restart local v17    # "geqSettings":[[I
    .restart local v18    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "currentIeq":I
    .restart local v20    # "currentName":Ljava/lang/String;
    .restart local v21    # "currentSettings":[[I
    :cond_3
    const-string v24, ""

    goto :goto_2

    .line 219
    :cond_4
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/atmos/ds/DsPresetsConfiguration;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    goto :goto_2

    :cond_5
    move-object/from16 v11, p0

    .line 223
    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 226
    .end local v5    # "allSettings":Lcom/atmos/ds/DsAkSettings;
    .end local v17    # "geqSettings":[[I
    .end local v18    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19    # "currentIeq":I
    .end local v20    # "currentName":Ljava/lang/String;
    .end local v21    # "currentSettings":[[I
    :catch_0
    move-exception v22

    .line 228
    .local v22, "e":Ljava/lang/Exception;
    const-string v2, "DsPresetsConfiguration"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exception in creating profile settings"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Settings are NOT ready yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static addOffProfileSettings()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 252
    sget-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    const-string v1, "off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/atmos/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v12

    .line 253
    .local v12, "profileSettings":[[I
    sget-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/atmos/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, "profileName":Ljava/lang/String;
    sget-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/atmos/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v10

    .line 255
    .local v10, "profileIeq":I
    if-eqz v12, :cond_2

    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    :try_start_0
    new-instance v3, Lcom/atmos/ds/DsAkSettings;

    invoke-direct {v3, v12}, Lcom/atmos/ds/DsAkSettings;-><init>([[I)V

    .line 260
    .local v3, "allSettings":Lcom/atmos/ds/DsAkSettings;
    new-instance v0, Lcom/atmos/ds/DsProfileSettings;

    if-eqz v11, :cond_1

    move-object v1, v11

    :goto_0
    const-string v2, "The setting used for switching off Ds effect."

    const/4 v4, 0x0

    sget-object v5, Lcom/atmos/ds/DsProfileSettings$Category;->CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

    const/4 v7, -0x1

    if-eq v10, v7, :cond_0

    move v6, v10

    :cond_0
    const/4 v7, 0x0

    check-cast v7, [[I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/atmos/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/atmos/ds/DsAkSettings;ZLcom/atmos/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    sput-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->offProfile_:Lcom/atmos/ds/DsProfileSettings;

    .line 274
    return-void

    .line 260
    :cond_1
    const-string v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v3    # "allSettings":Lcom/atmos/ds/DsAkSettings;
    :catch_0
    move-exception v9

    .line 265
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "DsPresetsConfiguration"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Exception in creating off profile settings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v0, "DsPresetsConfiguration"

    const-string v1, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Settings are NOT ready yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static combineSettings([[I[[I)[[I
    .locals 5
    .param p0, "defaultSettings"    # [[I
    .param p1, "currentSettings"    # [[I

    .prologue
    const/4 v4, 0x0

    .line 287
    if-nez p0, :cond_0

    move v1, v4

    .line 288
    .local v1, "defaultLength":I
    :goto_0
    if-nez p1, :cond_1

    move v0, v4

    .line 289
    .local v0, "currentLength":I
    :goto_1
    add-int v3, v1, v0

    .line 291
    .local v3, "settingLength":I
    if-nez v3, :cond_2

    .line 292
    const/4 v4, 0x0

    check-cast v4, [[I

    .line 301
    :goto_2
    return-object v4

    .line 287
    .end local v0    # "currentLength":I
    .end local v1    # "defaultLength":I
    .end local v3    # "settingLength":I
    :cond_0
    array-length v1, p0

    goto :goto_0

    .line 288
    .restart local v1    # "defaultLength":I
    :cond_1
    array-length v0, p1

    goto :goto_1

    .line 294
    .restart local v0    # "currentLength":I
    .restart local v3    # "settingLength":I
    :cond_2
    new-array v2, v3, [[I

    .line 296
    .local v2, "settingArray":[[I
    if-eqz v1, :cond_3

    .line 297
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_3
    if-eqz v0, :cond_4

    .line 299
    invoke-static {p1, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v4, v2

    .line 301
    goto :goto_2
.end method

.method static createProfileSettings()Z
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x1

    .line 99
    .local v1, "ret":Z
    :try_start_0
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 100
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 101
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/atmos/ds/DsProfileSettings$Category;->MOVIE:Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Lcom/atmos/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Lcom/atmos/ds/DsProfileSettings$Category;)V

    .line 102
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Lcom/atmos/ds/DsProfileSettings$Category;->MUSIC:Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Lcom/atmos/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Lcom/atmos/ds/DsProfileSettings$Category;)V

    .line 103
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lcom/atmos/ds/DsProfileSettings$Category;->GAME:Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Lcom/atmos/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Lcom/atmos/ds/DsProfileSettings$Category;)V

    .line 104
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Lcom/atmos/ds/DsProfileSettings$Category;->VOICE:Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Lcom/atmos/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Lcom/atmos/ds/DsProfileSettings$Category;)V

    .line 105
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    sget-object v3, Lcom/atmos/ds/DsProfileSettings$Category;->CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Lcom/atmos/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Lcom/atmos/ds/DsProfileSettings$Category;)V

    .line 106
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    sget-object v3, Lcom/atmos/ds/DsProfileSettings$Category;->CUSTOMIZED:Lcom/atmos/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Lcom/atmos/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Lcom/atmos/ds/DsProfileSettings$Category;)V

    .line 107
    invoke-static {}, Lcom/atmos/ds/DsPresetsConfiguration;->addOffProfileSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DsPresetsConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    .line 113
    goto :goto_0
.end method

.method public static getCurrentSettings()[Lcom/atmos/ds/DsProfileSettings;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    sget-object v1, Lcom/atmos/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/atmos/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/atmos/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getDefaultSettings()[Lcom/atmos/ds/DsProfileSettings;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    sget-object v1, Lcom/atmos/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/atmos/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/atmos/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getOffProfileSettings()Lcom/atmos/ds/DsProfileSettings;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->offProfile_:Lcom/atmos/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getParserStatusFlag()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    invoke-virtual {v0}, Lcom/atmos/ds/DsConfigParser;->getParserStatusFlag()Z

    move-result v0

    return v0
.end method

.method private static resolveIeqPreset(II)I
    .locals 1
    .param p0, "defaultIeq"    # I
    .param p1, "currentIeq"    # I

    .prologue
    .line 329
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .end local p1    # "currentIeq":I
    :goto_0
    return p1

    .restart local p1    # "currentIeq":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method private static resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "defaultName"    # Ljava/lang/String;
    .param p1, "currentName"    # Ljava/lang/String;

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .end local p1    # "currentName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "currentName":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "currentSettings"    # Ljava/io/InputStream;
    .param p1, "defaultSettings"    # Ljava/io/InputStream;

    .prologue
    .line 42
    const/4 v1, 0x1

    .line 48
    .local v1, "ret":Z
    :try_start_0
    new-instance v2, Lcom/atmos/ds/DsConfigParser;

    invoke-direct {v2, p0}, Lcom/atmos/ds/DsConfigParser;-><init>(Ljava/io/InputStream;)V

    sput-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserCurrent:Lcom/atmos/ds/DsConfigParser;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    if-eqz p1, :cond_1

    .line 60
    :try_start_1
    new-instance v2, Lcom/atmos/ds/DsConfigParser;

    invoke-direct {v2, p1}, Lcom/atmos/ds/DsConfigParser;-><init>(Ljava/io/InputStream;)V

    sput-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    :cond_0
    :goto_1
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "The current settings are invalid. The default settings will be used."

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 64
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "Error in parsing the default settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    .line 66
    goto :goto_1

    .line 68
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    sget-object v2, Lcom/atmos/ds/DsPresetsConfiguration;->xmlParserDefault:Lcom/atmos/ds/DsConfigParser;

    if-nez v2, :cond_0

    .line 70
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "NULL input stream for the default settings."

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x0

    goto :goto_1
.end method
