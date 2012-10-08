.class Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$2;
.super Ljava/lang/Object;
.source "MfFragmentMainFriendBase.java"

# interfaces
.implements Lcom/htc/album/helper/HtcDialogManager$IDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->showDialogNoConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onConfirm()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoWirelessConnection(Landroid/app/Activity;)V

    .line 303
    return-void
.end method

.method public onDismiss()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method
