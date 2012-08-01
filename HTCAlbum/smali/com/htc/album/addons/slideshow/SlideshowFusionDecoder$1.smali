.class Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;
.super Landroid/os/Handler;
.source "SlideshowFusionDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 98
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 171
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 179
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .line 102
    .local v0, DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE] + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-nez v0, :cond_0

    .line 105
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE]DI is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v0           #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][handleMessage]exception"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #DI:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->queue:Ljava/util/concurrent/PriorityBlockingQueue;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/PriorityBlockingQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->isLastItemInQueue:Z

    .line 111
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE]queue emptied"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    iget v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v4, :pswitch_data_1

    .line 134
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    invoke-virtual {v4, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodeImage(Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    .line 135
    iget v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    packed-switch v4, :pswitch_data_2

    .line 168
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE] - "

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE]Check buffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$200(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 120
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$200(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;

    .line 121
    .local v3, item:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$300(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 123
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$300(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    move-result-object v4

    iget v5, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v4, v5, v3}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    goto :goto_1

    .line 128
    .end local v3           #item:Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;
    :cond_4
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE]callback is null"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :pswitch_2
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$300(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 140
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->mCallback:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$300(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;

    move-result-object v4

    iget v5, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->index:I

    invoke-interface {v4, v5, v0}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$DecodeCompleteNotify;->onDecodeComplete(ILcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;)V

    goto :goto_2

    .line 144
    :cond_5
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE]callback is null2"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :pswitch_3
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE]decoded to buffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->decodeType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$200(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 152
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->decodedItemBuffer:Ljava/util/concurrent/LinkedBlockingDeque;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$200(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 153
    .local v1, addResult:Z
    if-nez v1, :cond_3

    .line 155
    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder$1;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;->access$100(Lcom/htc/album/addons/slideshow/SlideshowFusionDecoder;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][SlideshowFusionDecoder][handleMessage][DECODE_IMAGE]buffer is full"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 158
    iget-object v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 159
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/htc/album/addons/slideshow/SlideshowFusionDecodeItem;->bmp:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0xc350
        :pswitch_0
    .end packed-switch

    .line 113
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 135
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
