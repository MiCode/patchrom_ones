.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
.super Ljava/lang/Object;
.source "WrapperComment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mComment:Lcom/htc/opensense/social/data/Comment;

.field private mFormatedComment:Ljava/lang/CharSequence;

.field private mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field private mSzSeparatorName:Ljava/lang/String;

.field private mUserComment:Ljava/lang/String;

.field private mszDateTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Comment;)V
    .locals 2
    .parameter "comment"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 31
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    .line 32
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 33
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    .line 42
    return-void
.end method


# virtual methods
.method public getComment(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mUserComment:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getTime()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/htc/text/util/HtcStringUtils;->getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mszDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatedComment(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFormatedComment(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "aPerson"

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-nez v0, :cond_0

    .line 113
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    return-object v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mFormatedComment:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getId()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public getOwnerAvatar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method

.method public getOwnerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Profile;->getProfile_id()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public getSeparatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    return-object v0
.end method

.method public getTime()J
    .locals 3

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    .line 103
    .local v0, lTime:J
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mComment:Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Comment;->getTime()J

    move-result-wide v0

    .line 108
    :cond_0
    return-wide v0
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 156
    return-void
.end method

.method public setSeparatorName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->mSzSeparatorName:Ljava/lang/String;

    .line 164
    return-void
.end method
