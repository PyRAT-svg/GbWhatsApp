.class public Lorg/wawebrtc/MediaCodecVideoEncoder;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEQUEUE_TIMEOUT:I = 0x0

.field public static final H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field public static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field public static final H265_HW_EXCEPTION_MODELS:[Ljava/lang/String;

.field public static final H265_MIME_TYPE:Ljava/lang/String; = "video/hevc"

.field public static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field public static final MIN_ENCODER_HEIGHT:I = 0x90

.field public static final MIN_ENCODER_WIDTH:I = 0xb0

.field public static final TAG:Ljava/lang/String; = "MediaCodecVideoEncoder"

.field public static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field public static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field public static final blacklistedHwCodecPrefixes:[Ljava/lang/String;

.field public static final cachedCodecCapabilites:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static codecErrors:I

.field public static errorCallback:LX/2tb;

.field public static final h264BlacklistedBuildHardware:[Ljava/lang/String;

.field public static final h265BlacklistedBuildHardware:[Ljava/lang/String;

.field public static hwEncoderDisabledTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static lastReleaseTimestamp:J

.field public static runningInstance:Lorg/wawebrtc/MediaCodecVideoEncoder;

.field public static final supportedH264HwCodecPrefixes:[Ljava/lang/String;

.field public static final supportedH265HwCodecPrefixes:[Ljava/lang/String;

.field public static final supportedSurfaceColorList:[I

.field public static final supportedVp8HwCodecPrefixes:[Ljava/lang/String;

.field public static final supportedVp9HwCodecPrefixes:[Ljava/lang/String;

.field public static final trustedCodecPrefixes:[Ljava/lang/String;


# instance fields
.field public cachedBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public cachedInputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

.field public cachedOutputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

.field public final carryAlongInfos:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "LX/2tZ;",
            ">;"
        }
    .end annotation
.end field

.field public codecName:Ljava/lang/String;

.field public colorFormat:I

.field public colorId:I

.field public drawer:LX/3DB;

.field public eglBase:LX/3DA;

.field public final freeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LX/2tZ;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public inputBuffers:[Ljava/nio/ByteBuffer;

.field public inputSurface:Landroid/view/Surface;

.field public keyFrameRequestBundle:Landroid/os/Bundle;

.field public mediaCodec:Landroid/media/MediaCodec;

.field public mediaCodecThread:Ljava/lang/Thread;

.field public outputBuffers:[Ljava/nio/ByteBuffer;

.field public type:LX/2tc;

.field public width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->lastReleaseTimestamp:J

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "OMX.qcom."

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v3, 0x1

    const-string v0, "OMX.Intel."

    aput-object v0, v4, v3

    sput-object v4, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    aput-object v1, v4, v2

    const-string v0, "OMX.Exynos."

    aput-object v0, v4, v3

    const-string v0, "OMX.google"

    aput-object v0, v4, v5

    const/4 v1, 0x3

    const-string v0, "OMX.IMG."

    aput-object v0, v4, v1

    sput-object v4, Lorg/wawebrtc/MediaCodecVideoEncoder;->trustedCodecPrefixes:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->blacklistedHwCodecPrefixes:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const-string v0, "sc8830"

    aput-object v0, v1, v2

    const-string v0, "sc8830a"

    aput-object v0, v1, v3

    const-string v0, "samsungexynos7580"

    aput-object v0, v1, v5

    sput-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->h264BlacklistedBuildHardware:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->h265BlacklistedBuildHardware:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v0, "SAMSUNG-SGH-I337"

    aput-object v0, v1, v2

    const-string v0, "Nexus 7"

    aput-object v0, v1, v3

    sput-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->H265_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    new-array v1, v3, [I

    const v0, 0x7f000789

    aput v0, v1, v2

    sput-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedCodecCapabilites:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->carryAlongInfos:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->freeInfos:Ljava/util/List;

    new-instance v0, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    invoke-direct {v0}, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedOutputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    new-instance v0, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    invoke-direct {v0}, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedInputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->keyFrameRequestBundle:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_0

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->freeInfos:Ljava/util/List;

    new-instance v0, LX/2tZ;

    invoke-direct {v0}, LX/2tZ;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->keyFrameRequestBundle:Landroid/os/Bundle;

    const-string v0, "request-sync"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$000(Lorg/wawebrtc/MediaCodecVideoEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method private checkOnMediaCodecThread()V
    .locals 0

    return-void
.end method

.method public static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 0

    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    return-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static disableH264HwCodec()V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder H.264 encoding is disabled by application."

    invoke-static {v0}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;)V

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v0, "video/avc"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static disableH265HwCodec()V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder H.265 encoding is disabled by application."

    invoke-static {v0}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;)V

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v0, "video/hevc"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static disableVp8HwCodec()V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder VP8 encoding is disabled by application."

    invoke-static {v0}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;)V

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v0, "video/x-vnd.on2.vp8"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static disableVp9HwCodec()V
    .locals 2

    const-string v0, "MediaCodecVideoEncoder VP9 encoding is disabled by application."

    invoke-static {v0}, Lcom/whatsapp/util/Log;->w(Ljava/lang/String;)V

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v0, "video/x-vnd.on2.vp9"

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[IIZ)",
            "Ljava/util/List<",
            "LX/2ta;",
            ">;"
        }
    .end annotation

    move-object/from16 v13, p2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v0, 0x10

    if-ge v1, v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "vid_driver.encoder_name"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v21, "video/avc"

    move-object/from16 v14, p0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v20, "MediaCodecVideoEncoder Model: "

    const-string v11, "video/hevc"

    if-eqz v0, :cond_1

    invoke-static {}, LX/1st;->A0D()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static/range {v20 .. v20}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v4, Lorg/wawebrtc/MediaCodecVideoEncoder;->H265_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v4, v2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v19, 0x1

    :goto_1
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->h265BlacklistedBuildHardware:[Ljava/lang/String;

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    :cond_4
    const/16 v19, 0x0

    goto :goto_5

    :cond_5
    sget-object v4, Lorg/wawebrtc/MediaCodecVideoEncoder;->H264_HW_EXCEPTION_MODELS:[Ljava/lang/String;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_22

    aget-object v1, v4, v2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v19, 0x1

    :goto_3
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->h264BlacklistedBuildHardware:[Ljava/lang/String;

    :goto_4
    invoke-static {v1, v0}, LX/1st;->A02(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v19, 0x1

    :cond_6
    :goto_5
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    const/4 v9, 0x0

    const/4 v8, -0x1

    :goto_6
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    if-ge v9, v0, :cond_23

    invoke-static {v9}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_20

    aget-object v0, v4, v2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_8
    if-eqz v7, :cond_7

    if-eqz v19, :cond_8

    const-string v0, "OMX.google"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static/range {v20 .. v20}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has black listed H.264 hw encoder "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    :cond_7
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    if-eqz p4, :cond_9

    const-string v0, "MediaCodecVideoEncoder Found candidate encoder "

    invoke-static {v0, v7}, LX/0CS;->A1A(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->blacklistedHwCodecPrefixes:[Ljava/lang/String;

    const-string v2, "MediaCodecVideoEncoder "

    if-eqz v0, :cond_a

    invoke-static {v7, v0}, LX/1st;->A02(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is in the blacklist."

    goto :goto_9

    :cond_a
    move-object/from16 v0, p1

    if-eqz p1, :cond_c

    invoke-static {v7, v0}, LX/1st;->A02(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    :cond_b
    :goto_c
    if-nez v3, :cond_f

    const-string v0, " is not supported on "

    invoke-static {v2, v7, v0}, LX/0CS;->A0Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v0}, LX/0CS;->A1Q(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_b

    :cond_c
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-static {v7, v0}, LX/1st;->A0F(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_c

    :cond_d
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OMX.google"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_b

    :cond_e
    const/4 v3, 0x0

    goto :goto_c

    :cond_f
    const-string v0, "_"

    invoke-static {v7, v0, v14}, LX/0CS;->A0K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedCodecCapabilites:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedCodecCapabilites:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-object/from16 v18, v0

    :goto_d
    const/4 v5, 0x0

    move/from16 v2, p3

    if-gez p3, :cond_10

    const/4 v5, 0x1

    :cond_10
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v4

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_13

    aget-object v0, v4, v1

    if-ltz p3, :cond_11

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v0, v2, :cond_11

    const/4 v5, 0x1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_12
    :try_start_0
    invoke-virtual {v1, v14}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedCodecCapabilites:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_13
    if-nez v5, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "MediaCodecVideoEncoder  "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not support Profile "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_14
    if-eqz p4, :cond_16

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v4

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_15

    aget v5, v4, v2

    const-string v0, "MediaCodecVideoEncoder    Supported Color: 0x"

    invoke-static {v0}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_16

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v2

    if-eqz v2, :cond_16

    const-string v0, "MediaCodecVideoEncoder    CBR: "

    invoke-static {v0}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", VBR: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  CQ: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    :cond_16
    if-nez v13, :cond_1d

    const-string v0, "vid_driver.encoder_color_format"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v12, :cond_1c

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_10
    invoke-static {v7, v6}, LX/1st;->A07(Ljava/lang/String;I)[I

    move-result-object v13

    :goto_11
    array-length v0, v13

    move/from16 p0, v0

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_12
    move/from16 v0, p0

    if-ge v5, v0, :cond_1e

    aget v4, v13, v5

    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v0, v3

    move/from16 v27, v0

    const/4 v2, 0x0

    :goto_13
    move/from16 v0, v27

    if-ge v2, v0, :cond_1b

    aget v1, v3, v2

    const/16 v0, 0x13

    if-ne v4, v0, :cond_18

    const-string v0, "OMX.SEC.avc.enc"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "OMX.IMG.TOPAZ.VIDEO.Encoder"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_18
    if-ne v1, v4, :cond_17

    const-string v17, "MediaCodecVideoEncoder Found target encoder for mime "

    const-string v15, " : "

    const-string v0, ". Color: 0x"

    move-object/from16 v22, v17

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v7

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v26}, LX/0CS;->A0a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v15, v0, :cond_19

    if-nez v16, :cond_19

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v16

    :cond_19
    if-ne v1, v6, :cond_1a

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v8

    :cond_1a
    new-instance v15, LX/2ta;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v22, v15

    move-object/from16 v23, v7

    move/from16 v24, v1

    move-object/from16 v25, v16

    move-object/from16 v26, v0

    invoke-direct/range {v22 .. v26}, LX/2ta;-><init>(Ljava/lang/String;ILandroid/media/MediaCodecInfo$VideoCapabilities;[Landroid/media/MediaCodecInfo$CodecProfileLevel;)V

    invoke-virtual {v10, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_10

    :cond_1d
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_7

    if-eqz v16, :cond_7

    if-eqz p4, :cond_7

    const-string v0, "MediaCodecVideoEncoder birtate range: "

    invoke-static {v0}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", frame rate: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRates()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", height alignment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", width alignment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height range: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", width range: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :catchall_0
    move-exception v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "MediaCodecVideoEncoder failed to get capabilities for "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_22
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_23
    if-ltz v8, :cond_24

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/2ta;

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v1, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "MediaCodecVideoEncoder No HW encoder found for mime "

    invoke-static {v0, v14}, LX/0CS;->A1A(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_25
    return-object v10
.end method

.method private getCodecKeyFrameInterval()I
    .locals 2

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->trustedCodecPrefixes:[Ljava/lang/String;

    invoke-static {v1, v0}, LX/1st;->A02(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private getDequeueOutputTimeout()I
    .locals 3

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->trustedCodecPrefixes:[Ljava/lang/String;

    invoke-static {v1, v0}, LX/1st;->A02(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    const-string v0, "OMX.google.h264.encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    if-eqz v2, :cond_1

    const/16 v0, 0x1e

    return v0

    :cond_1
    const/16 v0, 0x3e8

    return v0
.end method

.method private getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static isH264HwSupported()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/avc"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static isH264HwSupportedUsingTextures()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/avc"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static isH265HwSupported()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/hevc"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static isH265HwSupportedUsingTextures()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/hevc"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static isVp8HwSupported()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static isVp8HwSupportedUsingTextures()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/x-vnd.on2.vp8"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static isVp9HwSupported()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static isVp9HwSupportedUsingTextures()Z
    .locals 5

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->hwEncoderDisabledTypes:Ljava/util/Set;

    const-string v4, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    const/4 v0, -0x1

    invoke-static {v4, v2, v1, v0, v3}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static printStackTrace()V
    .locals 4

    sget-object v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/wawebrtc/MediaCodecVideoEncoder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v2, v3

    if-lez v2, :cond_0

    const-string v0, "MediaCodecVideoEncoder  stacks trace:"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setErrorCallback(LX/2tb;)V
    .locals 0

    const-string p0, "MediaCodecVideoEncoder Set error callback"

    invoke-static {p0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method private setRates(II)Z
    .locals 4

    invoke-virtual {p0}, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportUpdateBitrate()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    mul-int/lit16 v0, p1, 0x3e8

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v0, "MediaCodecVideoEncoder setRates failed"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    :cond_0
    return v3
.end method


# virtual methods
.method public dequeueInputBuffer()Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;
    .locals 10

    :try_start_0
    iget-object v2, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedInputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    invoke-direct {p0, v1}, Lorg/wawebrtc/MediaCodecVideoEncoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;->set(ILjava/nio/ByteBuffer;ZJJIZ)V

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedInputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public dequeueOutputBuffer(I)Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;
    .locals 14

    :try_start_0
    iget-object v4, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-object v2, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    int-to-long v0, p1

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    if-ltz v5, :cond_3

    invoke-direct {p0, v5}, Lorg/wawebrtc/MediaCodecVideoEncoder;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedOutputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v4 .. v13}, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;->set(ILjava/nio/ByteBuffer;ZJJIZ)V

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedOutputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    return-object v0

    :cond_1
    and-int/2addr v4, v1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    const/4 v7, 0x1

    :cond_2
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->carryAlongInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/2tZ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v0, v2, LX/2tZ;->A01:J

    sub-long/2addr v10, v0

    iget v12, v2, LX/2tZ;->A00:I

    iget-object v4, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedOutputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-wide v8, v2, LX/2tZ;->A02:J

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;->set(ILjava/nio/ByteBuffer;ZJJIZ)V

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->freeInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedOutputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    return-object v0

    :cond_3
    const/4 v0, -0x3

    if-ne v5, v0, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    :cond_4
    invoke-virtual {p0, p1}, Lorg/wawebrtc/MediaCodecVideoEncoder;->dequeueOutputBuffer(I)Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, -0x2

    if-ne v5, v0, :cond_6

    invoke-virtual {p0, p1}, Lorg/wawebrtc/MediaCodecVideoEncoder;->dequeueOutputBuffer(I)Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, -0x1

    if-ne v5, v0, :cond_7

    const/4 v0, 0x0

    return-object v0

    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dequeueOutputBuffer: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v0, "MediaCodecVideoEncoder dequeueOutputBuffer failed"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->cachedOutputBuffer:Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/wawebrtc/MediaCodecVideoEncoder$BufferInfo;->set(ILjava/nio/ByteBuffer;ZJJIZ)V

    return-object v0
.end method

.method public encodeBuffer(ZIIJJI)Z
    .locals 10

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportForceKeyFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaCodecVideoEncoder Sync frame request"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->keyFrameRequestBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->freeInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    move-wide v6, p4

    move/from16 v8, p8

    if-eqz v0, :cond_1

    new-instance v3, LX/2tZ;

    invoke-direct/range {v3 .. v8}, LX/2tZ;-><init>(JJI)V

    :goto_0
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->carryAlongInfos:Ljava/util/Queue;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v4, p2

    invoke-direct {p0, p2}, Lorg/wawebrtc/MediaCodecVideoEncoder;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v6, p3

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide/from16 v7, p6

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->freeInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX/2tZ;

    iput-wide v4, v3, LX/2tZ;->A01:J

    iput-wide p4, v3, LX/2tZ;->A02:J

    iput v8, v3, LX/2tZ;->A00:I

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v0, "MediaCodecVideoEncoder encodeBuffer failed"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public encodeTexture(ZI[FJ)Z
    .locals 11

    if-eqz p1, :cond_0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    const-string v0, "MediaCodecVideoEncoder Sync frame request"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->keyFrameRequestBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->eglBase:LX/3DA;

    invoke-virtual {v0}, LX/2tM;->A04()V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->drawer:LX/3DB;

    iget v9, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->width:I

    iget v8, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->height:I

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, v1, LX/3DB;->A00:Ljava/util/Map;

    const-string v10, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oes_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(oes_tex, interp_tc);\n}\n"

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, LX/3DB;->A00:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX/2tN;

    :goto_0
    iget-object v0, v3, LX/2tN;->A00:LX/2tO;

    invoke-virtual {v0}, LX/2tO;->A02()V

    iget v0, v3, LX/2tN;->A01:I

    invoke-static {v0, v5, v4, p3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    invoke-static {v2, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v7, v6, v9, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v1, 0x5

    const/4 v0, 0x4

    invoke-static {v1, v4, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v4, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->eglBase:LX/3DA;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-virtual {v4}, LX/3DA;->A0A()V

    iget-object v1, v4, LX/3DA;->A03:Landroid/opengl/EGLSurface;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v0, :cond_5

    iget-object v0, v4, LX/3DA;->A02:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object v1, v4, LX/3DA;->A02:Landroid/opengl/EGLDisplay;

    iget-object v0, v4, LX/3DA;->A03:Landroid/opengl/EGLSurface;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto :goto_2

    :cond_1
    new-instance v3, LX/2tN;

    invoke-direct {v3, v10}, LX/2tN;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LX/3DB;->A00:Ljava/util/Map;

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, LX/2tN;->A00:LX/2tO;

    invoke-virtual {v0}, LX/2tO;->A02()V

    const/4 v2, 0x2

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvoid main() {\n  float y = texture2D(y_tex, interp_tc).r;\n  float u = texture2D(u_tex, interp_tc).r - 0.5;\n  float v = texture2D(v_tex, interp_tc).r - 0.5;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n"

    if-ne v10, v0, :cond_2

    iget-object v1, v3, LX/2tN;->A00:LX/2tO;

    const-string v0, "y_tex"

    invoke-virtual {v1, v0}, LX/2tO;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v1, v3, LX/2tN;->A00:LX/2tO;

    const-string v0, "u_tex"

    invoke-virtual {v1, v0}, LX/2tO;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v1, v3, LX/2tN;->A00:LX/2tO;

    const-string v0, "v_tex"

    invoke-virtual {v1, v0}, LX/2tO;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_1
    const-string v0, "Initialize fragment shader uniform values."

    invoke-static {v0}, LX/1VE;->A02(Ljava/lang/String;)V

    iget-object v10, v3, LX/2tN;->A00:LX/2tO;

    sget-object v1, LX/3DB;->A01:Ljava/nio/FloatBuffer;

    const-string v0, "in_pos"

    invoke-virtual {v10, v0, v2, v1}, LX/2tO;->A03(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    iget-object v10, v3, LX/2tN;->A00:LX/2tO;

    sget-object v1, LX/3DB;->A02:Ljava/nio/FloatBuffer;

    const-string v0, "in_tc"

    invoke-virtual {v10, v0, v2, v1}, LX/2tO;->A03(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform sampler2D rgb_tex;\n\nvoid main() {\n  gl_FragColor = texture2D(rgb_tex, interp_tc);\n}\n"

    if-ne v10, v0, :cond_3

    iget-object v1, v3, LX/2tN;->A00:LX/2tO;

    const-string v0, "rgb_tex"

    invoke-virtual {v1, v0}, LX/2tO;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    :cond_3
    if-ne v10, v10, :cond_4

    iget-object v1, v3, LX/2tN;->A00:LX/2tO;

    const-string v0, "oes_tex"

    invoke-virtual {v1, v0}, LX/2tO;->A01(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown fragment shader: "

    invoke-static {v0, v10}, LX/0CS;->A0J(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v0, "No EGLSurface - can\'t swap buffers"

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_3
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v0, "MediaCodecVideoEncoder encodeTexture failed"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public initEncode(LX/2tc;IIIIILX/3D9;)Z
    .locals 27

    move-object/from16 v8, p0

    const/4 v7, 0x0

    move-object/from16 v9, p7

    if-eqz p7, :cond_0

    const/4 v7, 0x1

    :cond_0
    move/from16 v0, p2

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->width:I

    move/from16 v0, p3

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->height:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "MediaCodecVideoEncoder Java initEncode: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, p1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->width:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->height:I

    const-string v2, ". @ "

    const-string v1, " kbps. Fps: "

    move/from16 v26, p4

    move/from16 v0, v26

    invoke-static {v4, v3, v2, v0, v1}, LX/0CS;->A1M(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ". Key frame interval: "

    const-string v0, " seconds. Encode from texture : "

    move/from16 v3, p6

    move/from16 v15, p5

    invoke-static {v4, v15, v1, v3, v0}, LX/0CS;->A1M(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v4, v7}, LX/0CS;->A0s(Ljava/lang/StringBuilder;Z)V

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    if-nez v0, :cond_21

    const-string v17, "vid_driver.encoder_name"

    invoke-static/range {v17 .. v17}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-wide v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->lastReleaseTimestamp:J

    sub-long/2addr v4, v0

    const-wide/16 v1, 0xbb8

    cmp-long v0, v4, v1

    const/4 v4, 0x0

    if-lez v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    :try_start_0
    sget-object v0, LX/2tc;->A03:LX/2tc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v5, "video/hevc"

    const-string v11, "video/avc"

    const-string v6, "video/x-vnd.on2.vp9"

    const-string v12, "video/x-vnd.on2.vp8"

    if-ne v10, v0, :cond_4

    if-eqz v13, :cond_2

    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v13, v2, v0

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp8HwCodecPrefixes:[Ljava/lang/String;

    :goto_0
    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_2
    const/4 v0, -0x1

    invoke-static {v12, v2, v1, v0, v4}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v2

    move-object v6, v12

    goto :goto_6

    :cond_4
    sget-object v0, LX/2tc;->A04:LX/2tc;

    if-ne v10, v0, :cond_7

    if-eqz v13, :cond_5

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v5, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    aput-object v13, v2, v5

    goto :goto_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    :goto_3
    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :goto_4
    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_5
    const/4 v0, -0x1

    invoke-static {v6, v2, v1, v0, v4}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v2

    :goto_6
    const/16 v5, 0x64

    goto :goto_e

    :cond_7
    sget-object v0, LX/2tc;->A01:LX/2tc;

    if-ne v10, v0, :cond_a

    if-eqz v13, :cond_8

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v5, 0x0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    aput-object v13, v2, v5

    goto :goto_7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    goto/16 :goto_17

    :cond_8
    :try_start_5
    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    :goto_7
    if-eqz v7, :cond_9

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    :goto_8
    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_9
    const/4 v0, -0x1

    invoke-static {v11, v2, v1, v0, v4}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v2

    move-object v6, v11

    goto :goto_d

    :cond_a
    sget-object v0, LX/2tc;->A02:LX/2tc;

    if-ne v10, v0, :cond_d

    if-eqz v13, :cond_b

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v13, v2, v0

    goto :goto_a

    :cond_b
    sget-object v2, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedH265HwCodecPrefixes:[Ljava/lang/String;

    :goto_a
    if-eqz v7, :cond_c

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    goto :goto_c

    :goto_b
    sget-object v1, Lorg/wawebrtc/MediaCodecVideoEncoder;->supportedSurfaceColorList:[I

    :goto_c
    const/4 v0, -0x1

    invoke-static {v5, v2, v1, v0, v4}, Lorg/wawebrtc/MediaCodecVideoEncoder;->findHwEncoder(Ljava/lang/String;[Ljava/lang/String;[IIZ)Ljava/util/List;

    move-result-object v2

    move-object v6, v5

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_e

    :goto_d
    const/16 v5, 0x14

    :goto_e
    if-ltz p6, :cond_e

    move v5, v3

    :cond_e
    if-eqz v2, :cond_20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    sput-object p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/wawebrtc/MediaCodecVideoEncoder;

    iget-object v1, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->freeInfos:Ljava/util/List;

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->carryAlongInfos:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->carryAlongInfos:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX/2ta;

    iget-object v3, v4, LX/2ta;->A00:Ljava/lang/String;

    iput-object v3, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    iget v2, v4, LX/2ta;->A02:I

    iput v2, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->colorFormat:I

    const-string v0, "MediaCodecVideoEncoder Java initEncode: format: 0x"

    invoke-static {v0}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for Encoder: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, LX/0CS;->A1Q(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    const-string v0, "OMX.google.h264.encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x140

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->width:I

    const/16 v0, 0xc0

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->height:I

    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "samsung"

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1d

    iget-object v0, v4, LX/2ta;->A03:Landroid/media/MediaCodecInfo$VideoCapabilities;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v0, v4, LX/2ta;->A03:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v24

    :cond_10
    :goto_10
    iget-object v1, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    invoke-static {v1}, LX/1st;->A04(Ljava/lang/String;)I

    move-result v22

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "OMX.qcom.video.encoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v22, 0x10

    :cond_11
    const-string v0, "vid_driver.encoder_min_width"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v0, "vid_driver.encoder_min_height"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v0, "vid_driver.encoder_alignment"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v0, "vid_driver.encoder_h264_profile"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v0, "vid_driver.encoder_h264_level"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v23

    :cond_12
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    :cond_14
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_11
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_12
    iget-object v12, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    iget v11, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->colorFormat:I

    iget v1, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->width:I

    iget v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->height:I

    const/16 v25, 0x0

    move/from16 v19, v11

    move/from16 v20, v1

    move/from16 v21, v0

    move-object/from16 v18, v12

    invoke-static/range {v18 .. v25}, LX/1st;->A0H(Ljava/lang/String;IIIIIILX/0z7;)LX/0z2;

    move-result-object v12

    iget v0, v12, LX/0z2;->A0A:I

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->width:I

    iget v0, v12, LX/0z2;->A07:I

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->height:I

    iget v0, v12, LX/0z2;->A01:I

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->colorFormat:I

    iget v0, v12, LX/0z2;->A06:I

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->colorId:I

    const-string v0, "vid_driver.encoder_frame_converter_color_format"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {v17 .. v17}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "vid_driver.encoder_color_format"

    invoke-static {v0}, Lcom/whatsapp/voipcalling/Voip;->getVoipParamAsInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v13, :cond_15

    if-eqz v1, :cond_15

    if-eqz v11, :cond_15

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v1, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->colorFormat:I

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_15

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->colorId:I

    :cond_15
    invoke-static {}, LX/1Uh;->A00()LX/1Uh;

    move-result-object v0

    iget v11, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->colorId:I

    invoke-virtual {v0}, LX/1Uh;->A01()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v0, "video_encoder_frame_convertor_color_id"

    invoke-interface {v1, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v11, v12, LX/0z2;->A09:I

    iget v1, v12, LX/0z2;->A08:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    :try_start_6
    iget v12, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->width:I

    iget v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->height:I

    invoke-static {v6, v12, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v14

    const-string v12, "bitrate"

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v14, v12, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v12, "color-format"

    iget v0, v4, LX/2ta;->A02:I

    invoke-virtual {v14, v12, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    invoke-virtual {v14, v0, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    invoke-virtual {v14, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "stride"

    invoke-virtual {v14, v0, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "slice-height"

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-ltz v3, :cond_18

    iget-object v13, v4, LX/2ta;->A01:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-eqz v13, :cond_18

    array-length v12, v13

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v12, :cond_18

    aget-object v1, v13, v11

    iget v0, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v0, v3, :cond_16

    iget v1, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-eq v1, v2, :cond_17

    const/high16 v0, 0x10000

    if-ne v1, v0, :cond_16

    goto :goto_14

    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_17
    :goto_14
    const-string v0, "profile"

    invoke-virtual {v14, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-ltz v2, :cond_18

    const-string v0, "level"

    invoke-virtual {v14, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaCodecVideoEncoder   Format: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget-object v0, v4, LX/2ta;->A00:Ljava/lang/String;

    invoke-static {v0}, Lorg/wawebrtc/MediaCodecVideoEncoder;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    iput-object v10, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->type:LX/2tc;

    if-nez v2, :cond_19

    const-string v0, "MediaCodecVideoEncoder Can not create media encoder"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_19
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v14, v1, v1, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    if-eqz v7, :cond_1a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_1a

    new-instance v1, LX/3DA;

    sget-object v0, LX/2tM;->A01:[I

    invoke-direct {v1, v9, v0}, LX/3DA;-><init>(LX/3D9;[I)V

    iput-object v1, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->eglBase:LX/3DA;

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->eglBase:LX/3DA;

    invoke-virtual {v0, v1}, LX/2tM;->A07(Landroid/view/Surface;)V

    new-instance v0, LX/3DB;

    invoke-direct {v0}, LX/3DB;-><init>()V

    iput-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->drawer:LX/3DB;

    :cond_1a
    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_1e

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->outputBuffers:[Ljava/nio/ByteBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaCodecVideoEncoder Input buffers: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lorg/wawebrtc/MediaCodecVideoEncoder;->inputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Output buffers: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    goto :goto_15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    const-string v0, "MediaCodecVideoEncoder initEncode failed"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    :cond_1b
    const/4 v2, -0x1

    goto/16 :goto_12

    :cond_1c
    const/4 v3, -0x1

    goto/16 :goto_11

    :cond_1d
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v23, 0xb0

    const/16 v24, 0x90

    if-eqz v0, :cond_10

    const/16 v23, 0xa0

    const/16 v24, 0x80

    goto/16 :goto_10

    :cond_1e
    :goto_15
    const/4 v0, 0x1

    return v0

    :cond_1f
    :goto_16
    const/4 v0, 0x0

    return v0

    :cond_20
    const/4 v1, 0x0

    const-string v0, "MediaCodecVideoEncoder Can not find HW encoder for "

    invoke-static {v0, v6}, LX/0CS;->A19(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_2
    move-exception v1

    const/4 v5, 0x0

    :goto_17
    const-string v0, "MediaCodecVideoEncoder Exception in findHwEncoder"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5

    :cond_21
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v0, "Forgot to release()?"

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initH264Encoder(IIIII)Z
    .locals 8

    sget-object v1, LX/2tc;->A01:LX/2tc;

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p5

    move v5, p4

    move v4, p3

    move v3, p2

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/wawebrtc/MediaCodecVideoEncoder;->initEncode(LX/2tc;IIIIILX/3D9;)Z

    move-result v0

    return v0
.end method

.method public initH265Encoder(IIIII)Z
    .locals 8

    sget-object v1, LX/2tc;->A02:LX/2tc;

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p5

    move v5, p4

    move v4, p3

    move v3, p2

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/wawebrtc/MediaCodecVideoEncoder;->initEncode(LX/2tc;IIIIILX/3D9;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 6

    const-string v0, "MediaCodecVideoEncoder Java releaseEncoder "

    invoke-static {v0}, LX/0CS;->A0S(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    invoke-static {v1, v0}, LX/0CS;->A1Q(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, LX/2tX;

    invoke-direct {v1, p0, v3}, LX/2tX;-><init>(Lorg/wawebrtc/MediaCodecVideoEncoder;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x1388

    invoke-static {v3, v0, v1}, LX/1VE;->A00(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaCodecVideoEncoder Media encoder release timeout"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;)V

    sget v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecErrors:I

    add-int/2addr v0, v2

    sput v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecErrors:I

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    iput-object v5, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    iput-object v5, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodecThread:Ljava/lang/Thread;

    iget-object v4, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->drawer:LX/3DB;

    if-eqz v4, :cond_3

    iget-object v0, v4, LX/3DB;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/2tN;

    iget-object v2, v0, LX/2tN;->A00:LX/2tO;

    const-string v0, "GlShader Deleting shader."

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    iget v1, v2, LX/2tO;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v0, v2, LX/2tO;->A00:I

    goto :goto_0

    :cond_2
    iget-object v0, v4, LX/3DB;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v5, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->drawer:LX/3DB;

    :cond_3
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->eglBase:LX/3DA;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LX/2tM;->A05()V

    iput-object v5, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->eglBase:LX/3DA;

    :cond_4
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v5, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->inputSurface:Landroid/view/Surface;

    :cond_5
    sput-object v5, Lorg/wawebrtc/MediaCodecVideoEncoder;->runningInstance:Lorg/wawebrtc/MediaCodecVideoEncoder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/wawebrtc/MediaCodecVideoEncoder;->lastReleaseTimestamp:J

    const-string v0, "MediaCodecVideoEncoder Java releaseEncoder done"

    invoke-static {v0}, Lcom/whatsapp/util/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public releaseOutputBuffer(I)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/4 v0, 0x1

    return v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v0, "MediaCodecVideoEncoder releaseOutputBuffer failed"

    invoke-static {v0, v1}, Lcom/whatsapp/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public resetEncoderOnFPSChanges()Z
    .locals 2

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    const-string v0, "OMX.Exynos.AVC.Encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportForceKeyFrame()Z
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    const-string v0, "OMX.google.h264.encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public supportUpdateBitrate()Z
    .locals 2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lorg/wawebrtc/MediaCodecVideoEncoder;->codecName:Ljava/lang/String;

    const-string v0, "OMX.google.h264.encoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method
