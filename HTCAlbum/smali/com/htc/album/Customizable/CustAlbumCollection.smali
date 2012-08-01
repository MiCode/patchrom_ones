.class public Lcom/htc/album/Customizable/CustAlbumCollection;
.super Ljava/lang/Object;
.source "CustAlbumCollection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomerFolderResourceId(Ljava/lang/String;)I
    .locals 1
    .parameter "szBucketId"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public static getCustomerSourceType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "szBucketId"
    .parameter "szFilePath"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, nSourceType:I
    return v0
.end method

.method public static isCustomerSmartFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "szBucketId"

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static setTextColor_PhotoCount(Landroid/widget/TextView;)V
    .locals 0
    .parameter "txtView"

    .prologue
    .line 28
    return-void
.end method
