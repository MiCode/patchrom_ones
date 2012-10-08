.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 915
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 920
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 921
    .local v3, arguments:Landroid/os/Bundle;
    const-string v24, "filepath"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 922
    .local v11, filePath:Ljava/lang/String;
    const-string v21, "/.voicerecorder/voices"

    .line 925
    .local v21, voicerecordDonut:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v9

    .line 926
    .local v9, extsd:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getVirtualRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v19

    .line 931
    .local v19, virtual:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getUsbStorageDirectory()Ljava/lang/String;

    move-result-object v10

    .line 933
    .local v10, extusb:Ljava/lang/String;
    const/16 v17, 0x0

    .line 937
    .local v17, sdcardmount:Z
    if-eqz v11, :cond_2

    .line 938
    :try_start_0
    const-string v24, "listener"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 939
    .local v6, binder:Landroid/os/IBinder;
    if-nez v6, :cond_1

    const/4 v14, 0x0

    .line 943
    .local v14, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const/16 v18, 0x0

    .line 945
    .local v18, uri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    const-string v25, "mimetype"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0, v11, v1}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    .line 950
    :goto_1
    if-eqz v14, :cond_0

    .line 951
    :try_start_2
    move-object/from16 v0, v18

    invoke-interface {v14, v11, v0}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1199
    .end local v6           #binder:Landroid/os/IBinder;
    .end local v14           #listener:Landroid/media/IMediaScannerListener;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 1200
    return-void

    .line 939
    .restart local v6       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_3
    invoke-static {v6}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v14

    goto :goto_0

    .line 946
    .restart local v14       #listener:Landroid/media/IMediaScannerListener;
    .restart local v18       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 947
    .local v8, e:Ljava/lang/Exception;
    const-string v24, "MediaScannerService"

    const-string v25, "Exception scanning file"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1195
    .end local v6           #binder:Landroid/os/IBinder;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v14           #listener:Landroid/media/IMediaScannerListener;
    .end local v18           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v8

    .line 1196
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v24, "MediaScannerService"

    const-string v25, "Exception in handleMessage"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 954
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v24, "volume"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 955
    .local v23, volume:Ljava/lang/String;
    const/4 v7, 0x0

    .line 956
    .local v7, directories:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 961
    .local v4, bScanMediaOnly:Z
    const-string v24, "internal"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 963
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    .end local v7           #directories:[Ljava/lang/String;
    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/media"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v24

    .line 1177
    .restart local v7       #directories:[Ljava/lang/String;
    :cond_3
    :goto_3
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1179
    if-eqz v7, :cond_4

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v7, v1, v4}, Lcom/android/providers/media/MediaScannerService;->access$800(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1186
    :cond_4
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1189
    if-eqz v7, :cond_0

    const/16 v24, 0x0

    aget-object v24, v7, v24

    if-eqz v24, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x1

    #calls: Lcom/android/providers/media/MediaScannerService;->NotifySDcardStatusForMTP(J)V
    invoke-static/range {v24 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;J)V

    goto/16 :goto_2

    .line 969
    :cond_5
    const-string v24, "customize"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 970
    const-string v23, "internal"

    .line 971
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    .end local v7           #directories:[Ljava/lang/String;
    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/customize/resource"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v24

    .restart local v7       #directories:[Ljava/lang/String;
    goto :goto_3

    .line 977
    :cond_6
    const-string v24, "exdsdcard"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_9

    .line 979
    const-string v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 983
    .local v2, action:Ljava/lang/String;
    const-string v24, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 986
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 987
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "file://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 988
    .restart local v18       #uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const-string v24, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 989
    .local v12, i1:Landroid/content/Intent;
    const-string v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    const-string v25, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static/range {v24 .. v24}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 999
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1000
    new-instance v13, Landroid/content/Intent;

    const-string v24, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1001
    .local v13, i2:Landroid/content/Intent;
    const-string v24, "action"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x0

    #calls: Lcom/android/providers/media/MediaScannerService;->NotifySDcardStatusForMTP(J)V
    invoke-static/range {v24 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;J)V

    .line 1007
    const/4 v7, 0x0

    .line 1008
    goto/16 :goto_3

    .line 1009
    .end local v12           #i1:Landroid/content/Intent;
    .end local v13           #i2:Landroid/content/Intent;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_7
    const-string v24, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1036
    const/16 v17, 0x1

    .line 1037
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1038
    const v24, 0xab4130

    sput v24, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1047
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    const-string v25, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    sget v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    #calls: Lcom/android/providers/media/MediaScannerService;->UpdateVolId(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;I)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static/range {v24 .. v24}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    sget v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v26, 0x1

    #calls: Lcom/android/providers/media/MediaScannerService;->AliveExtSdCardRows(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;II)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->deleteNonUseAlbumArts()V
    invoke-static/range {v24 .. v24}, Lcom/android/providers/media/MediaScannerService;->access$700(Lcom/android/providers/media/MediaScannerService;)V

    .line 1057
    const-string v23, "external"

    .line 1060
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    .end local v7           #directories:[Ljava/lang/String;
    const/16 v24, 0x0

    aput-object v19, v7, v24

    .restart local v7       #directories:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1040
    :cond_8
    invoke-static {v9}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v24

    sput v24, Lcom/android/providers/media/MediaProvider;->mVolId:I

    goto :goto_4

    .line 1073
    .end local v2           #action:Ljava/lang/String;
    :cond_9
    const-string v24, "exdusb"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_a

    .line 1075
    const-string v23, "external"

    .line 1077
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    .end local v7           #directories:[Ljava/lang/String;
    const/16 v24, 0x0

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getUsbStorageDirectory()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v24

    .line 1078
    .restart local v7       #directories:[Ljava/lang/String;
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 1082
    :cond_a
    const-string v24, "external"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1086
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v24

    const-string v25, "mounted"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1091
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/.voicerecorder/voices"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1092
    .local v22, voicerecordDonutPath:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1093
    .local v20, voicerecord:Ljava/io/File;
    const/4 v5, 0x0

    .line 1095
    .local v5, bVoicerecordDonutPathExist:Z
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v24

    if-eqz v24, :cond_b

    .line 1096
    const/4 v5, 0x1

    .line 1101
    :cond_b
    :goto_5
    if-eqz v5, :cond_c

    .line 1102
    const/16 v24, 0x2

    :try_start_6
    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    .end local v7           #directories:[Ljava/lang/String;
    const/16 v24, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v24

    const/16 v24, 0x1

    aput-object v22, v7, v24

    .line 1115
    .restart local v7       #directories:[Ljava/lang/String;
    :goto_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 1116
    .local v16, sd:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v15

    .line 1122
    .local v15, removeStorageState:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1123
    const v24, 0xab4130

    sput v24, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1139
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    const-string v25, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static/range {v24 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static/range {v24 .. v24}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 1143
    sget v24, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    sget v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    #calls: Lcom/android/providers/media/MediaScannerService;->UpdateVolId(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;I)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v24, v0

    sget v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v26, 0x1

    #calls: Lcom/android/providers/media/MediaScannerService;->AliveExtSdCardRows(II)V
    invoke-static/range {v24 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;II)V

    goto/16 :goto_3

    .line 1097
    .end local v15           #removeStorageState:Ljava/lang/String;
    .end local v16           #sd:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 1098
    .local v8, e:Ljava/lang/SecurityException;
    const-string v24, "MediaScannerService"

    const-string v25, "chk bVoicerecordDonutPathExist SecurityException: "

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1108
    .end local v8           #e:Ljava/lang/SecurityException;
    :cond_c
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v7, v0, [Ljava/lang/String;

    .end local v7           #directories:[Ljava/lang/String;
    const/16 v24, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v7, v24

    .restart local v7       #directories:[Ljava/lang/String;
    goto :goto_6

    .line 1124
    .restart local v15       #removeStorageState:Ljava/lang/String;
    .restart local v16       #sd:Ljava/lang/String;
    :cond_d
    const-string v24, "mounted"

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_e

    .line 1125
    invoke-static {v9}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v24

    sput v24, Lcom/android/providers/media/MediaProvider;->mVolId:I

    goto :goto_7

    .line 1127
    :cond_e
    const-string v24, "MediaScannerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "MediaProvider.mVolId = -1, removeStorageState:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ,extsd.length():"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/16 v24, -0x1

    sput v24, Lcom/android/providers/media/MediaProvider;->mVolId:I

    goto/16 :goto_7

    .line 1161
    .end local v5           #bVoicerecordDonutPathExist:Z
    .end local v15           #removeStorageState:Ljava/lang/String;
    .end local v16           #sd:Ljava/lang/String;
    .end local v20           #voicerecord:Ljava/io/File;
    .end local v22           #voicerecordDonutPath:Ljava/lang/String;
    :cond_f
    const-string v24, "MediaScannerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cancel scan because volume"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not mounted."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3
.end method
