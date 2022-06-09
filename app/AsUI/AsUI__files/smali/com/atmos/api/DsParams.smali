.class public final enum Lcom/atmos/api/DsParams;
.super Ljava/lang/Enum;
.source "DsParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/atmos/api/DsParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/atmos/api/DsParams;

.field public static final enum AudioOptimizerBandCount:Lcom/atmos/api/DsParams;

.field public static final enum AudioOptimizerBandFrequencies:Lcom/atmos/api/DsParams;

.field public static final enum AudioOptimizerBandGains:Lcom/atmos/api/DsParams;

.field public static final enum AudioOptimizerChannelCount:Lcom/atmos/api/DsParams;

.field public static final enum AudioOptimizerEnable:Lcom/atmos/api/DsParams;

.field public static final enum AudioRegulatorBandCount:Lcom/atmos/api/DsParams;

.field public static final enum AudioRegulatorBandFrequencies:Lcom/atmos/api/DsParams;

.field public static final enum AudioRegulatorBandHighThresholds:Lcom/atmos/api/DsParams;

.field public static final enum AudioRegulatorBandIsolates:Lcom/atmos/api/DsParams;

.field public static final enum AudioRegulatorBandLowThresholds:Lcom/atmos/api/DsParams;

.field public static final enum AudioRegulatorOverdrive:Lcom/atmos/api/DsParams;

.field public static final enum AudioRegulatorTimbrePreservationAmount:Lcom/atmos/api/DsParams;

.field private static final DAP1_PARAM_NAMES:[Ljava/lang/String;

.field public static final enum DialogEnhancementAmount:Lcom/atmos/api/DsParams;

.field public static final enum DialogEnhancementDucking:Lcom/atmos/api/DsParams;

.field public static final enum DialogEnhancementEnable:Lcom/atmos/api/DsParams;

.field public static final enum DolbyHeadphoneReverberationGain:Lcom/atmos/api/DsParams;

.field public static final enum DolbyHeadphoneSurroundBoost:Lcom/atmos/api/DsParams;

.field public static final enum DolbyHeadphoneVirtualizerControl:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVirtualSpeakerAngle:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVirtualSpeakerStartFrequency:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVirtualSpeakerSurroundBoost:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVirtualSpeakerVirtualizerControl:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVolumeLevelerEnable:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVolumeLevelerInputTarget:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVolumeLevelerOutputTarget:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVolumeLevelingAmount:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVolumeModelerCalibration:Lcom/atmos/api/DsParams;

.field public static final enum DolbyVolumeModelerEnable:Lcom/atmos/api/DsParams;

.field public static final enum GraphicEqualizerBandCount:Lcom/atmos/api/DsParams;

.field public static final enum GraphicEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

.field public static final enum GraphicEqualizerBandGains:Lcom/atmos/api/DsParams;

.field public static final enum GraphicEqualizerEnable:Lcom/atmos/api/DsParams;

.field public static final enum IntelligentEqualizerAmount:Lcom/atmos/api/DsParams;

.field public static final enum IntelligentEqualizerBandCount:Lcom/atmos/api/DsParams;

.field public static final enum IntelligentEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

.field public static final enum IntelligentEqualizerBandTargets:Lcom/atmos/api/DsParams;

.field public static final enum IntelligentEqualizerEnable:Lcom/atmos/api/DsParams;

.field public static final enum NextGenSurroundEnable:Lcom/atmos/api/DsParams;

.field public static final enum PeakLimiterBoost:Lcom/atmos/api/DsParams;

.field public static final enum PeakLimitingProtectionMode:Lcom/atmos/api/DsParams;

.field public static final enum VolumeMaximizerBoost:Lcom/atmos/api/DsParams;

.field public static final enum VolumeMaximizerEnable:Lcom/atmos/api/DsParams;

.field private static final params:[Lcom/atmos/api/DsParams;


# instance fields
.field private id_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyHeadphoneVirtualizerControl"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v2}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/atmos/api/DsParams;

    .line 34
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVirtualSpeakerVirtualizerControl"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v5, v2}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/atmos/api/DsParams;

    .line 41
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVolumeLevelerEnable"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v6, v2}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/atmos/api/DsParams;

    .line 48
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVolumeModelerEnable"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v7, v2}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVolumeModelerEnable:Lcom/atmos/api/DsParams;

    .line 56
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "NextGenSurroundEnable"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v8, v2}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->NextGenSurroundEnable:Lcom/atmos/api/DsParams;

    .line 63
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "IntelligentEqualizerEnable"

    const/4 v2, 0x5

    const/16 v3, 0x6a

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->IntelligentEqualizerEnable:Lcom/atmos/api/DsParams;

    .line 70
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DialogEnhancementEnable"

    const/4 v2, 0x6

    const/16 v3, 0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DialogEnhancementEnable:Lcom/atmos/api/DsParams;

    .line 77
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "GraphicEqualizerEnable"

    const/4 v2, 0x7

    const/16 v3, 0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->GraphicEqualizerEnable:Lcom/atmos/api/DsParams;

    .line 83
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyHeadphoneSurroundBoost"

    const/16 v2, 0x8

    const/16 v3, 0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/atmos/api/DsParams;

    .line 88
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyHeadphoneReverberationGain"

    const/16 v2, 0x9

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/atmos/api/DsParams;

    .line 93
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVirtualSpeakerSurroundBoost"

    const/16 v2, 0xa

    const/16 v3, 0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/atmos/api/DsParams;

    .line 98
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVirtualSpeakerAngle"

    const/16 v2, 0xb

    const/16 v3, 0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/atmos/api/DsParams;

    .line 103
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVirtualSpeakerStartFrequency"

    const/16 v2, 0xc

    const/16 v3, 0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/atmos/api/DsParams;

    .line 108
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVolumeLevelingAmount"

    const/16 v2, 0xd

    const/16 v3, 0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/atmos/api/DsParams;

    .line 113
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "IntelligentEqualizerBandTargets"

    const/16 v2, 0xe

    const/16 v3, 0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/atmos/api/DsParams;

    .line 118
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "IntelligentEqualizerAmount"

    const/16 v2, 0xf

    const/16 v3, 0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->IntelligentEqualizerAmount:Lcom/atmos/api/DsParams;

    .line 123
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DialogEnhancementAmount"

    const/16 v2, 0x10

    const/16 v3, 0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DialogEnhancementAmount:Lcom/atmos/api/DsParams;

    .line 128
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DialogEnhancementDucking"

    const/16 v2, 0x11

    const/16 v3, 0x76

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DialogEnhancementDucking:Lcom/atmos/api/DsParams;

    .line 133
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "GraphicEqualizerBandGains"

    const/16 v2, 0x12

    const/16 v3, 0x77

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->GraphicEqualizerBandGains:Lcom/atmos/api/DsParams;

    .line 141
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioOptimizerEnable"

    const/16 v2, 0x13

    const/16 v3, 0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioOptimizerEnable:Lcom/atmos/api/DsParams;

    .line 146
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "PeakLimiterBoost"

    const/16 v2, 0x14

    const/16 v3, 0x79

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->PeakLimiterBoost:Lcom/atmos/api/DsParams;

    .line 156
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "PeakLimitingProtectionMode"

    const/16 v2, 0x15

    const/16 v3, 0x7a

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->PeakLimitingProtectionMode:Lcom/atmos/api/DsParams;

    .line 164
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "VolumeMaximizerEnable"

    const/16 v2, 0x16

    const/16 v3, 0x7b

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->VolumeMaximizerEnable:Lcom/atmos/api/DsParams;

    .line 169
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "VolumeMaximizerBoost"

    const/16 v2, 0x17

    const/16 v3, 0x7c

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->VolumeMaximizerBoost:Lcom/atmos/api/DsParams;

    .line 174
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVolumeLevelerInputTarget"

    const/16 v2, 0x18

    const/16 v3, 0x7d

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/atmos/api/DsParams;

    .line 179
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVolumeLevelerOutputTarget"

    const/16 v2, 0x19

    const/16 v3, 0x7e

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/atmos/api/DsParams;

    .line 184
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "DolbyVolumeModelerCalibration"

    const/16 v2, 0x1a

    const/16 v3, 0x7f

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/atmos/api/DsParams;

    .line 189
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "IntelligentEqualizerBandCount"

    const/16 v2, 0x1b

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandCount:Lcom/atmos/api/DsParams;

    .line 194
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "IntelligentEqualizerBandFrequencies"

    const/16 v2, 0x1c

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

    .line 199
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "GraphicEqualizerBandCount"

    const/16 v2, 0x1d

    const/16 v3, 0x82

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->GraphicEqualizerBandCount:Lcom/atmos/api/DsParams;

    .line 204
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "GraphicEqualizerBandFrequencies"

    const/16 v2, 0x1e

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

    .line 209
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioOptimizerBandCount"

    const/16 v2, 0x1f

    const/16 v3, 0x84

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioOptimizerBandCount:Lcom/atmos/api/DsParams;

    .line 214
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioOptimizerBandFrequencies"

    const/16 v2, 0x20

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/atmos/api/DsParams;

    .line 219
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioOptimizerBandGains"

    const/16 v2, 0x21

    const/16 v3, 0x86

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioOptimizerBandGains:Lcom/atmos/api/DsParams;

    .line 224
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioRegulatorBandCount"

    const/16 v2, 0x22

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioRegulatorBandCount:Lcom/atmos/api/DsParams;

    .line 229
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioRegulatorBandFrequencies"

    const/16 v2, 0x23

    const/16 v3, 0x88

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/atmos/api/DsParams;

    .line 234
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioOptimizerChannelCount"

    const/16 v2, 0x24

    const/16 v3, 0x89

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioOptimizerChannelCount:Lcom/atmos/api/DsParams;

    .line 241
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioRegulatorBandIsolates"

    const/16 v2, 0x25

    const/16 v3, 0x8a

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioRegulatorBandIsolates:Lcom/atmos/api/DsParams;

    .line 246
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioRegulatorBandLowThresholds"

    const/16 v2, 0x26

    const/16 v3, 0x8b

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/atmos/api/DsParams;

    .line 251
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioRegulatorBandHighThresholds"

    const/16 v2, 0x27

    const/16 v3, 0x8c

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/atmos/api/DsParams;

    .line 256
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioRegulatorOverdrive"

    const/16 v2, 0x28

    const/16 v3, 0x8d

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioRegulatorOverdrive:Lcom/atmos/api/DsParams;

    .line 261
    new-instance v0, Lcom/atmos/api/DsParams;

    const-string v1, "AudioRegulatorTimbrePreservationAmount"

    const/16 v2, 0x29

    const/16 v3, 0x8e

    invoke-direct {v0, v1, v2, v3}, Lcom/atmos/api/DsParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/atmos/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/atmos/api/DsParams;

    .line 16
    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/atmos/api/DsParams;

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVolumeModelerEnable:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/atmos/api/DsParams;->NextGenSurroundEnable:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/atmos/api/DsParams;->DialogEnhancementEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/atmos/api/DsParams;->DialogEnhancementAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/atmos/api/DsParams;->DialogEnhancementDucking:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerBandGains:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/atmos/api/DsParams;->PeakLimiterBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/atmos/api/DsParams;->PeakLimitingProtectionMode:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/atmos/api/DsParams;->VolumeMaximizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/atmos/api/DsParams;->VolumeMaximizerBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerBandGains:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerChannelCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandIsolates:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorOverdrive:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/atmos/api/DsParams;->$VALUES:[Lcom/atmos/api/DsParams;

    .line 397
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "null"

    aput-object v1, v0, v4

    const-string v1, "vdhe"

    aput-object v1, v0, v5

    const-string v1, "vspe"

    aput-object v1, v0, v6

    const-string v1, "dvle"

    aput-object v1, v0, v7

    const-string v1, "dvme"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "ngon"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ieon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deon"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "geon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "dhsb"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dhrg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dssb"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dssa"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dssf"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "dvla"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "iebt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "iea"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "dea"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ded"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "gebg"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "aoon"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "plb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "plmd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vmon"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "vmb"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "dvli"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "dvlo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "dvmc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ienb"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "iebf"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "genb"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "gebf"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "aonb"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "aobf"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "aobg"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "arnb"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "arbf"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "aocc"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "arbi"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "arbl"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "arbh"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "arod"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "artp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/atmos/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    .line 459
    const/16 v0, 0x2a

    new-array v0, v0, [Lcom/atmos/api/DsParams;

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyHeadphoneVirtualizerControl:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerVirtualizerControl:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerEnable:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/atmos/api/DsParams;->DolbyVolumeModelerEnable:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/atmos/api/DsParams;->NextGenSurroundEnable:Lcom/atmos/api/DsParams;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/atmos/api/DsParams;->DialogEnhancementEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyHeadphoneSurroundBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyHeadphoneReverberationGain:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerSurroundBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerAngle:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVirtualSpeakerStartFrequency:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeLevelingAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandTargets:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/atmos/api/DsParams;->DialogEnhancementAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/atmos/api/DsParams;->DialogEnhancementDucking:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerBandGains:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/atmos/api/DsParams;->PeakLimiterBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/atmos/api/DsParams;->PeakLimitingProtectionMode:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/atmos/api/DsParams;->VolumeMaximizerEnable:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/atmos/api/DsParams;->VolumeMaximizerBoost:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerInputTarget:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeLevelerOutputTarget:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/atmos/api/DsParams;->DolbyVolumeModelerCalibration:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/atmos/api/DsParams;->IntelligentEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/atmos/api/DsParams;->GraphicEqualizerBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerBandGains:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandFrequencies:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/atmos/api/DsParams;->AudioOptimizerChannelCount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandIsolates:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandLowThresholds:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorBandHighThresholds:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorOverdrive:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/atmos/api/DsParams;->AudioRegulatorTimbrePreservationAmount:Lcom/atmos/api/DsParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/atmos/api/DsParams;->params:[Lcom/atmos/api/DsParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/atmos/api/DsParams;->id_:I

    return-void
.end method

.method public static FromInt(I)Lcom/atmos/api/DsParams;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 347
    const/16 v1, 0x64

    if-le p0, v1, :cond_0

    const/16 v1, 0x8f

    if-ge p0, v1, :cond_0

    .line 349
    sget-object v1, Lcom/atmos/api/DsParams;->params:[Lcom/atmos/api/DsParams;

    add-int/lit8 v2, p0, -0x64

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 359
    .local v0, "item":Lcom/atmos/api/DsParams;
    :goto_0
    return-object v0

    .line 357
    .end local v0    # "item":Lcom/atmos/api/DsParams;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "item":Lcom/atmos/api/DsParams;
    goto :goto_0
.end method

.method public static FromString(Ljava/lang/String;)Lcom/atmos/api/DsParams;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "item":Lcom/atmos/api/DsParams;
    const/4 v1, 0x0

    .line 369
    .local v1, "isFound":Z
    if-eqz p0, :cond_0

    .line 371
    const/16 v0, 0x64

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x8e

    if-ge v0, v3, :cond_0

    .line 373
    sget-object v3, Lcom/atmos/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x64

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    sget-object v3, Lcom/atmos/api/DsParams;->params:[Lcom/atmos/api/DsParams;

    add-int/lit8 v4, v0, -0x64

    aget-object v2, v3, v4

    .line 376
    const/4 v1, 0x1

    .line 393
    .end local v0    # "i":I
    :cond_0
    return-object v2

    .line 371
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/atmos/api/DsParams;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/atmos/api/DsParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/atmos/api/DsParams;

    return-object v0
.end method

.method public static values()[Lcom/atmos/api/DsParams;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/atmos/api/DsParams;->$VALUES:[Lcom/atmos/api/DsParams;

    invoke-virtual {v0}, [Lcom/atmos/api/DsParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/atmos/api/DsParams;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/atmos/api/DsParams;->id_:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    iget v1, p0, Lcom/atmos/api/DsParams;->id_:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/atmos/api/DsParams;->id_:I

    const/16 v2, 0x8f

    if-ge v1, v2, :cond_0

    .line 327
    sget-object v1, Lcom/atmos/api/DsParams;->DAP1_PARAM_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/atmos/api/DsParams;->id_:I

    add-int/lit8 v2, v2, -0x64

    aget-object v0, v1, v2

    .line 337
    .local v0, "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 335
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const-string v0, "error"

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method
