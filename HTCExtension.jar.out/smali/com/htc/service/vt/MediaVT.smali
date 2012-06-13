.class public Lcom/htc/service/vt/MediaVT;
.super Ljava/lang/Object;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;,
        Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;,
        Lcom/htc/service/vt/MediaVT$EventHandler;,
        Lcom/htc/service/vt/MediaVT$OnEventListener;
    }
.end annotation


# static fields
.field public static final CAMERA_PARA_SET_BRIGHTNESS:I = 0x32

.field public static final CAMERA_PARA_SET_CONTRAST:I = 0x96

.field public static final CAMERA_PARA_SET_MIRROR:I = 0x64

.field private static final MEDIAVT_STATE_CONNECTED:I = 0x3

.field private static final MEDIAVT_STATE_DISCONNECTED:I = 0x4

.field private static final MEDIAVT_STATE_INITED:I = 0x2

.field private static final MEDIAVT_STATE_INITING:I = 0x1

.field private static final MEDIAVT_STATE_TERMINTED:I = 0x5

.field private static final MEDIAVT_STATE_UNINIT:I = 0x0

.field public static final SURFACE_CAMERA:I = 0x0

.field public static final SURFACE_VIDEO:I = 0x1

.field public static final SWITCH_263_VIDEO_DEFAULT:I = 0x16

.field public static final SWITCH_HW_AUDIO_DECODE:I = 0x2

.field public static final SWITCH_HW_VIDEO_DECODE:I = 0x0

.field public static final SWITCH_MP4_VIDEO_DEFAULT:I = 0x8

.field public static final SWITCH_SW_AUDIO_DECODE:I = 0x4

.field public static final SWITCH_SW_VIDEO_DECODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaVT_Java"

.field public static final VIDEO_IN_FIRST_CAMERA:I = 0x0

.field public static final VIDEO_IN_SECOND_CAMERA:I = 0x1

.field public static final VIDEO_IN_STILL_IMAGE:I = 0x2

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE:I = 0x8

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED:I = 0x9

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE:I = 0xc

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED:I = 0xd

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE:I = 0xa

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED:I = 0xb

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE:I = 0xe

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED:I = 0xf

.field public static final VT_CONNECT_COMPLETE:I = 0x3

.field public static final VT_CONNECT_DIRECTION_IMCOMING:I = 0x2

.field public static final VT_CONNECT_DIRECTION_OUTGOING:I = 0x1

.field public static final VT_CONNECT_FAILED:I = 0x4

.field public static final VT_DISCONNECT_COMPLETE:I = 0x5

.field public static final VT_DISCONNECT_FAILED:I = 0x6

.field public static final VT_ERROR_SERVER_DIED:I = 0x64

.field public static final VT_INIT_COMPLETE:I = 0x1

.field public static final VT_INIT_FAILED:I = 0x2

.field public static final VT_MEDIAVTSERVICE_DESTROY:I = 0x136

.field public static final VT_MEDIAVTSERVICE_GET_SURFACE:I = 0x12e

.field public static final VT_MEDIAVTSERVICE_HIDE:I = 0x130

.field public static final VT_MEDIAVTSERVICE_HIDE_FAREND:I = 0x132

.field public static final VT_MEDIAVTSERVICE_HIDE_NEAREND:I = 0x131

.field public static final VT_MEDIAVTSERVICE_PREPARE_SURFACE:I = 0x12d

.field public static final VT_MEDIAVTSERVICE_QUIT:I = 0x138

.field public static final VT_MEDIAVTSERVICE_SET_FAREND_POS:I = 0x135

.field public static final VT_MEDIAVTSERVICE_SET_NEAREND_POS:I = 0x134

.field public static final VT_MEDIAVTSERVICE_SHOW:I = 0x12f

.field public static final VT_MEDIAVTSERVICE_START:I = 0x12c

.field public static final VT_MEDIAVTSERVICE_SURFACE_READY:I = 0xc8

.field public static final VT_MEDIAVTSERVICE_SWITCH_VIEW:I = 0x133

.field public static final VT_MEDIAVTSERVICE_UNBIND:I = 0x137

.field public static final VT_MULTIMEDIA_RINGTONE_BEGIN:I = 0x11

.field public static final VT_MULTIMEDIA_RINGTONE_END:I = 0x12

.field public static final VT_REMOTE_CALL_END:I = 0x7

.field public static final VT_SERVICE_BINDED:I = 0x13

.field public static final VT_SERVICE_UNBINDED:I = 0x14

.field public static final VT_UNSOLICITED_TERMINATED:I = 0x10


# instance fields
.field private mCameraSurface:Landroid/view/Surface;

.field private mContext:Landroid/content/Context;

.field private mEnableAudio:Z

.field private mEnableVideo:Z

.field private mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

.field private mEventListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/service/vt/MediaVT$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

.field private mIsDeInitializeCalled:Z

.field private mIsDisconnectCalled:Z

.field private mLoopback:Z

.field private mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

.field private mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

.field private mMediaVTServiceReady:Z

.field private mMediaVTState:I

.field private mNativeContext:I

.field private mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

.field private mSrcImage:Landroid/graphics/Bitmap;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field public mVTSerivceExist:Z

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideosource:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "MediaVT_Java"

    const-string v1, "Try System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "vt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    const-string v0, "MediaVT_Java"

    const-string v1, "System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 101
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 141
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 142
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 143
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 144
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 150
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 304
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 158
    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 101
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 141
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 142
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 143
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 144
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 150
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 304
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 166
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 168
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 2
    .parameter "context"
    .parameter "eventListener"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 101
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 141
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 142
    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 143
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 144
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 147
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 150
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 304
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 172
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 174
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 175
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method static synthetic access$002(Lcom/htc/service/vt/MediaVT;Lcom/htc/service/vt/IMediaVTService;)Lcom/htc/service/vt/IMediaVTService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/service/vt/MediaVT;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/service/vt/MediaVT;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/service/vt/MediaVT;)Lcom/htc/service/vt/MediaVT$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/service/vt/MediaVT;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/service/vt/MediaVT;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/service/vt/MediaVT;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private native native_connect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_connect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_enableoutput(ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_finalize()V
.end method

.method private native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_sendkey(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setoption(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setsurface(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setvideosource(ILandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediavt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1116
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/vt/MediaVT;

    .line 1117
    .local v1, mv:Lcom/htc/service/vt/MediaVT;
    if-nez v1, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    if-eqz v2, :cond_0

    .line 1122
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1123
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    if-nez v1, :cond_2

    .line 1151
    new-instance v1, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    .line 1153
    :cond_2
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1154
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, v0}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setMediaVTState(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-gt p1, v0, :cond_0

    .line 79
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set Java MediaVT state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 83
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaVTState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupMediaVT(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 180
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 181
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 185
    iput-boolean v3, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 186
    iput v3, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 189
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 190
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 192
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    .line 196
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 197
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    .line 207
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->native_setup(Ljava/lang/Object;)V

    .line 209
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 214
    new-instance v1, Lcom/htc/service/vt/MediaVT$1;

    const-string v2, "MediaVTServiceHandlerThread"

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$1;-><init>(Lcom/htc/service/vt/MediaVT;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    .line 221
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 223
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/16 v1, 0x12c

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 226
    :cond_0
    return-void

    .line 198
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 199
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0

    .line 201
    :cond_2
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0
.end method


# virtual methods
.method public bindMediaVTSerive(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 325
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.mediavtservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const-string v1, "com.htc.mediavtservice"

    const-string v2, "com.htc.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Sample AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 342
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    const-string v1, "MediaVT_Java"

    const-string v2, "bindService() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.testtool"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const-string v1, "com.htc.testtool"

    const-string v2, "com.htc.testtool.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Test AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :cond_2
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for Phone AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(I)V
    .locals 3
    .parameter "callDirection"

    .prologue
    .line 566
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KPI] connect in, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 570
    :cond_0
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 571
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_1
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_connect(I)V

    .line 577
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect out, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Z)V
    .locals 3
    .parameter "loopback"

    .prologue
    .line 552
    const-string v0, "MediaVT_Java"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 555
    :cond_0
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 557
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 558
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_connect(Z)V

    goto :goto_0
.end method

.method public destroyMediaVTService()V
    .locals 3

    .prologue
    .line 480
    const-string v1, "MediaVT_Java"

    const-string v2, "destroyMediaVTService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->destroy()Z

    .line 490
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.destroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 588
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    if-nez v0, :cond_0

    .line 591
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP is calling MediaVT.disconenct()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 598
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_1

    .line 618
    :goto_0
    return-void

    .line 594
    :cond_0
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP already called MediaVT.disconenct() before, dont call again..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    if-ne v0, v2, :cond_2

    .line 605
    const-string v0, "MediaVT_Java"

    const-string v1, "Aricent VT stack is already deinitialized, dont call native_disconnect(), return and send VT_DISCONNECT_COMPLETE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v0, "MediaVT_Java"

    const-string v1, "inform AP VT_DISCONNECT_COMPLETE directly."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendEmptyMessage(I)Z

    .line 608
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_2
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_disconnect()V

    .line 615
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableVTOutput(ZZ)I
    .locals 3
    .parameter "video"
    .parameter "audio"

    .prologue
    .line 726
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVTOutput, video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 729
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call enableVTOutput when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    .line 734
    :cond_0
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    if-eq v0, p2, :cond_2

    .line 735
    :cond_1
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 736
    iput-boolean p2, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 738
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_enableoutput(ZZ)I

    move-result v0

    goto :goto_0

    .line 740
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_finalize()V

    return-void
.end method

.method public getMediaVTNotificationString(I)Ljava/lang/String;
    .locals 2
    .parameter "what"

    .prologue
    .line 920
    sparse-switch p1, :sswitch_data_0

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown notification from VT stack("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 922
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 924
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 926
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 928
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 930
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 932
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 934
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_REMOTE_CALL_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 936
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_ERROR_SERVER_DIED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 938
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 940
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 942
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 944
    :sswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 946
    :sswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 948
    :sswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 950
    :sswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 952
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 954
    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_UNSOLICITED_TERMINATED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 956
    :sswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_BEGIN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 958
    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 960
    :sswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_BINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 962
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_UNBINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 920
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
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
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public getMediaVTSeriveSurface()V
    .locals 3

    .prologue
    .line 365
    const-string v1, "MediaVT_Java"

    const-string v2, "getMediaVTSeriveSurface()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getNearendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 369
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    const-string v1, "MediaVT_Java"

    const-string v2, "CameraSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getFarendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 371
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    const-string v1, "MediaVT_Java"

    const-string v2, "VideoSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not get surface from IMediaVTService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMediaVTStateString(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 59
    packed-switch p1, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state of MediaVT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_UNINIT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_CONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_DISCONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_TERMINTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 785
    const-string v0, "MediaVT_Java"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v0, 0x130

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 788
    return-void
.end method

.method public hideFarend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    const-string v0, "MediaVT_Java"

    const-string v1, "hideFarend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_FAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/16 v0, 0x132

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 800
    return-void
.end method

.method public hideMediaVTFarendServiceView()V
    .locals 3

    .prologue
    .line 424
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTFarendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideFarend()Z

    .line 434
    :goto_0
    return-void

    .line 429
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideFarend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTNearendServiceView()V
    .locals 3

    .prologue
    .line 410
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTNearendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideNearend()Z

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideNearend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTServiceView()V
    .locals 3

    .prologue
    .line 396
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hide()Z

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideNearend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 791
    const-string v0, "MediaVT_Java"

    const-string v1, "hideNearend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_NEAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v0, 0x131

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 794
    return-void
.end method

.method public init(Landroid/view/Surface;Landroid/view/Surface;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 3
    .parameter "camSurface"
    .parameter "vidSurface"
    .parameter "eventListener"

    .prologue
    const/4 v2, 0x1

    .line 240
    const-string v0, "MediaVT_Java"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 244
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 245
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 248
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eq v0, v2, :cond_0

    .line 249
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call init(Surface, Surface, OnEventListener) when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    goto :goto_0
.end method

.method public init(Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 4
    .parameter "eventListener"

    .prologue
    const/4 v3, 0x1

    .line 268
    const-string v1, "MediaVT_Java"

    const-string v2, "init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v1, "MediaVT_Java"

    const-string v2, "Wait for mediavt service binding."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    iget-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    if-nez v1, :cond_0

    .line 273
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Service binding successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 283
    :cond_1
    iget v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v1, :cond_2

    .line 284
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call init(OnEventListener) when MediaVT State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v3}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_1
    return-void

    .line 288
    :cond_2
    invoke-direct {p0, v3}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 294
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1, v2}, Lcom/htc/service/vt/MediaVT;->setSurface(ILandroid/view/Surface;)V

    .line 295
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p0, v3, v1}, Lcom/htc/service/vt/MediaVT;->setSurface(ILandroid/view/Surface;)V

    .line 298
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    .line 300
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v1, "MediaVT_Java"

    const-string v2, "init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initMediaVTSerive()V
    .locals 3

    .prologue
    .line 351
    const-string v1, "MediaVT_Java"

    const-string v2, "initMediaVTSerive ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-interface {v1, v2}, Lcom/htc/service/vt/IMediaVTService;->init(Lcom/htc/service/vt/OnMediaVTServiceEventListener;)Z

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "IMediaVTService == null, can not call IMediaVTService.init()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public native native_deInitialize()V
.end method

.method public sendKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 665
    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 666
    const-string v2, "MediaVT_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call sendKey when MediaVT State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v4}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    const/4 v2, 0x7

    if-lt p1, v2, :cond_2

    const/16 v2, 0x10

    if-le p1, v2, :cond_3

    :cond_2
    const/16 v2, 0x12

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    .line 673
    :cond_3
    const/4 v0, 0x0

    .line 674
    .local v0, dtmfCode:I
    packed-switch p1, :pswitch_data_0

    .line 712
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_sendkey(I)I

    move-result v1

    goto :goto_0

    .line 676
    :pswitch_0
    const/4 v0, 0x0

    .line 677
    goto :goto_1

    .line 679
    :pswitch_1
    const/4 v0, 0x1

    .line 680
    goto :goto_1

    .line 682
    :pswitch_2
    const/4 v0, 0x2

    .line 683
    goto :goto_1

    .line 685
    :pswitch_3
    const/4 v0, 0x3

    .line 686
    goto :goto_1

    .line 688
    :pswitch_4
    const/4 v0, 0x4

    .line 689
    goto :goto_1

    .line 691
    :pswitch_5
    const/4 v0, 0x5

    .line 692
    goto :goto_1

    .line 694
    :pswitch_6
    const/4 v0, 0x6

    .line 695
    goto :goto_1

    .line 697
    :pswitch_7
    const/4 v0, 0x7

    .line 698
    goto :goto_1

    .line 700
    :pswitch_8
    const/16 v0, 0x8

    .line 701
    goto :goto_1

    .line 703
    :pswitch_9
    const/16 v0, 0x9

    .line 704
    goto :goto_1

    .line 706
    :pswitch_a
    const/16 v0, 0xa

    .line 707
    goto :goto_1

    .line 709
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_1

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setFarendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 817
    const-string v1, "MediaVT_Java"

    const-string v2, "setFarendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_FAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 821
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x135

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 822
    return-void
.end method

.method public setMediaVTServiceFarendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 466
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setFarendVideoPos(IIII)Z

    .line 476
    :goto_0
    return-void

    .line 471
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaVTServiceNearendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 452
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setNearendVideoPos(IIII)Z

    .line 462
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNearendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 809
    const-string v1, "MediaVT_Java"

    const-string v2, "setNearendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_NEAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 813
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x134

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 814
    return-void
.end method

.method public setOption(I)I
    .locals 2
    .parameter "option"

    .prologue
    .line 750
    const-string v0, "MediaVT_Java"

    const-string v1, "setOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setOption(ILjava/lang/String;)I
    .locals 3
    .parameter "option"
    .parameter "value"

    .prologue
    .line 768
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 771
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setOption when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v0, 0x0

    .line 775
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setSurface(ILandroid/view/Surface;)V
    .locals 2
    .parameter "whichSurface"
    .parameter "newSurface"

    .prologue
    .line 513
    const-string v0, "MediaVT_Java"

    const-string v1, "setSurfaces ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-nez p1, :cond_1

    .line 515
    if-nez p2, :cond_0

    .line 516
    const-string v0, "MediaVT_Java"

    const-string v1, "AP want to set null camera surface, but surface cannot be null, so return."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_0
    return-void

    .line 519
    :cond_0
    const-string v0, "MediaVT_Java"

    const-string v1, "AP want to set camera surface."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 522
    const-string v0, "MediaVT_Java"

    const-string v1, "native_setsurface SURFACE_CAMERA in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 524
    const-string v0, "MediaVT_Java"

    const-string v1, "native_setsurface SURFACE_CAMERA out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 527
    if-nez p2, :cond_2

    .line 528
    const-string v0, "MediaVT_Java"

    const-string v1, "AP want to set null video surface, but surface cannot be null, so return."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_2
    const-string v0, "MediaVT_Java"

    const-string v1, "AP want to set video surface."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 534
    const-string v0, "MediaVT_Java"

    const-string v1, "native_setsurface SURFACE_VIDEO in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 536
    const-string v0, "MediaVT_Java"

    const-string v1, "native_setsurface SURFACE_VIDEO out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :cond_3
    const-string v0, "MediaVT_Java"

    const-string v1, "AP want to set unknown surface."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVideoInputSource(ILandroid/graphics/Bitmap;)I
    .locals 3
    .parameter "is"
    .parameter "img"

    .prologue
    const/4 v2, 0x0

    .line 635
    const-string v0, "MediaVT_Java"

    const-string v1, "setVideoInputSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setVideoInputSource when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v0, 0x0

    .line 653
    :goto_0
    return v0

    .line 641
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 642
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 644
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 646
    if-nez p2, :cond_1

    .line 647
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1
    const/16 v0, 0xb0

    const/16 v1, 0x90

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 650
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0

    .line 653
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 779
    const-string v0, "MediaVT_Java"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SHOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/16 v0, 0x12f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 782
    return-void
.end method

.method public showMediaVTServiceView()V
    .locals 3

    .prologue
    .line 382
    const-string v1, "MediaVT_Java"

    const-string v2, "showMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->show()Z

    .line 392
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.show()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchMediaVTServiceView()V
    .locals 3

    .prologue
    .line 438
    const-string v1, "MediaVT_Java"

    const-string v2, "switchMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->switchView()Z

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.switchView()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 803
    const-string v0, "MediaVT_Java"

    const-string v1, "switchView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SWITCH_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/16 v0, 0x133

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 806
    return-void
.end method

.method public unBindMediaVTService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 494
    const-string v1, "MediaVT_Java"

    const-string v2, "unBindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_QUIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/16 v1, 0x138

    const/4 v2, 0x0

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 503
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaVT_Java"

    const-string v2, "Catch java.lang.IllegalArgumentException: Service not registered, ITS HuangShan 1323"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public vt_deInitialize()V
    .locals 2

    .prologue
    .line 621
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Lcom/htc/service/vt/MediaVT;->native_deInitialize()V

    .line 623
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method
