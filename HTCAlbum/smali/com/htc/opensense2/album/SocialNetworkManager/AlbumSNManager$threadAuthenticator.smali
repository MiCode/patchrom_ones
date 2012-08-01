.class final Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;
.super Lcom/htc/sunny2/common/SimpleThreadTask;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "threadAuthenticator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleThreadTask",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountMgr:Landroid/accounts/AccountManager;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .locals 2
    .parameter
    .parameter "accountManager"
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 1152
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 1153
    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleThreadTask;-><init>()V

    .line 1149
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 1150
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 1154
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 1155
    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->mAccount:Landroid/accounts/Account;

    .line 1156
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][threadAuthenticator]: ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    return-void
.end method


# virtual methods
.method protected doInBackground(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 1173
    const-string v0, "AlbumSNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][threadAuthenticator]: getAuthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->mAccount:Landroid/accounts/Account;

    const/4 v3, 0x1

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v6

    .line 1179
    .local v6, accountmng:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v7, 0x0

    .line 1182
    .local v7, authenticateData:Landroid/os/Bundle;
    :try_start_0
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][threadAuthenticator]: doInBackground: getResult"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    invoke-interface {v6}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #authenticateData:Landroid/os/Bundle;
    check-cast v7, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    .restart local v7       #authenticateData:Landroid/os/Bundle;
    :goto_0
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][threadAuthenticator]: doInBackground end..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    return-object v7

    .line 1185
    .end local v7           #authenticateData:Landroid/os/Bundle;
    :catch_0
    move-exception v8

    .line 1187
    .local v8, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 1188
    .restart local v7       #authenticateData:Landroid/os/Bundle;
    const-string v0, "AlbumSNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][threadAuthenticator]: doInBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1147
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->doInBackground(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/os/Bundle;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1199
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1147
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->onCancelled(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1205
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][threadAuthenticator]: onPostExecute ..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    if-nez p1, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x276b

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1210
    :goto_0
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x4ea7

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1147
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1147
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$threadAuthenticator;->onPreExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 1166
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][threadAuthenticator]: onPreExecute"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method public setProperty(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .locals 0
    .parameter "accountManager"
    .parameter "account"

    .prologue
    .line 1161
    return-void
.end method
