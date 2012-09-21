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
    .line 907
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 912
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 913
    .local v3, arguments:Landroid/os/Bundle;
    const-string v25, "filepath"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 914
    .local v10, filePath:Ljava/lang/String;
    const-string v20, "/.voicerecorder/voices"

    .line 917
    .local v20, voicerecordDonut:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v8

    .line 918
    .local v8, extsd:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getVirtualRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v18

    .line 923
    .local v18, virtual:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getUsbStorageDirectory()Ljava/lang/String;

    move-result-object v9

    .line 925
    .local v9, extusb:Ljava/lang/String;
    const/16 v16, 0x0

    .line 929
    .local v16, sdcardmount:Z
    if-eqz v10, :cond_2

    .line 930
    :try_start_0
    const-string v25, "listener"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 931
    .local v5, binder:Landroid/os/IBinder;
    if-nez v5, :cond_1

    const/4 v13, 0x0

    .line 935
    .local v13, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const/16 v17, 0x0

    .line 937
    .local v17, uri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    const-string v26, "mimetype"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v0, v10, v1}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 942
    :goto_1
    if-eqz v13, :cond_0

    .line 943
    :try_start_2
    move-object/from16 v0, v17

    invoke-interface {v13, v10, v0}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1186
    .end local v5           #binder:Landroid/os/IBinder;
    .end local v13           #listener:Landroid/media/IMediaScannerListener;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 1187
    return-void

    .line 931
    .restart local v5       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_3
    invoke-static {v5}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v13

    goto :goto_0

    .line 938
    .restart local v13       #listener:Landroid/media/IMediaScannerListener;
    .restart local v17       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 939
    .local v7, e:Ljava/lang/Exception;
    const-string v25, "MediaScannerService"

    const-string v26, "Exception scanning file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1182
    .end local v5           #binder:Landroid/os/IBinder;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v13           #listener:Landroid/media/IMediaScannerListener;
    .end local v17           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v7

    .line 1183
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v25, "MediaScannerService"

    const-string v26, "Exception in handleMessage"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 946
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v25, "volume"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 947
    .local v24, volume:Ljava/lang/String;
    const/4 v6, 0x0

    .line 952
    .local v6, directories:[Ljava/lang/String;
    const-string v25, "internal"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 954
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #directories:[Ljava/lang/String;
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/media"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v25

    .line 1164
    .restart local v6       #directories:[Ljava/lang/String;
    :cond_3
    :goto_3
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1166
    if-eqz v6, :cond_4

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v6, v1}, Lcom/android/providers/media/MediaScannerService;->access$800(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_4
    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 1176
    if-eqz v6, :cond_0

    const/16 v25, 0x0

    aget-object v25, v6, v25

    if-eqz v25, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x1

    #calls: Lcom/android/providers/media/MediaScannerService;->NotifySDcardStatusForMTP(J)V
    invoke-static/range {v25 .. v27}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;J)V

    goto/16 :goto_2

    .line 960
    :cond_5
    const-string v25, "customize"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 961
    const-string v24, "internal"

    .line 962
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #directories:[Ljava/lang/String;
    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "/customize/resource"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v25

    .restart local v6       #directories:[Ljava/lang/String;
    goto :goto_3

    .line 968
    :cond_6
    const-string v25, "exdsdcard"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_8

    .line 970
    const-string v25, "action"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, action:Ljava/lang/String;
    const-string v25, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 977
    const/16 v25, 0x1

    sput-boolean v25, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 978
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "file://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 979
    .restart local v17       #uri:Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    const-string v25, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 980
    .local v11, i1:Landroid/content/Intent;
    const-string v25, "action"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    const-string v26, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static/range {v25 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 990
    const/16 v25, 0x0

    sput-boolean v25, Lcom/android/providers/media/MediaProvider;->mbScanning:Z

    .line 991
    new-instance v12, Landroid/content/Intent;

    const-string v25, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 992
    .local v12, i2:Landroid/content/Intent;
    const-string v25, "action"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/providers/media/MediaScannerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    #calls: Lcom/android/providers/media/MediaScannerService;->NotifySDcardStatusForMTP(J)V
    invoke-static/range {v25 .. v27}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;J)V

    .line 998
    const/4 v6, 0x0

    .line 999
    goto/16 :goto_3

    .line 1000
    .end local v11           #i1:Landroid/content/Intent;
    .end local v12           #i2:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_7
    const-string v25, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1027
    const/16 v16, 0x1

    .line 1029
    invoke-static {v8}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v25

    sput v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    const-string v26, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    sget v26, Lcom/android/providers/media/MediaProvider;->mVolId:I

    #calls: Lcom/android/providers/media/MediaScannerService;->UpdateVolId(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static/range {v25 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    sget v26, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v27, 0x1

    #calls: Lcom/android/providers/media/MediaScannerService;->AliveExtSdCardRows(II)V
    invoke-static/range {v25 .. v27}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;II)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->deleteNonUseAlbumArts()V
    invoke-static/range {v25 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$700(Lcom/android/providers/media/MediaScannerService;)V

    .line 1045
    const-string v24, "external"

    .line 1048
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #directories:[Ljava/lang/String;
    const/16 v25, 0x0

    aput-object v18, v6, v25

    .restart local v6       #directories:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1061
    .end local v2           #action:Ljava/lang/String;
    :cond_8
    const-string v25, "exdusb"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_9

    .line 1063
    const-string v24, "external"

    .line 1064
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #directories:[Ljava/lang/String;
    const/16 v25, 0x0

    aput-object v9, v6, v25

    .restart local v6       #directories:[Ljava/lang/String;
    goto/16 :goto_3

    .line 1068
    :cond_9
    const-string v25, "external"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 1072
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v25

    const-string v26, "mounted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 1077
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/.voicerecorder/voices"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1078
    .local v21, voicerecordDonutPath:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1079
    .local v19, voicerecord:Ljava/io/File;
    const/4 v4, 0x0

    .line 1081
    .local v4, bVoicerecordDonutPathExist:Z
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v25

    if-eqz v25, :cond_a

    .line 1082
    const/4 v4, 0x1

    .line 1087
    :cond_a
    :goto_4
    if-eqz v4, :cond_d

    .line 1088
    const/16 v25, 0x2

    :try_start_6
    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #directories:[Ljava/lang/String;
    const/16 v25, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v25

    const/16 v25, 0x1

    aput-object v21, v6, v25

    .line 1101
    .restart local v6       #directories:[Ljava/lang/String;
    :goto_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 1105
    .local v15, sd:Ljava/lang/String;
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v14

    .line 1111
    .local v14, removeStorageState:Ljava/lang/String;
    const/16 v25, -0x1

    sput v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1112
    const-string v25, "mounted"

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_b

    .line 1113
    invoke-static {v8}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v25

    sput v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1116
    :cond_b
    invoke-static {v8}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v22

    .line 1117
    .local v22, volid1:I
    invoke-static {v15}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v23

    .line 1119
    .local v23, volid2:I
    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1120
    const/16 v25, -0x1

    sput v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    .line 1124
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    const-string v26, "external"

    #calls: Lcom/android/providers/media/MediaScannerService;->openDatabase(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    #calls: Lcom/android/providers/media/MediaScannerService;->disAliveExtSdCardRows()V
    invoke-static/range {v25 .. v25}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;)V

    .line 1128
    sget v25, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    sget v26, Lcom/android/providers/media/MediaProvider;->mVolId:I

    #calls: Lcom/android/providers/media/MediaScannerService;->UpdateVolId(I)V
    invoke-static/range {v25 .. v26}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;I)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v25, v0

    sget v26, Lcom/android/providers/media/MediaProvider;->mVolId:I

    const/16 v27, 0x1

    #calls: Lcom/android/providers/media/MediaScannerService;->AliveExtSdCardRows(II)V
    invoke-static/range {v25 .. v27}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;II)V

    goto/16 :goto_3

    .line 1083
    .end local v14           #removeStorageState:Ljava/lang/String;
    .end local v15           #sd:Ljava/lang/String;
    .end local v22           #volid1:I
    .end local v23           #volid2:I
    :catch_2
    move-exception v7

    .line 1084
    .local v7, e:Ljava/lang/SecurityException;
    const-string v25, "MediaScannerService"

    const-string v26, "chk bVoicerecordDonutPathExist SecurityException: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1094
    .end local v7           #e:Ljava/lang/SecurityException;
    :cond_d
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    .end local v6           #directories:[Ljava/lang/String;
    const/16 v25, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v25

    .restart local v6       #directories:[Ljava/lang/String;
    goto/16 :goto_5

    .line 1148
    .end local v4           #bVoicerecordDonutPathExist:Z
    .end local v19           #voicerecord:Ljava/io/File;
    .end local v21           #voicerecordDonutPath:Ljava/lang/String;
    :cond_e
    const-string v25, "MediaScannerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cancel scan because volume"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " not mounted."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3
.end method
