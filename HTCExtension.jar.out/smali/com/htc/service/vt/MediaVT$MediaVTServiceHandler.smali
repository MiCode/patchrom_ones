.class Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;
.super Landroid/os/Handler;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/vt/MediaVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaVTServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/service/vt/MediaVT;


# direct methods
.method public constructor <init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    .line 1160
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1165
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1216
    const-string v2, "MediaVT_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1167
    :pswitch_0
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    iget-object v3, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/service/vt/MediaVT;->access$900(Lcom/htc/service/vt/MediaVT;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/service/vt/MediaVT;->bindMediaVTSerive(Landroid/content/Context;)V

    goto :goto_0

    .line 1170
    :pswitch_1
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->initMediaVTSerive()V

    goto :goto_0

    .line 1173
    :pswitch_2
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTSeriveSurface()V

    .line 1174
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z
    invoke-static {v2}, Lcom/htc/service/vt/MediaVT;->access$600(Lcom/htc/service/vt/MediaVT;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1175
    const-string v2, "MediaVT_Java"

    const-string v3, "inform AP MediaVTService ready."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;
    invoke-static {v2}, Lcom/htc/service/vt/MediaVT;->access$400(Lcom/htc/service/vt/MediaVT;)Lcom/htc/service/vt/MediaVT$EventHandler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendEmptyMessage(I)Z

    .line 1177
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    const/4 v3, 0x1

    #setter for: Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z
    invoke-static {v2, v3}, Lcom/htc/service/vt/MediaVT;->access$602(Lcom/htc/service/vt/MediaVT;Z)Z

    goto :goto_0

    .line 1181
    :pswitch_3
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->showMediaVTServiceView()V

    goto :goto_0

    .line 1184
    :pswitch_4
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->hideMediaVTServiceView()V

    goto :goto_0

    .line 1187
    :pswitch_5
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->hideMediaVTNearendServiceView()V

    goto :goto_0

    .line 1190
    :pswitch_6
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->hideMediaVTFarendServiceView()V

    goto :goto_0

    .line 1193
    :pswitch_7
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->switchMediaVTServiceView()V

    goto :goto_0

    .line 1196
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    .line 1197
    .local v1, rectNearend:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/service/vt/MediaVT;->setMediaVTServiceNearendVideoPos(IIII)V

    goto :goto_0

    .line 1200
    .end local v1           #rectNearend:Landroid/graphics/Rect;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 1201
    .local v0, rectFarend:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/service/vt/MediaVT;->setMediaVTServiceFarendVideoPos(IIII)V

    goto :goto_0

    .line 1204
    .end local v0           #rectFarend:Landroid/graphics/Rect;
    :pswitch_a
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->destroyMediaVTService()V

    goto :goto_0

    .line 1207
    :pswitch_b
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    invoke-virtual {v2}, Lcom/htc/service/vt/MediaVT;->unBindMediaVTService()V

    goto/16 :goto_0

    .line 1210
    :pswitch_c
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v2}, Lcom/htc/service/vt/MediaVT;->access$1000(Lcom/htc/service/vt/MediaVT;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 1211
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    #getter for: Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;
    invoke-static {v2}, Lcom/htc/service/vt/MediaVT;->access$400(Lcom/htc/service/vt/MediaVT;)Lcom/htc/service/vt/MediaVT$EventHandler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendEmptyMessage(I)Z

    .line 1212
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    const/4 v3, 0x0

    #setter for: Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z
    invoke-static {v2, v3}, Lcom/htc/service/vt/MediaVT;->access$602(Lcom/htc/service/vt/MediaVT;Z)Z

    .line 1213
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->this$0:Lcom/htc/service/vt/MediaVT;

    const/4 v3, 0x0

    #setter for: Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;
    invoke-static {v2, v3}, Lcom/htc/service/vt/MediaVT;->access$002(Lcom/htc/service/vt/MediaVT;Lcom/htc/service/vt/IMediaVTService;)Lcom/htc/service/vt/IMediaVTService;

    goto/16 :goto_0

    .line 1165
    nop

    :pswitch_data_0
    .packed-switch 0x12c
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
        :pswitch_c
    .end packed-switch
.end method
