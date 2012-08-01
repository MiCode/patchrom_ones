.class Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;
.super Ljava/lang/Object;
.source "ListViewFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/ListViewFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewTag"
.end annotation


# instance fields
.field chkbox:Lcom/htc/widget/HtcCheckBox;

.field listItem:Lcom/htc/widget/HtcListItem;

.field position:I

.field separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/ListViewFriends;

.field titleImg:Lcom/htc/widget/HtcListItemTileImage;

.field titleText:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/ListViewFriends;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->this$0:Lcom/htc/album/SocialNetwork/ListViewFriends;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->position:I

    .line 719
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->listItem:Lcom/htc/widget/HtcListItem;

    .line 720
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleText:Lcom/htc/widget/HtcListItem2LineText;

    .line 721
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    .line 722
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 723
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewFriends$ViewTag;->separatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 724
    return-void
.end method
