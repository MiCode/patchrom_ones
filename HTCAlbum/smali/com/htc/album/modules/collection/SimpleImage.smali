.class public Lcom/htc/album/modules/collection/SimpleImage;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "SimpleImage.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/SimpleImage;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static BIT_DRM:I = 0x0

.field private static BIT_ORDER:I = 0x0

.field private static BIT_VIDEO:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/SimpleImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient mContainer:Lcom/htc/album/modules/collection/Collection;

.field public mDateModified:J

.field public mDegreeRotated:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mIdentifier:Ljava/lang/String;

.field public mIsDrm:Z

.field public mIsVideo:Z

.field public mMediaType:I

.field public mMimeType:Ljava/lang/String;

.field public mRowId:J

.field protected mSortDES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    .line 44
    const/16 v0, 0x10

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    .line 45
    const/16 v0, 0x100

    sput v0, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    .line 95
    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/SimpleImage$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/SimpleImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 30
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 33
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 34
    iput v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 36
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 37
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 38
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 5
    .parameter "container"
    .parameter "DES"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 30
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 33
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 34
    iput v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 36
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 37
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 38
    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 49
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mContainer:Lcom/htc/album/modules/collection/Collection;

    .line 50
    iput-boolean p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 51
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I
    .locals 7
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 78
    iget-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 79
    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v3, :cond_0

    .line 86
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    iget-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 82
    iget-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v3, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, cmp:I
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v1, :cond_4

    neg-int v0, v0

    .end local v0           #cmp:I
    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/htc/album/modules/collection/SimpleImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/SimpleImage;->compareTo(Lcom/htc/album/modules/collection/SimpleImage;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getDateModified()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    return-wide v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 5
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/modules/collection/SimpleImage;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 196
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 197
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 198
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 199
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 200
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 201
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 202
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 203
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 204
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 205
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 206
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 209
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    move v1, v2

    .line 214
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 136
    .local v0, myValue:B
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    .line 137
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 138
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 139
    return-void

    :cond_0
    move v1, v3

    .line 136
    goto :goto_0

    :cond_1
    move v1, v3

    .line 137
    goto :goto_1

    :cond_2
    move v2, v3

    .line 138
    goto :goto_2
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/SimpleImage;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V
    .locals 4
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"
    .parameter "rowId"

    .prologue
    const/16 v3, 0xe0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    .line 60
    iput p5, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    .line 61
    iput p6, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    .line 62
    const/16 v0, 0xe

    if-eq p6, v0, :cond_0

    if-ne p6, v3, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    .line 63
    const/16 v0, 0x10

    if-eq p6, v0, :cond_1

    if-ne p6, v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    .line 64
    iput-wide p7, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    .line 65
    iput-object p1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    .line 68
    iput-wide p9, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    .line 69
    return-void

    :cond_3
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget-wide v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, myValue:B
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mSortDES:Z

    if-eqz v1, :cond_0

    .line 161
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_ORDER:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 162
    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsDrm:Z

    if-eqz v1, :cond_1

    .line 163
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_DRM:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    if-eqz v1, :cond_2

    .line 165
    sget v1, Lcom/htc/album/modules/collection/SimpleImage;->BIT_VIDEO:I

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 166
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 167
    return-void
.end method
