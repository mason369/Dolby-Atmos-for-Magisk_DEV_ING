.class public Lcom/atmos/ds/DsConfigParser;
.super Ljava/lang/Object;
.source "DsConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/ds/DsConfigParser$1;,
        Lcom/atmos/ds/DsConfigParser$DeviceSettings;,
        Lcom/atmos/ds/DsConfigParser$EqualizerSettings;,
        Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    }
.end annotation


# static fields
.field private static ieqDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static profileDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private akParamsFound_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private defaultGeqBandGain_:[I

.field private mapDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/atmos/ds/DsConfigParser$DeviceSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapEqualizer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/atmos/ds/DsConfigParser$EqualizerSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapProfile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/atmos/ds/DsConfigParser$ProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private parameterDev:Ljava/lang/String;

.field private parameterId:Ljava/lang/String;

.field private parameterName:Ljava/lang/String;

.field private parameterPreset:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private parameterValue:Ljava/lang/String;

.field private parserErrorFlag:I

.field private tagName:Ljava/lang/String;

.field private tunedRate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 59
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lcom/atmos/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    .line 60
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lcom/atmos/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 70
    sget-object v2, Lcom/atmos/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/atmos/api/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 75
    sget-object v2, Lcom/atmos/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/atmos/api/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v2, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 77
    sget-object v2, Lcom/atmos/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Lcom/atmos/api/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    .line 81
    iput v12, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 83
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    .line 84
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    .line 85
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 86
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 87
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 88
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 89
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->tunedRate:Ljava/lang/String;

    .line 90
    iput-object v11, p0, Lcom/atmos/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 100
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    .line 107
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    .line 115
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    .line 130
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 131
    .local v3, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 132
    .local v9, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v9, p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 134
    const/4 v7, 0x0

    .line 135
    .local v7, "tagFlag":Z
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 136
    .local v2, "eventType":I
    const/4 v6, 0x0

    .line 140
    .local v6, "paraCount":I
    :goto_0
    const/4 v10, 0x1

    if-eq v2, v10, :cond_8

    .line 142
    packed-switch v2, :pswitch_data_0

    .line 200
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 145
    :pswitch_0
    const/4 v7, 0x0

    .line 146
    goto :goto_1

    .line 148
    :pswitch_1
    if-eqz v7, :cond_0

    .line 150
    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 151
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 153
    :cond_1
    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/atmos/ds/DsConfigParser;->parseParameters()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 203
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v10, "DsConfigParser"

    const-string v11, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid ds settings"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "eventType":I
    .end local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "paraCount":I
    .end local v7    # "tagFlag":Z
    .end local v9    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 211
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v10, "DsConfigParser"

    const-string v11, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Invalid ds settings"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 158
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "eventType":I
    .restart local v3    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "paraCount":I
    .restart local v7    # "tagFlag":Z
    .restart local v9    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_2
    const/4 v7, 0x1

    .line 159
    :try_start_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    .line 161
    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "preset"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "profile"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "tuning"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "constant"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 165
    :cond_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 167
    .local v0, "count":I
    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    .line 168
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 169
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 170
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 171
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 172
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 173
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_7

    .line 175
    invoke-interface {v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "nameAttri":Ljava/lang/String;
    invoke-interface {v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "valueAttri":Ljava/lang/String;
    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 181
    iput-object v8, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 182
    :cond_3
    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 183
    iput-object v8, p0, Lcom/atmos/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 184
    :cond_4
    const-string v10, "endpoint"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 185
    iput-object v8, p0, Lcom/atmos/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 186
    :cond_5
    const-string v10, "tuned_rate"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 187
    iput-object v8, p0, Lcom/atmos/ds/DsConfigParser;->tunedRate:Ljava/lang/String;

    .line 173
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 191
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "nameAttri":Ljava/lang/String;
    .end local v8    # "valueAttri":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string v11, "include"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 193
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/atmos/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/atmos/ds/DsConfigParser;->parseParameters()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 215
    :cond_8
    invoke-direct {p0}, Lcom/atmos/ds/DsConfigParser;->checkConfigValidity()V

    .line 216
    return-void

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkConfigValidity()V
    .locals 5

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "i":I
    const/4 v2, 0x5

    .line 341
    .local v2, "requiredProfileNum":I
    const/4 v1, 0x3

    .line 343
    .local v1, "requiredIeqNum":I
    const/4 v0, 0x0

    :goto_0
    if-gt v0, v2, :cond_1

    .line 345
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    sget-object v4, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 348
    iget v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v1, :cond_3

    .line 354
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    sget-object v4, Lcom/atmos/api/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 357
    iget v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 352
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 362
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 365
    iget v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 368
    :cond_4
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_5

    .line 371
    iget v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 374
    :cond_5
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 377
    iget v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 379
    :cond_6
    return-void
.end method

.method private convertStringArray(Ljava/lang/String;)[I
    .locals 12
    .param p1, "valueStr"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x20

    .line 697
    const/4 v6, 0x1

    .local v6, "start":I
    const/4 v2, 0x1

    .line 698
    .local v2, "end":I
    const/16 v8, 0x149

    new-array v7, v8, [I

    .line 699
    .local v7, "value":[I
    const/4 v1, 0x0

    .line 700
    .local v1, "count":I
    const/4 v5, 0x0

    .line 701
    .local v5, "spaceCount":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 703
    .local v0, "arrayLength":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_0

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    :cond_0
    move v6, v2

    .line 708
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_5

    .line 710
    const/4 v5, 0x0

    .line 711
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_3

    .line 713
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 714
    add-int/lit8 v5, v5, 0x1

    .line 715
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 720
    :cond_3
    sub-int v8, v2, v5

    :try_start_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    add-int/lit8 v1, v1, 0x1

    .line 730
    add-int/lit8 v2, v2, 0x1

    .line 732
    if-eq v2, v0, :cond_1

    .line 734
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 736
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 722
    :catch_0
    move-exception v3

    .line 725
    .local v3, "ex":Ljava/lang/Exception;
    iget v8, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 726
    const/4 v4, 0x0

    .line 745
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_4
    return-object v4

    .line 738
    :cond_4
    move v6, v2

    goto :goto_1

    .line 742
    :cond_5
    new-array v4, v1, [I

    .line 743
    .local v4, "settingValue":[I
    invoke-static {v7, v11, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method private equalizerSettingArray([Ljava/lang/String;I[[I)[[I
    .locals 16
    .param p1, "paramNames"    # [Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "userDefaultGebg"    # [[I

    .prologue
    .line 568
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 569
    .local v5, "eqList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    new-instance v3, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;-><init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V

    .line 571
    .local v3, "currentSettings":Lcom/atmos/ds/DsConfigParser$EqualizerSettings;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v6, v13, :cond_13

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    aget-object v14, p1, v6

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "currentSettings":Lcom/atmos/ds/DsConfigParser$EqualizerSettings;
    check-cast v3, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;

    .line 574
    .restart local v3    # "currentSettings":Lcom/atmos/ds/DsConfigParser$EqualizerSettings;
    if-nez v3, :cond_4

    .line 579
    aget-object v13, p1, v6

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "geq"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 581
    if-eqz p3, :cond_1

    .line 583
    aget-object v13, p3, v6

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 585
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/ds/DsConfigParser;->defaultGeqBandGain_:[I

    if-eqz v13, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/atmos/ds/DsConfigParser;->defaultGeqBandGain_:[I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 591
    :cond_2
    move/from16 v0, p2

    new-array v13, v0, [I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 596
    :cond_3
    move/from16 v0, p2

    new-array v13, v0, [I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 601
    :cond_4
    iget-object v9, v3, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    .line 602
    .local v9, "settingGroup":Ljava/lang/String;
    const/4 v8, 0x0

    .line 603
    .local v8, "parameter":Ljava/lang/String;
    const/4 v12, 0x0

    .line 605
    .local v12, "value":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "start":I
    const/4 v4, 0x0

    .line 606
    .local v4, "end":I
    const/4 v10, 0x0

    .line 607
    .local v10, "spaceCount":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    .line 612
    .local v2, "arrayLength":I
    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_5

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_5

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_6

    .line 614
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 616
    :cond_6
    move v11, v4

    .line 617
    :cond_7
    :goto_3
    if-ge v4, v2, :cond_0

    .line 619
    const/4 v7, 0x0

    .line 620
    .local v7, "isParamFound":Z
    const/4 v10, 0x0

    .line 621
    :goto_4
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3d

    if-eq v13, v14, :cond_9

    .line 623
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_8

    .line 624
    add-int/lit8 v10, v10, 0x1

    .line 625
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 627
    :cond_9
    sub-int v13, v4, v10

    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 629
    const-string v13, "iebt"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string v13, "gebg"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 632
    const-string v13, "DsConfigParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected parameter name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for equalizer settings"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    move-object/from16 v0, p0

    iget v13, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v13, v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 640
    :goto_5
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5b

    if-eq v13, v14, :cond_b

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 637
    :cond_a
    const/4 v7, 0x1

    goto :goto_5

    .line 644
    :cond_b
    move v11, v4

    .line 645
    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5d

    if-eq v13, v14, :cond_c

    .line 647
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 649
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 651
    if-eqz v7, :cond_e

    .line 653
    invoke-virtual {v9, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 654
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/atmos/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 655
    .local v1, "actualSettings":[I
    if-eqz v1, :cond_12

    .line 657
    array-length v13, v1

    invoke-static {v8, v13}, Lcom/atmos/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_d

    .line 659
    move-object/from16 v0, p0

    iget v13, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v13, v13, 0x40

    move-object/from16 v0, p0

    iput v13, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    .line 661
    :cond_d
    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 671
    .end local v1    # "actualSettings":[I
    :cond_e
    :goto_7
    if-eq v4, v2, :cond_7

    .line 673
    :cond_f
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_10

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v14, :cond_10

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_11

    .line 675
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 676
    if-ne v4, v2, :cond_f

    .line 679
    :cond_11
    move v11, v4

    goto/16 :goto_3

    .line 666
    .restart local v1    # "actualSettings":[I
    :cond_12
    const-string v13, "DsConfigParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The values for AK parameter "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " are invalid"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 686
    .end local v1    # "actualSettings":[I
    .end local v2    # "arrayLength":I
    .end local v4    # "end":I
    .end local v7    # "isParamFound":Z
    .end local v8    # "parameter":Ljava/lang/String;
    .end local v9    # "settingGroup":Ljava/lang/String;
    .end local v10    # "spaceCount":I
    .end local v11    # "start":I
    .end local v12    # "value":Ljava/lang/String;
    :cond_13
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v13, v13, [[I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    return-object v13
.end method

.method private getProfileSettingArray(Ljava/lang/String;)[[I
    .locals 6
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 389
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 390
    .local v1, "settingList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    new-instance v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v2}, Lcom/atmos/ds/DsConfigParser$ProfileSettings;-><init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V

    .line 391
    .local v0, "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;

    .line 393
    .restart local v0    # "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_0

    .line 394
    check-cast v2, [[I

    .line 403
    :goto_0
    return-object v2

    .line 396
    :cond_0
    const-string v3, "DsConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile settingStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v3, v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/atmos/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 399
    if-nez v1, :cond_1

    .line 400
    check-cast v2, [[I

    goto :goto_0

    .line 402
    :cond_1
    const-string v2, "DsConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile setting list size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [[I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    goto :goto_0
.end method

.method private getTuningSettingArray()[[I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 450
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 454
    .local v2, "settingList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string v6, "tuning"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/atmos/ds/DsConfigParser$DeviceSettings;

    .line 455
    .local v1, "deviceTuningSettings":Lcom/atmos/ds/DsConfigParser$DeviceSettings;
    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string v6, "constant"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/atmos/ds/DsConfigParser$DeviceSettings;

    .line 457
    .local v0, "deviceConstantSettings":Lcom/atmos/ds/DsConfigParser$DeviceSettings;
    if-nez v1, :cond_1

    .line 459
    if-nez v0, :cond_0

    move-object v3, v4

    .line 466
    .local v3, "settingStr":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_3

    .line 467
    check-cast v4, [[I

    .line 476
    :goto_1
    return-object v4

    .line 459
    .end local v3    # "settingStr":Ljava/lang/String;
    :cond_0
    iget-object v3, v0, Lcom/atmos/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, v1, Lcom/atmos/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    .restart local v3    # "settingStr":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v3    # "settingStr":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/atmos/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/atmos/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 469
    .restart local v3    # "settingStr":Ljava/lang/String;
    :cond_3
    const-string v5, "DsConfigParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tuning settingStr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, v3}, Lcom/atmos/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 472
    if-nez v2, :cond_4

    .line 473
    check-cast v4, [[I

    goto :goto_1

    .line 475
    :cond_4
    const-string v4, "DsConfigParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device setting list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    goto :goto_1
.end method

.method private parseParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 225
    new-instance v2, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;

    invoke-direct {v2, p0, v4}, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;-><init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V

    .line 226
    .local v2, "currentSettings":Lcom/atmos/ds/DsConfigParser$EqualizerSettings;
    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "preIeq":Ljava/lang/String;
    :goto_0
    const-string v5, "preset"

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "ieq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "geq"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v2, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;->device:Ljava/lang/String;

    .line 230
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v2, Lcom/atmos/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    .line 231
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_1
    :goto_1
    return-void

    .end local v3    # "preIeq":Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .line 226
    goto :goto_0

    .line 237
    .restart local v3    # "preIeq":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/atmos/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v1, p0, v4}, Lcom/atmos/ds/DsConfigParser$ProfileSettings;-><init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V

    .line 238
    .local v1, "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    const-string v5, "profile"

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/atmos/api/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "off"

    iget-object v6, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 247
    :cond_4
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    iput-object v4, v1, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    .line 248
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    iput-object v4, v1, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    .line 249
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v1, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->device:Ljava/lang/String;

    .line 250
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v1, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    .line 251
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 257
    :cond_5
    new-instance v0, Lcom/atmos/ds/DsConfigParser$DeviceSettings;

    invoke-direct {v0, p0, v4}, Lcom/atmos/ds/DsConfigParser$DeviceSettings;-><init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V

    .line 258
    .local v0, "currentDeviceSettings":Lcom/atmos/ds/DsConfigParser$DeviceSettings;
    const-string v4, "tuning"

    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "constant"

    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    :cond_6
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v0, Lcom/atmos/ds/DsConfigParser$DeviceSettings;->device:Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v0, Lcom/atmos/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    .line 262
    iget-object v4, p0, Lcom/atmos/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/atmos/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;
    .locals 17
    .param p1, "settingGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 756
    if-nez p1, :cond_1

    .line 757
    const/4 v10, 0x0

    .line 857
    :cond_0
    return-object v10

    .line 758
    :cond_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 760
    .local v10, "settingList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    const/4 v9, 0x0

    .local v9, "parameter":I
    const/4 v6, 0x0

    .local v6, "offset":I
    const/4 v13, 0x0

    .line 761
    .local v13, "value":I
    const/4 v12, 0x0

    .local v12, "start":I
    const/4 v3, 0x0

    .line 763
    .local v3, "end":I
    const/4 v11, 0x0

    .line 764
    .local v11, "spaceCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 768
    .local v2, "arrayLength":I
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_3

    .line 770
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    :cond_3
    move v12, v3

    .line 773
    :cond_4
    :goto_1
    if-ge v3, v2, :cond_0

    .line 775
    const/4 v5, 0x0

    .line 776
    .local v5, "isParamFound":Z
    const/4 v11, 0x0

    .line 777
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_6

    .line 779
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_5

    .line 780
    add-int/lit8 v11, v11, 0x1

    .line 781
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 783
    :cond_6
    sub-int v14, v3, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 785
    .local v7, "paraName":Ljava/lang/String;
    sget-object v14, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 787
    invoke-static {v7}, Lcom/atmos/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v9

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/atmos/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const/4 v5, 0x1

    .line 798
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_8

    .line 800
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 794
    :cond_7
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected AK parameter name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_3

    .line 802
    :cond_8
    move v12, v3

    .line 803
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5d

    if-eq v14, v15, :cond_9

    .line 805
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 807
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 809
    if-eqz v5, :cond_e

    .line 811
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, "paraValue":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/atmos/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 813
    .local v1, "actualSettings":[I
    if-eqz v1, :cond_12

    .line 815
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "genb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "aonb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "ienb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "gebf"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 821
    :cond_a
    invoke-static {v7, v1}, Lcom/atmos/ds/DsAkSettings;->setConstantAkParam(Ljava/lang/String;[I)V

    .line 828
    :cond_b
    :goto_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    array-length v14, v1

    if-ge v4, v14, :cond_d

    .line 829
    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    const/4 v15, 0x2

    aget v16, v1, v4

    aput v16, v14, v15

    invoke-virtual {v10, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 823
    .end local v4    # "i":I
    :cond_c
    array-length v14, v1

    invoke-static {v7, v14}, Lcom/atmos/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_b

    .line 825
    move-object/from16 v0, p0

    iget v14, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_5

    .line 832
    .restart local v4    # "i":I
    :cond_d
    const-string v14, "gebg"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 834
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/atmos/ds/DsConfigParser;->defaultGeqBandGain_:[I

    .line 845
    .end local v1    # "actualSettings":[I
    .end local v4    # "i":I
    .end local v8    # "paraValue":Ljava/lang/String;
    :cond_e
    :goto_7
    if-eq v3, v2, :cond_4

    .line 847
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_11

    .line 849
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 850
    if-ne v3, v2, :cond_f

    .line 853
    :cond_11
    move v12, v3

    goto/16 :goto_1

    .line 840
    .restart local v1    # "actualSettings":[I
    .restart local v8    # "paraValue":Ljava/lang/String;
    :cond_12
    const-string v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The values for AK parameter "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " are invalid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public getGeqSettingArray(Ljava/lang/String;[[I)[[I
    .locals 3
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "defaultGebg"    # [[I

    .prologue
    .line 553
    const-string v1, "gebg"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 554
    .local v0, "len":I
    sget-object v2, Lcom/atmos/api/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    sget-object v1, Lcom/atmos/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0, p2}, Lcom/atmos/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I[[I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getIeqSettingArray()[[I
    .locals 3

    .prologue
    .line 541
    const-string v1, "iebt"

    invoke-static {v1}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 542
    .local v0, "len":I
    sget-object v2, Lcom/atmos/api/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, [[I

    invoke-direct {p0, v2, v0, v1}, Lcom/atmos/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I[[I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getParserStatusFlag()Z
    .locals 3

    .prologue
    .line 275
    const/4 v0, 0x1

    .line 277
    .local v0, "ret":Z
    const-string v1, "DsConfigParser"

    const-string v2, "The parsing result of the configuration file shows below:"

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    if-nez v1, :cond_2

    .line 281
    const-string v1, "DsConfigParser"

    const-string v2, "No errors were found when parsing configuration file."

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 328
    const-string v1, "DsConfigParser"

    const-string v2, "Parsing has failed, DS will be disabled! Please correct the errors in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    return v0

    .line 285
    :cond_2
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_3

    .line 286
    const-string v1, "DsConfigParser"

    const-string v2, "More profiles were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4

    .line 288
    const-string v1, "DsConfigParser"

    const-string v2, "More IEQ presets were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_4
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 291
    const-string v1, "DsConfigParser"

    const-string v2, "Not all expected profiles were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    .line 294
    :cond_5
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 296
    const-string v1, "DsConfigParser"

    const-string v2, "Not all expected IEQ presets were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    .line 299
    :cond_6
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 301
    const-string v1, "DsConfigParser"

    const-string v2, "Off profile was expected but NOT specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .line 304
    :cond_7
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 306
    const-string v1, "DsConfigParser"

    const-string v2, "Some AK parameters were missing in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    .line 309
    :cond_8
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    .line 311
    const-string v1, "DsConfigParser"

    const-string v2, "Parameter name parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    .line 314
    :cond_9
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    .line 316
    const-string v1, "DsConfigParser"

    const-string v2, "Parameter value parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    .line 319
    :cond_a
    iget v1, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "DsConfigParser"

    const-string v2, "The length of data specified for the AK parameter is inconsistent with the related AK parameter that determines the expected length."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getProfileSettingIeq(Ljava/lang/String;)I
    .locals 6
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 431
    new-instance v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/atmos/ds/DsConfigParser$ProfileSettings;-><init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V

    .line 432
    .local v0, "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;

    .line 434
    .restart local v0    # "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v2

    .line 437
    :cond_1
    const-string v3, "DsConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ieqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v3, Lcom/atmos/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 440
    .local v1, "index":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 413
    new-instance v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v1}, Lcom/atmos/ds/DsConfigParser$ProfileSettings;-><init>(Lcom/atmos/ds/DsConfigParser;Lcom/atmos/ds/DsConfigParser$1;)V

    .line 414
    .local v0, "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    iget-object v2, p0, Lcom/atmos/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;

    .line 416
    .restart local v0    # "currentProfileSettings":Lcom/atmos/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-object v1

    .line 419
    :cond_0
    const-string v1, "DsConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v1, v0, Lcom/atmos/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSavedParams()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Lcom/atmos/ds/DsProfileSettings;->getBasicProfileParams()Ljava/util/HashSet;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 871
    .local v2, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 875
    .local v1, "paramName":Ljava/lang/String;
    iget-object v3, p0, Lcom/atmos/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "gebg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 877
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 880
    .end local v1    # "paramName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getSettingArray(Ljava/lang/String;Z)[[I
    .locals 13
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "requireAllParams"    # Z

    .prologue
    .line 491
    sget-object v10, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 492
    .local v5, "settableParamNames":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v10, v5

    if-ge v0, v10, :cond_0

    .line 494
    iget-object v11, p0, Lcom/atmos/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    aget-object v10, v5, v0

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/atmos/ds/DsConfigParser;->getTuningSettingArray()[[I

    move-result-object v8

    .line 498
    .local v8, "tuningArray":[[I
    invoke-direct {p0, p1}, Lcom/atmos/ds/DsConfigParser;->getProfileSettingArray(Ljava/lang/String;)[[I

    move-result-object v3

    .line 500
    .local v3, "profileArray":[[I
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 501
    .local v4, "profileLength":I
    :goto_1
    if-nez v8, :cond_2

    const/4 v9, 0x0

    .line 502
    .local v9, "tuningLength":I
    :goto_2
    add-int v7, v4, v9

    .line 504
    .local v7, "settingLength":I
    if-nez v7, :cond_3

    .line 505
    const/4 v10, 0x0

    check-cast v10, [[I

    .line 532
    :goto_3
    return-object v10

    .line 500
    .end local v4    # "profileLength":I
    .end local v7    # "settingLength":I
    .end local v9    # "tuningLength":I
    :cond_1
    array-length v4, v3

    goto :goto_1

    .line 501
    .restart local v4    # "profileLength":I
    :cond_2
    array-length v9, v8

    goto :goto_2

    .line 507
    .restart local v7    # "settingLength":I
    .restart local v9    # "tuningLength":I
    :cond_3
    if-eqz p2, :cond_5

    .line 511
    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 515
    .local v2, "paramName":Ljava/lang/String;
    iget-object v10, p0, Lcom/atmos/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "lcmf"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "iebt"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 517
    const-string v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AK parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " missing in xml file!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget v10, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/atmos/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_4

    .line 523
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "paramName":Ljava/lang/String;
    :cond_5
    new-array v6, v7, [[I

    .line 525
    .local v6, "settingArray":[[I
    if-eqz v4, :cond_6

    .line 526
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v6, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    :cond_6
    if-eqz v9, :cond_7

    .line 528
    const/4 v10, 0x0

    invoke-static {v8, v10, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    :cond_7
    const-string v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "total setting list size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v6

    .line 532
    goto/16 :goto_3
.end method
