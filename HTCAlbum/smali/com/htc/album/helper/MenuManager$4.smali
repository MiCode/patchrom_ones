.class Lcom/htc/album/helper/MenuManager$4;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field final synthetic val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Ljava/util/ArrayList;Lcom/htc/widget/HtcShareViaMultiAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$4;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$4;->val$list:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$4;->val$shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$4;->val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1827
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1828
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 1829
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$4;->val$shareViaAdapter:Lcom/htc/widget/HtcShareViaMultiAdapter;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcShareViaMultiAdapter;->UpdateRecord(Landroid/content/pm/ActivityInfo;)Z

    .line 1831
    :cond_0
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    if-eqz v1, :cond_1

    .line 1833
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$4;->val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {v1, p1, v2, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;->onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    .line 1835
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1836
    return-void
.end method
