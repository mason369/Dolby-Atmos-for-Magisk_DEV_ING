.class public abstract Lcom/atmos/api/IDs$Stub;
.super Landroid/os/Binder;
.source "IDs.java"

# interfaces
.implements Lcom/atmos/api/IDs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atmos/api/IDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atmos/api/IDs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.atmos.api.IDs"

.field static final TRANSACTION_iAbandonAccessRight:I = 0x1a

.field static final TRANSACTION_iActivateTuning:I = 0x1e

.field static final TRANSACTION_iCheckAccessRight:I = 0x1b

.field static final TRANSACTION_iDeactivateTuning:I = 0x1f

.field static final TRANSACTION_iGetDapLibraryVersion:I = 0xd

.field static final TRANSACTION_iGetDsServiceVersion:I = 0xc

.field static final TRANSACTION_iGetIeqPreset:I = 0x12

.field static final TRANSACTION_iGetIeqPresetCount:I = 0x13

.field static final TRANSACTION_iGetMonoSpeaker:I = 0x1d

.field static final TRANSACTION_iGetOffType:I = 0xb

.field static final TRANSACTION_iGetParamLength:I = 0x1c

.field static final TRANSACTION_iGetParameter:I = 0x10

.field static final TRANSACTION_iGetProfile:I = 0x15

.field static final TRANSACTION_iGetProfileCount:I = 0x18

.field static final TRANSACTION_iGetProfileModified:I = 0x17

.field static final TRANSACTION_iGetProfileName:I = 0x21

.field static final TRANSACTION_iGetState:I = 0xa

.field static final TRANSACTION_iGetUdcLibraryVersion:I = 0xe

.field static final TRANSACTION_iRegisterCallback:I = 0x7

.field static final TRANSACTION_iRegisterDeathHandler:I = 0x3

.field static final TRANSACTION_iRegisterDsAccess:I = 0x5

.field static final TRANSACTION_iRegisterVisualizerData:I = 0x1

.field static final TRANSACTION_iRequestAccessRight:I = 0x19

.field static final TRANSACTION_iResetProfile:I = 0x16

.field static final TRANSACTION_iSetIeqPreset:I = 0x11

.field static final TRANSACTION_iSetParameter:I = 0xf

.field static final TRANSACTION_iSetProfile:I = 0x14

.field static final TRANSACTION_iSetProfileName:I = 0x20

.field static final TRANSACTION_iSetState:I = 0x9

.field static final TRANSACTION_iUnregisterCallback:I = 0x8

.field static final TRANSACTION_iUnregisterDeathHandler:I = 0x4

.field static final TRANSACTION_iUnregisterDsAccess:I = 0x6

.field static final TRANSACTION_iUnregisterVisualizerData:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p0, p0, v0}, Lcom/atmos/api/IDs$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/atmos/api/IDs;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.atmos.api.IDs"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/atmos/api/IDs;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/atmos/api/IDs;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/atmos/api/IDs$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/atmos/api/IDs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iRegisterVisualizerData(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "_arg0":I
    :sswitch_2
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iUnregisterVisualizerData(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "_arg0":I
    :sswitch_3
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/atmos/api/IDsDeathHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atmos/api/IDsDeathHandler;

    move-result-object v2

    .line 70
    .local v2, "_arg1":Lcom/atmos/api/IDsDeathHandler;
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iRegisterDeathHandler(ILcom/atmos/api/IDsDeathHandler;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/atmos/api/IDsDeathHandler;
    :sswitch_4
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/atmos/api/IDsDeathHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atmos/api/IDsDeathHandler;

    move-result-object v2

    .line 81
    .restart local v2    # "_arg1":Lcom/atmos/api/IDsDeathHandler;
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iUnregisterDeathHandler(ILcom/atmos/api/IDsDeathHandler;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/atmos/api/IDsDeathHandler;
    :sswitch_5
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/atmos/api/DsClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/atmos/api/DsClientInfo;

    .line 97
    .local v2, "_arg1":Lcom/atmos/api/DsClientInfo;
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iRegisterDsAccess(ILcom/atmos/api/DsClientInfo;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "_arg1":Lcom/atmos/api/DsClientInfo;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/atmos/api/DsClientInfo;
    goto :goto_1

    .line 103
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/atmos/api/DsClientInfo;
    :sswitch_6
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iUnregisterDsAccess(I)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    .end local v1    # "_arg0":I
    :sswitch_7
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/atmos/api/IDsCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atmos/api/IDsCallbacks;

    move-result-object v2

    .line 118
    .local v2, "_arg1":Lcom/atmos/api/IDsCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 119
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iRegisterCallback(ILcom/atmos/api/IDsCallbacks;I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 125
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/atmos/api/IDsCallbacks;
    .end local v3    # "_arg2":I
    :sswitch_8
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/atmos/api/IDsCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atmos/api/IDsCallbacks;

    move-result-object v2

    .line 131
    .restart local v2    # "_arg1":Lcom/atmos/api/IDsCallbacks;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iUnregisterCallback(ILcom/atmos/api/IDsCallbacks;I)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 138
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/atmos/api/IDsCallbacks;
    .end local v3    # "_arg2":I
    :sswitch_9
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 145
    .local v3, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iSetState(IIZ)I

    move-result v10

    .line 146
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 144
    .end local v3    # "_arg2":Z
    .end local v10    # "_result":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 152
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_a
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 157
    .local v7, "_arg1_length":I
    if-gez v7, :cond_2

    .line 158
    const/4 v2, 0x0

    .line 163
    .local v2, "_arg1":[I
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iGetState(I[I)I

    move-result v10

    .line 164
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 167
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 161
    .end local v2    # "_arg1":[I
    .end local v10    # "_result":I
    :cond_2
    new-array v2, v7, [I

    .restart local v2    # "_arg1":[I
    goto :goto_3

    .line 171
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v7    # "_arg1_length":I
    :sswitch_b
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 174
    .local v6, "_arg0_length":I
    if-gez v6, :cond_3

    .line 175
    const/4 v1, 0x0

    .line 180
    .local v1, "_arg0":[I
    :goto_4
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iGetOffType([I)I

    move-result v10

    .line 181
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 184
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 178
    .end local v1    # "_arg0":[I
    .end local v10    # "_result":I
    :cond_3
    new-array v1, v6, [I

    .restart local v1    # "_arg0":[I
    goto :goto_4

    .line 188
    .end local v1    # "_arg0":[I
    .end local v6    # "_arg0_length":I
    :sswitch_c
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 191
    .restart local v6    # "_arg0_length":I
    if-gez v6, :cond_4

    .line 192
    const/4 v1, 0x0

    .line 197
    .local v1, "_arg0":[Ljava/lang/String;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iGetDsServiceVersion([Ljava/lang/String;)I

    move-result v10

    .line 198
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 195
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_result":I
    :cond_4
    new-array v1, v6, [Ljava/lang/String;

    .restart local v1    # "_arg0":[Ljava/lang/String;
    goto :goto_5

    .line 205
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg0_length":I
    :sswitch_d
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 208
    .restart local v6    # "_arg0_length":I
    if-gez v6, :cond_5

    .line 209
    const/4 v1, 0x0

    .line 214
    .restart local v1    # "_arg0":[Ljava/lang/String;
    :goto_6
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iGetDapLibraryVersion([Ljava/lang/String;)I

    move-result v10

    .line 215
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 212
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_result":I
    :cond_5
    new-array v1, v6, [Ljava/lang/String;

    .restart local v1    # "_arg0":[Ljava/lang/String;
    goto :goto_6

    .line 222
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg0_length":I
    :sswitch_e
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 225
    .restart local v6    # "_arg0_length":I
    if-gez v6, :cond_6

    .line 226
    const/4 v1, 0x0

    .line 231
    .restart local v1    # "_arg0":[Ljava/lang/String;
    :goto_7
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iGetUdcLibraryVersion([Ljava/lang/String;)I

    move-result v10

    .line 232
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 229
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_result":I
    :cond_6
    new-array v1, v6, [Ljava/lang/String;

    .restart local v1    # "_arg0":[Ljava/lang/String;
    goto :goto_7

    .line 239
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v6    # "_arg0_length":I
    :sswitch_f
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 245
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 247
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 249
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, "_arg4":[I
    move-object v0, p0

    .line 250
    invoke-virtual/range {v0 .. v5}, Lcom/atmos/api/IDs$Stub;->iSetParameter(IIII[I)I

    move-result v10

    .line 251
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 257
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[I
    .end local v10    # "_result":I
    :sswitch_10
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 266
    .local v9, "_arg3_length":I
    if-gez v9, :cond_7

    .line 267
    const/4 v4, 0x0

    .line 272
    .local v4, "_arg3":[I
    :goto_8
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/atmos/api/IDs$Stub;->iGetParameter(III[I)I

    move-result v10

    .line 273
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 270
    .end local v4    # "_arg3":[I
    .end local v10    # "_result":I
    :cond_7
    new-array v4, v9, [I

    .restart local v4    # "_arg3":[I
    goto :goto_8

    .line 280
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v9    # "_arg3_length":I
    :sswitch_11
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 286
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 287
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iSetIeqPreset(III)I

    move-result v10

    .line 288
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v10    # "_result":I
    :sswitch_12
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 298
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 299
    .restart local v7    # "_arg1_length":I
    if-gez v7, :cond_8

    .line 300
    const/4 v2, 0x0

    .line 305
    .local v2, "_arg1":[I
    :goto_9
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iGetIeqPreset(I[I)I

    move-result v10

    .line 306
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 309
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 303
    .end local v2    # "_arg1":[I
    .end local v10    # "_result":I
    :cond_8
    new-array v2, v7, [I

    .restart local v2    # "_arg1":[I
    goto :goto_9

    .line 313
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v7    # "_arg1_length":I
    :sswitch_13
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 318
    .restart local v7    # "_arg1_length":I
    if-gez v7, :cond_9

    .line 319
    const/4 v2, 0x0

    .line 324
    .restart local v2    # "_arg1":[I
    :goto_a
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iGetIeqPresetCount(I[I)I

    move-result v10

    .line 325
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 328
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg1":[I
    .end local v10    # "_result":I
    :cond_9
    new-array v2, v7, [I

    .restart local v2    # "_arg1":[I
    goto :goto_a

    .line 332
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v7    # "_arg1_length":I
    :sswitch_14
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 339
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iSetProfile(III)I

    move-result v10

    .line 340
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 346
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v10    # "_result":I
    :sswitch_15
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 350
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 351
    .restart local v7    # "_arg1_length":I
    if-gez v7, :cond_a

    .line 352
    const/4 v2, 0x0

    .line 357
    .local v2, "_arg1":[I
    :goto_b
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iGetProfile(I[I)I

    move-result v10

    .line 358
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 355
    .end local v2    # "_arg1":[I
    .end local v10    # "_result":I
    :cond_a
    new-array v2, v7, [I

    .restart local v2    # "_arg1":[I
    goto :goto_b

    .line 365
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v7    # "_arg1_length":I
    :sswitch_16
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 372
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iResetProfile(III)I

    move-result v10

    .line 373
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 379
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v10    # "_result":I
    :sswitch_17
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 383
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 385
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 386
    .local v8, "_arg2_length":I
    if-gez v8, :cond_b

    .line 387
    const/4 v3, 0x0

    .line 392
    .local v3, "_arg2":[Z
    :goto_c
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iGetProfileModified(II[Z)I

    move-result v10

    .line 393
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 396
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 390
    .end local v3    # "_arg2":[Z
    .end local v10    # "_result":I
    :cond_b
    new-array v3, v8, [Z

    .restart local v3    # "_arg2":[Z
    goto :goto_c

    .line 400
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[Z
    .end local v8    # "_arg2_length":I
    :sswitch_18
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 404
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 405
    .restart local v7    # "_arg1_length":I
    if-gez v7, :cond_c

    .line 406
    const/4 v2, 0x0

    .line 411
    .local v2, "_arg1":[I
    :goto_d
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iGetProfileCount(I[I)I

    move-result v10

    .line 412
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 409
    .end local v2    # "_arg1":[I
    .end local v10    # "_result":I
    :cond_c
    new-array v2, v7, [I

    .restart local v2    # "_arg1":[I
    goto :goto_d

    .line 419
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v7    # "_arg1_length":I
    :sswitch_19
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 423
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 424
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iRequestAccessRight(II)I

    move-result v10

    .line 425
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 431
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_1a
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iAbandonAccessRight(II)I

    move-result v10

    .line 437
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 443
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_1b
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 449
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 450
    .restart local v8    # "_arg2_length":I
    if-gez v8, :cond_d

    .line 451
    const/4 v3, 0x0

    .line 456
    .local v3, "_arg2":[I
    :goto_e
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iCheckAccessRight(II[I)I

    move-result v10

    .line 457
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 460
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 454
    .end local v3    # "_arg2":[I
    .end local v10    # "_result":I
    :cond_d
    new-array v3, v8, [I

    .restart local v3    # "_arg2":[I
    goto :goto_e

    .line 464
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v8    # "_arg2_length":I
    :sswitch_1c
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 469
    .restart local v7    # "_arg1_length":I
    if-gez v7, :cond_e

    .line 470
    const/4 v2, 0x0

    .line 475
    .local v2, "_arg1":[I
    :goto_f
    invoke-virtual {p0, v1, v2}, Lcom/atmos/api/IDs$Stub;->iGetParamLength(I[I)I

    move-result v10

    .line 476
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 479
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 473
    .end local v2    # "_arg1":[I
    .end local v10    # "_result":I
    :cond_e
    new-array v2, v7, [I

    .restart local v2    # "_arg1":[I
    goto :goto_f

    .line 483
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    .end local v7    # "_arg1_length":I
    :sswitch_1d
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 486
    .restart local v6    # "_arg0_length":I
    if-gez v6, :cond_f

    .line 487
    const/4 v1, 0x0

    .line 492
    .local v1, "_arg0":[Z
    :goto_10
    invoke-virtual {p0, v1}, Lcom/atmos/api/IDs$Stub;->iGetMonoSpeaker([Z)I

    move-result v10

    .line 493
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 496
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 490
    .end local v1    # "_arg0":[Z
    .end local v10    # "_result":I
    :cond_f
    new-array v1, v6, [Z

    .restart local v1    # "_arg0":[Z
    goto :goto_10

    .line 500
    .end local v1    # "_arg0":[Z
    .end local v6    # "_arg0_length":I
    :sswitch_1e
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 506
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iActivateTuning(IILjava/lang/String;)I

    move-result v10

    .line 508
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 514
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_1f
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 518
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 521
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iDeactivateTuning(IILjava/lang/String;)I

    move-result v10

    .line 522
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 528
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":I
    :sswitch_20
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 532
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 534
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 535
    sget-object v0, Lcom/atmos/api/DsProfileName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/atmos/api/DsProfileName;

    .line 540
    .local v3, "_arg2":Lcom/atmos/api/DsProfileName;
    :goto_11
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iSetProfileName(IILcom/atmos/api/DsProfileName;)I

    move-result v10

    .line 541
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 538
    .end local v3    # "_arg2":Lcom/atmos/api/DsProfileName;
    .end local v10    # "_result":I
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Lcom/atmos/api/DsProfileName;
    goto :goto_11

    .line 547
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/atmos/api/DsProfileName;
    :sswitch_21
    const-string v0, "com.atmos.api.IDs"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 554
    .restart local v8    # "_arg2_length":I
    if-gez v8, :cond_11

    .line 555
    const/4 v3, 0x0

    .line 560
    .local v3, "_arg2":[Lcom/atmos/api/DsProfileName;
    :goto_12
    invoke-virtual {p0, v1, v2, v3}, Lcom/atmos/api/IDs$Stub;->iGetProfileName(II[Lcom/atmos/api/DsProfileName;)I

    move-result v10

    .line 561
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p3, v3, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 564
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 558
    .end local v3    # "_arg2":[Lcom/atmos/api/DsProfileName;
    .end local v10    # "_result":I
    :cond_11
    new-array v3, v8, [Lcom/atmos/api/DsProfileName;

    .restart local v3    # "_arg2":[Lcom/atmos/api/DsProfileName;
    goto :goto_12

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
