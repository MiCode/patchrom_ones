.class Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;
.super Landroid/os/Handler;
.source "ActivityAlbumFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "m"

    .prologue
    .line 122
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->isFinishing()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v11

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 130
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v11

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->mLoadingThread:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->access$100(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$AlbumCollectionLoadingThread;->doLoading()V

    goto :goto_0

    .line 135
    :pswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 136
    .local v7, position:I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 137
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 139
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v3

    .line 140
    .local v3, first:I
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcListView;->getLastVisiblePosition()I

    move-result v5

    .line 142
    .local v5, last:I
    const-string v11, "ActivityAlbumFolderSelector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MSG_SET_BITMAP: first="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " last="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " position="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-gt v3, v7, :cond_0

    if-gt v7, v5, :cond_0

    .line 145
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v11

    sub-int v12, v7, v3

    invoke-virtual {v11, v12}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 146
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 147
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 148
    .local v9, vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    const-string v11, "ActivityAlbumFolderSelector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MSG_SET_BITMAP: vTag.position="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz v9, :cond_0

    iget v11, v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->position:I

    if-ne v11, v7, :cond_0

    .line 152
    iget-object v11, v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->titleImg:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 158
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #first:I
    .end local v5           #last:I
    .end local v7           #position:I
    .end local v8           #v:Landroid/view/View;
    .end local v9           #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    :pswitch_2
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 159
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 161
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 162
    .restart local v8       #v:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 163
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 164
    .restart local v9       #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    if-eqz v9, :cond_0

    .line 166
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 167
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_0

    .line 169
    iget-object v10, v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 170
    .local v10, viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v10, :cond_2

    .line 172
    const/4 v11, 0x1

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v12

    if-ne v11, v12, :cond_3

    .line 173
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 159
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto :goto_2

    .line 184
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v8           #v:Landroid/view/View;
    .end local v9           #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    .end local v10           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :pswitch_3
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/htc/widget/HtcListView;->getFirstVisiblePosition()I

    move-result v6

    .line 185
    .local v6, nIndexFirst:I
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mHtcListView:Lcom/htc/widget/HtcListView;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$200(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/widget/HtcListView;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 186
    .restart local v8       #v:Landroid/view/View;
    if-eqz v8, :cond_0

    .line 187
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;

    .line 188
    .restart local v9       #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    if-eqz v9, :cond_0

    .line 189
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->mFolderSelectorAdapter:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$000(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 190
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-eqz v0, :cond_0

    .line 191
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    #getter for: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->SELECT_ALL_ITEM:Ljava/lang/String;
    invoke-static {v11}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$300(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 192
    iget-object v10, v9, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;->chkbox:Lcom/htc/widget/HtcCheckBox;

    .line 193
    .restart local v10       #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v10, :cond_0

    .line 195
    const/4 v11, 0x1

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->isVisible()Z

    move-result v12

    if-ne v11, v12, :cond_4

    .line 196
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 199
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 207
    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v6           #nIndexFirst:I
    .end local v8           #v:Landroid/view/View;
    .end local v9           #vTag:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$FolderSelectorAdapter$ViewTag;
    .end local v10           #viewChkbox:Lcom/htc/widget/HtcCheckBox;
    :pswitch_4
    iget-object v11, p0, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector$1;->this$0:Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;

    const/16 v12, 0x8

    #calls: Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->onUpdateProgressVisibility(I)V
    invoke-static {v11, v12}, Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;->access$400(Lcom/htc/album/TabPluginDevice/ActivityAlbumFolderSelector;I)V

    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
