.class public Lcom/htc/lockscreen/telephony/PhoneState;
.super Ljava/lang/Object;
.source "PhoneState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RING:I = 0x1

.field public static final CALL_STYLE_NORMAL:I = 0x0

.field public static final CALL_STYLE_VIDEO:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/telephony/PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_SENDMSG:I = 0x2

.field public static final FLAG_SILENT:I = 0x1


# instance fields
.field public mCallIcon:Landroid/graphics/Bitmap;

.field public mCallState:I

.field public mCallStyle:I

.field public mCallType:Ljava/lang/String;

.field public mDisplayNumber:Ljava/lang/String;

.field public mDueDate:Ljava/lang/String;

.field public mEventDesp:Ljava/lang/String;

.field public mEventIcon:Landroid/graphics/Bitmap;

.field private mExtra:Landroid/os/Bundle;

.field public mFlag:I

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mLocation:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mOpName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mPhoto:Landroid/graphics/Bitmap;

.field public mSNIcon:Landroid/graphics/Bitmap;

.field public mSNStatus:Ljava/lang/String;

.field public mService:Landroid/content/ComponentName;

.field public mTaskName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lcom/htc/lockscreen/telephony/PhoneState$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/telephony/PhoneState$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/telephony/PhoneState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "callState"
    .parameter "opName"
    .parameter "callType"
    .parameter "phone"
    .parameter "name"
    .parameter "displayNumber"
    .parameter "location"
    .parameter "hint"
    .parameter "snStatus"
    .parameter "snIcon"
    .parameter "eventDesp"
    .parameter "eventIcon"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 80
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 87
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 93
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 98
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 117
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 118
    iput-object p2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 121
    iput-object p5, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 123
    iput-object p7, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 124
    iput-object p8, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 125
    iput-object p9, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 126
    iput-object p10, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 127
    iput-object p11, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 128
    iput-object p12, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 80
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 87
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 93
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 98
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 80
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 87
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 93
    iput-object v1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 98
    iput v2, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 157
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 158
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    .line 161
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    .line 162
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 165
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4

    .line 166
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    .line 168
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 171
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    .line 172
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public getBirthdayInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    return v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDueDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSocailState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthdayInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setCallState(I)V
    .locals 0
    .parameter "callState"

    .prologue
    .line 405
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    .line 406
    return-void
.end method

.method public setDisplayNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setDueDate(Ljava/lang/String;)V
    .locals 0
    .parameter "duedate"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 393
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    .line 394
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 365
    iput p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    .line 366
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setPhoneComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 381
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    .line 382
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    .line 266
    return-void
.end method

.method public setSocailState(Ljava/lang/String;)V
    .locals 0
    .parameter "social"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setSocialIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    .line 250
    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0
    .parameter "taskname"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mOpName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDisplayNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventDesp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mSNIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mEventIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    :goto_2
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mService:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    :goto_3
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 228
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    :goto_4
    iget v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mCallStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mTaskName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mDueDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/htc/lockscreen/telephony/PhoneState;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 216
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 224
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 232
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
