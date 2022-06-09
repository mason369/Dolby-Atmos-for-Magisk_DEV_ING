.class public Lcom/atmos/ds/DsStoreUtil;
.super Ljava/lang/Object;
.source "DsStoreUtil.java"


# static fields
.field private static DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

.field private static DS_STATE_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/atmos/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    .line 65
    sput-object v0, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    return-void
.end method

.method private static convertArray([[I)[Ljava/lang/String;
    .locals 8
    .param p0, "integerArray"    # [[I

    .prologue
    .line 266
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 267
    .local v5, "stringArray":[Ljava/lang/String;
    const-string v6, "gebf"

    invoke-static {v6}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "gebfLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_1

    .line 271
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 272
    .local v4, "oneStringArray":Ljava/lang/StringBuffer;
    aget-object v3, p0, v1

    .line 273
    .local v3, "oneIntegerSetting":[I
    const-string v6, "gebg=["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_0

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v3, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v0, -0x1

    aget v7, v3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "j":I
    .end local v3    # "oneIntegerSetting":[I
    .end local v4    # "oneStringArray":Ljava/lang/StringBuffer;
    :cond_1
    return-object v5
.end method

.method public static loadDsState()[Ljava/lang/String;
    .locals 14

    .prologue
    .line 88
    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/atmos/api/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    const/4 v13, 0x4

    aget-object v12, v12, v13

    aput-object v12, v0, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/atmos/api/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    const/4 v13, 0x5

    aget-object v12, v12, v13

    aput-object v12, v0, v11

    .line 90
    .local v0, "currentState":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 93
    .local v5, "fileis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    sget-object v11, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v5    # "fileis":Ljava/io/FileInputStream;
    .local v6, "fileis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 104
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 105
    .local v10, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "UTF-8"

    invoke-interface {v10, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 107
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 108
    .local v3, "eventType":I
    const/4 v7, 0x0

    .line 109
    .local v7, "parameterName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 110
    .local v8, "parameterValue":Ljava/lang/String;
    const/4 v9, 0x0

    .line 114
    .local v9, "tagFlag":Z
    :goto_0
    const/4 v11, 0x1

    if-eq v3, v11, :cond_4

    .line 116
    packed-switch v3, :pswitch_data_0

    .line 145
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_0

    .line 95
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fileis":Ljava/io/FileInputStream;
    .end local v7    # "parameterName":Ljava/lang/String;
    .end local v8    # "parameterValue":Ljava/lang/String;
    .end local v9    # "tagFlag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "fileis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot find DS state file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", using default value."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v0

    .line 119
    .end local v5    # "fileis":Ljava/io/FileInputStream;
    .restart local v3    # "eventType":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fileis":Ljava/io/FileInputStream;
    .restart local v7    # "parameterName":Ljava/lang/String;
    .restart local v8    # "parameterValue":Ljava/lang/String;
    .restart local v9    # "tagFlag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    const/4 v9, 0x0

    .line 120
    goto :goto_1

    .line 122
    :pswitch_1
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 123
    const-string v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Text: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-eqz v9, :cond_0

    .line 126
    const-string v11, "DsOn"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 127
    const/4 v11, 0x0

    aput-object v8, v0, v11

    .line 128
    :cond_1
    const-string v11, "CurrentProfile"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 129
    const/4 v11, 0x1

    aput-object v8, v0, v11

    .line 130
    :cond_2
    const-string v11, "Custom1_defaultName"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 131
    const/4 v11, 0x2

    aput-object v8, v0, v11

    .line 132
    :cond_3
    const-string v11, "Custom2_defaultName"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 133
    const/4 v11, 0x3

    aput-object v8, v0, v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 149
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error occurred when parsing"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", using default value."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .line 152
    .end local v6    # "fileis":Ljava/io/FileInputStream;
    .restart local v5    # "fileis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 138
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fileis":Ljava/io/FileInputStream;
    .restart local v6    # "fileis":Ljava/io/FileInputStream;
    :pswitch_2
    const/4 v9, 0x1

    .line 139
    :try_start_5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 140
    const-string v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 155
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "parameterName":Ljava/lang/String;
    .end local v8    # "parameterValue":Ljava/lang/String;
    .end local v9    # "tagFlag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    .line 157
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Erro occurred when parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", using default value."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    move-object v5, v6

    .line 166
    .end local v6    # "fileis":Ljava/io/FileInputStream;
    .restart local v5    # "fileis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 147
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "fileis":Ljava/io/FileInputStream;
    .restart local v3    # "eventType":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fileis":Ljava/io/FileInputStream;
    .restart local v7    # "parameterName":Ljava/lang/String;
    .restart local v8    # "parameterValue":Ljava/lang/String;
    .restart local v9    # "tagFlag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v5, v6

    .line 169
    .end local v6    # "fileis":Ljava/io/FileInputStream;
    .restart local v5    # "fileis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 162
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "fileis":Ljava/io/FileInputStream;
    .end local v7    # "parameterName":Ljava/lang/String;
    .end local v8    # "parameterValue":Ljava/lang/String;
    .end local v9    # "tagFlag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "fileis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    .line 164
    .local v2, "e1":Ljava/io/IOException;
    const-string v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot close DS state file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static saveDsProfileSettings([Lcom/atmos/ds/DsProfileSettings;)V
    .locals 16
    .param p0, "currentProfiles"    # [Lcom/atmos/ds/DsProfileSettings;

    .prologue
    .line 291
    sget-object v7, Lcom/atmos/api/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    .line 292
    .local v7, "geqName":[[Ljava/lang/String;
    sget-object v10, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    .line 293
    .local v10, "profileIdName":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 296
    .local v5, "fileos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    sget-object v13, Lcom/atmos/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v5    # "fileos":Ljava/io/FileOutputStream;
    .local v6, "fileos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 306
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v13, "utf-8"

    invoke-interface {v11, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 307
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    const/4 v13, 0x0

    const-string v14, "currentdata"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    const-string v13, "\n\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    const/4 v9, 0x0

    .local v9, "profile":I
    :goto_0
    const/4 v13, 0x5

    if-gt v9, v13, :cond_2

    .line 313
    aget-object v13, p0, v9

    invoke-virtual {v13}, Lcom/atmos/ds/DsProfileSettings;->getCurrentProfileSettings()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "DsCurrentSettings":Ljava/lang/String;
    aget-object v13, p0, v9

    invoke-virtual {v13}, Lcom/atmos/ds/DsProfileSettings;->getRawDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "DsCurrentProfileNames":Ljava/lang/String;
    aget-object v13, p0, v9

    invoke-virtual {v13}, Lcom/atmos/ds/DsProfileSettings;->getIeqPreset()I

    move-result v1

    .line 316
    .local v1, "DsCurrentIeqPresets":I
    aget-object v13, p0, v9

    invoke-virtual {v13}, Lcom/atmos/ds/DsProfileSettings;->getGeqGainArray()[[I

    move-result-object v0

    .line 318
    .local v0, "DsCurrentGeqSettings":[[I
    if-eqz v0, :cond_0

    .line 320
    invoke-static {v0}, Lcom/atmos/ds/DsStoreUtil;->convertArray([[I)[Ljava/lang/String;

    move-result-object v12

    .line 321
    .local v12, "settingStr":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "gebg settings for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " profile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 322
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    const/4 v13, 0x3

    if-gt v8, v13, :cond_0

    .line 325
    const/4 v13, 0x0

    const-string v14, "preset"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    const/4 v13, 0x0

    const-string v14, "id"

    aget-object v15, v7, v9

    aget-object v15, v15, v8

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const-string v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    aget-object v13, v12, v8

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    const/4 v13, 0x0

    const-string v14, "preset"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 298
    .end local v0    # "DsCurrentGeqSettings":[[I
    .end local v1    # "DsCurrentIeqPresets":I
    .end local v2    # "DsCurrentProfileNames":Ljava/lang/String;
    .end local v3    # "DsCurrentSettings":Ljava/lang/String;
    .end local v6    # "fileos":Ljava/io/FileOutputStream;
    .end local v8    # "index":I
    .end local v9    # "profile":I
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "settingStr":[Ljava/lang/String;
    .restart local v5    # "fileos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 300
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v13, "DsStoreUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to find or load "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/atmos/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", and the file could not be created"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 339
    .end local v5    # "fileos":Ljava/io/FileOutputStream;
    .restart local v0    # "DsCurrentGeqSettings":[[I
    .restart local v1    # "DsCurrentIeqPresets":I
    .restart local v2    # "DsCurrentProfileNames":Ljava/lang/String;
    .restart local v3    # "DsCurrentSettings":Ljava/lang/String;
    .restart local v6    # "fileos":Ljava/io/FileOutputStream;
    .restart local v9    # "profile":I
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    if-eqz v3, :cond_1

    .line 341
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "profile settings for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " profile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 342
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    const/4 v13, 0x0

    const-string v14, "profile"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    const/4 v13, 0x0

    const-string v14, "id"

    aget-object v15, v10, v9

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v11, v13, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 346
    const-string v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 349
    invoke-interface {v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    const/4 v13, 0x0

    const-string v14, "data"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    const-string v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 353
    const/4 v13, 0x0

    const-string v14, "include"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 354
    const/4 v13, 0x0

    const-string v14, "preset"

    aget-object v15, v7, v9

    aget-object v15, v15, v1

    invoke-interface {v11, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    const/4 v13, 0x0

    const-string v14, "include"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    const-string v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 358
    const/4 v13, 0x0

    const-string v14, "profile"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    const-string v13, "\n\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 362
    .end local v0    # "DsCurrentGeqSettings":[[I
    .end local v1    # "DsCurrentIeqPresets":I
    .end local v2    # "DsCurrentProfileNames":Ljava/lang/String;
    .end local v3    # "DsCurrentSettings":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    const-string v14, "currentdata"

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 364
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 365
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v9    # "profile":I
    :goto_3
    move-object v5, v6

    .line 372
    .end local v6    # "fileos":Ljava/io/FileOutputStream;
    .restart local v5    # "fileos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 367
    .end local v5    # "fileos":Ljava/io/FileOutputStream;
    .restart local v6    # "fileos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 369
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    const-string v13, "DsStoreUtil"

    const-string v14, "saveDsProfileSettings(): error occurred while saving the current DS profile settings"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static saveDsState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "dsState"    # Ljava/lang/String;
    .param p1, "currentProfile"    # Ljava/lang/String;
    .param p2, "Custom1_defaultName"    # Ljava/lang/String;
    .param p3, "Custom2_defaultName"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "fileos":Ljava/io/FileOutputStream;
    if-nez p2, :cond_0

    .line 185
    sget-object v4, Lcom/atmos/api/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object p2, v4, v5

    .line 187
    :cond_0
    if-nez p3, :cond_1

    .line 189
    sget-object v4, Lcom/atmos/api/DsCommon;->PROFILE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object p3, v4, v5

    .line 193
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v1    # "fileos":Ljava/io/FileOutputStream;
    .local v2, "fileos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 203
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 204
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const/4 v4, 0x0

    const-string v5, "DsState"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string v4, "Ds on/off state"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 208
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const/4 v4, 0x0

    const-string v5, "DsOn"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-interface {v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const/4 v4, 0x0

    const-string v5, "DsOn"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const-string v4, "Profile index"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 214
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const/4 v4, 0x0

    const-string v5, "CurrentProfile"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const/4 v4, 0x0

    const-string v5, "CurrentProfile"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    const-string v4, "Default Name of Custom 1 Profile"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 221
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    const/4 v4, 0x0

    const-string v5, "Custom1_defaultName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-interface {v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const/4 v4, 0x0

    const-string v5, "Custom1_defaultName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string v4, "Default Name of Custom 2 Profile"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 228
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    const/4 v4, 0x0

    const-string v5, "Custom2_defaultName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    invoke-interface {v3, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    const/4 v4, 0x0

    const-string v5, "Custom2_defaultName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    const-string v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const/4 v4, 0x0

    const-string v5, "DsState"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 235
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_0
    if-eqz v2, :cond_2

    .line 246
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    move-object v1, v2

    .line 254
    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1    # "fileos":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "DsStoreUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find or load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and the file could not be created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 237
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "fileos":Ljava/io/FileOutputStream;
    .restart local v2    # "fileos":Ljava/io/FileOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DsStoreUtil"

    const-string v5, "saveDsState(): error occurred while creating xml file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "DsStoreUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static storeDsPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dsCurSettingsPath"    # Ljava/lang/String;
    .param p1, "dsStatePath"    # Ljava/lang/String;

    .prologue
    .line 75
    sput-object p0, Lcom/atmos/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    .line 76
    sput-object p1, Lcom/atmos/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    .line 77
    return-void
.end method
