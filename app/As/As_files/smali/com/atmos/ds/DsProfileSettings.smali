.class public Lcom/atmos/ds/DsProfileSettings;
.super Ljava/lang/Object;
.source "DsProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/ds/DsProfileSettings$Category;
    }
.end annotation


# static fields
.field private static final basicProfileParams_:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ieqBandTargets_:[[I


# instance fields
.field private akSettings_:Lcom/atmos/ds/DsAkSettings;

.field private category_:Lcom/atmos/ds/DsProfileSettings$Category;

.field private currentIeqPreset_:I

.field private custom_:Z

.field private defaultName_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private geqBandGains_:[[I

.field private profileParamsToBeSaved_:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x0

    check-cast v0, [[I

    sput-object v0, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    .line 154
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    const-string v1, "geon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    const-string v1, "deon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    const-string v1, "dvle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    const-string v1, "vdhe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    const-string v1, "vspe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    const-string v1, "ieon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/atmos/ds/DsAkSettings;ZLcom/atmos/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V
    .locals 11
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "allSettings"    # Lcom/atmos/ds/DsAkSettings;
    .param p4, "custom"    # Z
    .param p5, "category"    # Lcom/atmos/ds/DsProfileSettings$Category;
    .param p6, "ieqPreset"    # I
    .param p7, "geqSettings"    # [[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/atmos/ds/DsAkSettings;",
            "Z",
            "Lcom/atmos/ds/DsProfileSettings$Category;",
            "I[[I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 177
    .local p8, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v6, 0x0

    check-cast v6, [[I

    iput-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    .line 178
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v6

    if-nez v6, :cond_0

    .line 179
    new-instance v6, Ljava/lang/InstantiationException;

    const-string v7, "Constant AK parameters NOT defined yet."

    invoke-direct {v6, v7}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 180
    :cond_0
    sget-object v6, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    if-nez v6, :cond_1

    .line 181
    new-instance v6, Ljava/lang/InstantiationException;

    const-string v7, "IEq settings NOT defined yet."

    invoke-direct {v6, v7}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    :cond_1
    iput-object p1, p0, Lcom/atmos/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/atmos/ds/DsProfileSettings;->description_:Ljava/lang/String;

    .line 184
    iput-boolean p4, p0, Lcom/atmos/ds/DsProfileSettings;->custom_:Z

    .line 185
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->category_:Lcom/atmos/ds/DsProfileSettings$Category;

    .line 187
    new-instance v6, Lcom/atmos/ds/DsAkSettings;

    invoke-direct {v6, p3}, Lcom/atmos/ds/DsAkSettings;-><init>(Lcom/atmos/ds/DsAkSettings;)V

    iput-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    .line 189
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->getGeqBandCount()I

    move-result v1

    .line 190
    .local v1, "gebgLen":I
    const/4 v6, 0x4

    filled-new-array {v6, v1}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    iput-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    .line 191
    if-eqz p7, :cond_5

    .line 193
    move-object/from16 v0, p7

    array-length v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    aget-object v6, p7, v6

    array-length v6, v6

    if-eq v6, v1, :cond_3

    .line 195
    :cond_2
    const-string v6, "DsProfileSettings"

    const-string v7, "Wrong array length for GEq settings, check whether the length conforms to genb in the XML file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "GEq settings array length is invalid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 198
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_7

    .line 200
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_4

    .line 202
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    aget-object v6, v6, v2

    aget-object v7, p7, v2

    aget v7, v7, v5

    aput v7, v6, v5

    .line 200
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 198
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    .end local v5    # "j":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    const/4 v6, 0x4

    if-ge v2, v6, :cond_7

    .line 210
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    if-ge v5, v1, :cond_6

    .line 213
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    aget-object v6, v6, v2

    iget-object v7, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const-string v8, "gebg"

    invoke-virtual {v7, v8, v5}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v5

    .line 210
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 208
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 218
    .end local v5    # "j":I
    :cond_7
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const-string v7, "ieon"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v4

    .line 219
    .local v4, "ieqOn":I
    if-nez v4, :cond_9

    const/16 p6, 0x0

    .end local p6    # "ieqPreset":I
    :cond_8
    :goto_4
    move/from16 v0, p6

    iput v0, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    .line 222
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_a

    .line 224
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    iget v7, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const-string v8, "gebg"

    iget-object v9, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    iget v10, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v9, v9, v10

    aget v9, v9, v2

    invoke-virtual {v7, v8, v2, v9}, Lcom/atmos/ds/DsAkSettings;->set(Ljava/lang/String;II)I

    move-result v7

    aput v7, v6, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 219
    .restart local p6    # "ieqPreset":I
    :cond_9
    if-nez p6, :cond_8

    const/16 p6, 0x1

    goto :goto_4

    .line 227
    .end local p6    # "ieqPreset":I
    :cond_a
    const-string v6, "iebt"

    invoke-static {v6}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, "iebtLen":I
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_b

    .line 230
    sget-object v6, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    iget v7, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const-string v8, "iebt"

    sget-object v9, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    iget v10, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v9, v9, v10

    aget v9, v9, v2

    invoke-virtual {v7, v8, v2, v9}, Lcom/atmos/ds/DsAkSettings;->set(Ljava/lang/String;II)I

    move-result v7

    aput v7, v6, v2

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 233
    :cond_b
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    .line 234
    return-void
.end method

.method public static getBasicProfileParams()Ljava/util/HashSet;
    .locals 1
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
    .line 644
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    return-object v0
.end method

.method public static isBasicProfileParam(Ljava/lang/String;)Z
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 655
    sget-object v0, Lcom/atmos/ds/DsProfileSettings;->basicProfileParams_:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setIeqBandTargets(I[I)V
    .locals 4
    .param p0, "ieqPreset"    # I
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 448
    if-ltz p0, :cond_0

    if-lt p0, v3, :cond_1

    .line 449
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Intelligent Equalizer preset index!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_1
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-nez v2, :cond_2

    .line 451
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Constant AK parameters NOT defined yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_2
    const-string v2, "iebt"

    invoke-static {v2}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, "iebtLen":I
    array-length v2, p1

    if-eq v2, v1, :cond_3

    .line 455
    const-string v2, "DsProfileSettings"

    const-string v3, "Invalid count of IEq values, check whether iebt array length conforms to ienb in the XML file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The count of IEq values NOT equal to the IEq band count"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 458
    :cond_3
    sget-object v2, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    if-nez v2, :cond_4

    .line 459
    filled-new-array {v3, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    .line 460
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 461
    sget-object v2, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    aget-object v2, v2, p0

    aget v3, p1, v0

    aput v3, v2, v0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_5
    return-void
.end method


# virtual methods
.method public addParamSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "DsProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add a new parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to the saved list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_0
    return-void
.end method

.method getAllSettings()Lcom/atmos/ds/DsAkSettings;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    return-object v0
.end method

.method public getCategory()Lcom/atmos/ds/DsProfileSettings$Category;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->category_:Lcom/atmos/ds/DsProfileSettings$Category;

    return-object v0
.end method

.method public getCurrentProfileSettings()Ljava/lang/String;
    .locals 8

    .prologue
    .line 339
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v6, :cond_3

    .line 341
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    .local v4, "settingStr":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 344
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 347
    .local v3, "param":Ljava/lang/String;
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v5

    .line 348
    .local v5, "value":I
    invoke-static {v3}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 349
    .local v2, "len":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 352
    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    invoke-virtual {v6, v3, v1}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v5

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 356
    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 358
    :cond_1
    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 360
    .end local v1    # "j":I
    .end local v2    # "len":I
    .end local v3    # "param":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 362
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local v4    # "settingStr":Ljava/lang/StringBuffer;
    :goto_2
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->defaultName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->defaultName_:Ljava/lang/String;

    .line 270
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGeqGainArray()[[I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    return-object v0
.end method

.method public getIeqPreset()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    return v0
.end method

.method public getParameter(Ljava/lang/String;)[I
    .locals 5
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 584
    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    const-string v2, "DsProfileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is NOT retrievable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Invalid parameter"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :cond_0
    invoke-static {p1}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    new-array v1, v2, [I

    .line 591
    .local v1, "values":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 593
    iget-object v2, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    invoke-virtual {v2, p1, v0}, Lcom/atmos/ds/DsAkSettings;->get(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v0

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_1
    return-object v1
.end method

.method public getParamsSaved()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 608
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRawDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public isCustom()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/atmos/ds/DsProfileSettings;->custom_:Z

    return v0
.end method

.method public removeParamSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const-string v0, "DsProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove the parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from the saved list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/atmos/api/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_0
    return-void
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/atmos/ds/DsProfileSettings;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    if-eqz p1, :cond_0

    .line 418
    iput-object p1, p0, Lcom/atmos/ds/DsProfileSettings;->defaultName_:Ljava/lang/String;

    .line 421
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/atmos/ds/DsProfileSettings;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    if-eqz p1, :cond_0

    .line 406
    iput-object p1, p0, Lcom/atmos/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    .line 409
    :cond_0
    return-void
.end method

.method public setIeqPreset(I)V
    .locals 7
    .param p1, "preset"    # I

    .prologue
    const/4 v4, 0x0

    .line 471
    iget v3, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    if-eq p1, v3, :cond_3

    .line 473
    iget-object v5, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const-string v6, "ieon"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v6, v4, v3}, Lcom/atmos/ds/DsAkSettings;->set(Ljava/lang/String;II)I

    .line 474
    const-string v3, "iebt"

    invoke-static {v3}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 475
    .local v2, "iebtLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 477
    sget-object v3, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const-string v5, "iebt"

    sget-object v6, Lcom/atmos/ds/DsProfileSettings;->ieqBandTargets_:[[I

    aget-object v6, v6, p1

    aget v6, v6, v1

    invoke-virtual {v4, v5, v1, v6}, Lcom/atmos/ds/DsAkSettings;->set(Ljava/lang/String;II)I

    move-result v4

    aput v4, v3, v1

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "iebtLen":I
    :cond_0
    move v3, v4

    .line 473
    goto :goto_0

    .line 479
    .restart local v1    # "i":I
    .restart local v2    # "iebtLen":I
    :cond_1
    invoke-static {}, Lcom/atmos/ds/DsAkSettings;->getGeqBandCount()I

    move-result v0

    .line 480
    .local v0, "gebgLen":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 482
    iget-object v3, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    const-string v5, "gebg"

    iget-object v6, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    aget-object v6, v6, p1

    aget v6, v6, v1

    invoke-virtual {v4, v5, v1, v6}, Lcom/atmos/ds/DsAkSettings;->set(Ljava/lang/String;II)I

    move-result v4

    aput v4, v3, v1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 484
    :cond_2
    iput p1, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    .line 490
    .end local v0    # "gebgLen":I
    .end local v1    # "i":I
    .end local v2    # "iebtLen":I
    :goto_3
    return-void

    .line 488
    :cond_3
    const-string v3, "DsProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set the same Ieq value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as last time, nothing will be done."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/atmos/api/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setParameter(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 552
    sget-object v2, Lcom/atmos/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    const-string v2, "DsProfileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is NOT settable."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Invalid parameter"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_0
    invoke-static {p1}, Lcom/atmos/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v1

    .line 558
    .local v1, "len":I
    array-length v2, p2

    if-eq v2, v1, :cond_1

    .line 560
    const-string v2, "DsProfileSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the values length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is NOT compatible with the desired length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Invalid values length"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 566
    iget-object v2, p0, Lcom/atmos/ds/DsProfileSettings;->akSettings_:Lcom/atmos/ds/DsAkSettings;

    aget v3, p2, v0

    invoke-virtual {v2, p1, v0, v3}, Lcom/atmos/ds/DsAkSettings;->set(Ljava/lang/String;II)I

    move-result v2

    aput v2, p2, v0

    .line 567
    const-string v2, "gebg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/atmos/ds/DsProfileSettings;->geqBandGains_:[[I

    iget v3, p0, Lcom/atmos/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v2, v2, v3

    aget v3, p2, v0

    aput v3, v2, v0

    .line 564
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/atmos/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    return-object v0
.end method
