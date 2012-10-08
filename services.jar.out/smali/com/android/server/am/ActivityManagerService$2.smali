.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 49
    .parameter "msg"

    .prologue
    .line 991
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1459
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 993
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/HashMap;

    .line 994
    .local v21, data:Ljava/util/HashMap;
    sget-object v4, Lcom/android/server/SystemServer;->mCrossServiceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 995
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    :try_start_1
    const-string v3, "app"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 997
    .local v38, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v38, :cond_1

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    .line 998
    const-string v3, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already has crash dialog: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4

    goto :goto_0

    .line 1024
    .end local v38           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1001
    .restart local v38       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_3
    const-string v3, "result"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/am/AppErrorResult;

    .line 1002
    .local v42, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_3

    .line 1011
    if-eqz v38, :cond_2

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    new-instance v20, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "crash"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1016
    .local v20, d:Landroid/app/Dialog;
    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    .line 1017
    move-object/from16 v0, v20

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1023
    .end local v20           #d:Landroid/app/Dialog;
    :goto_2
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1024
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1011
    :cond_2
    :try_start_5
    new-instance v20, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v5, "crash"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    goto :goto_1

    .line 1023
    .end local v38           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v42           #res:Lcom/android/server/am/AppErrorResult;
    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1021
    .restart local v38       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local v42       #res:Lcom/android/server/am/AppErrorResult;
    :cond_3
    const/4 v3, 0x0

    :try_start_7
    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 1029
    .end local v21           #data:Ljava/util/HashMap;
    .end local v38           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v42           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_2
    sget-object v47, Lcom/android/server/SystemServer;->mCrossServiceLock:Ljava/lang/Object;

    monitor-enter v47

    .line 1030
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v48, v0

    monitor-enter v48
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1031
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/HashMap;

    .line 1032
    .restart local v21       #data:Ljava/util/HashMap;
    const-string v3, "app"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 1033
    .restart local v38       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v38, :cond_4

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_4

    .line 1034
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App already has anr dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    monitor-exit v48
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v47

    goto/16 :goto_0

    .line 1064
    .end local v21           #data:Ljava/util/HashMap;
    .end local v38           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v3

    monitor-exit v47
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v3

    .line 1038
    .restart local v21       #data:Ljava/util/HashMap;
    .restart local v38       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_4
    :try_start_b
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.ANR"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_5

    .line 1040
    const/high16 v3, 0x4000

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1042
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I
    invoke-static/range {v3 .. v16}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1054
    if-eqz v38, :cond_6

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    new-instance v20, Lcom/android/server/am/HtcAppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1061
    .restart local v20       #d:Landroid/app/Dialog;
    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    .line 1062
    move-object/from16 v0, v20

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1063
    monitor-exit v48
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1064
    :try_start_c
    monitor-exit v47
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1054
    .end local v20           #d:Landroid/app/Dialog;
    :cond_6
    :try_start_d
    new-instance v20, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_3

    .line 1063
    .end local v6           #intent:Landroid/content/Intent;
    .end local v21           #data:Ljava/util/HashMap;
    .end local v38           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v3

    monitor-exit v48
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1069
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 1070
    .local v22, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1071
    :try_start_f
    const-string v3, "app"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 1072
    .restart local v38       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v38, :cond_7

    .line 1073
    const-string v3, "ActivityManager"

    const-string v5, "App not found when showing strict mode dialog."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    monitor-exit v4

    goto/16 :goto_0

    .line 1090
    .end local v38           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v3

    .line 1076
    .restart local v38       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_7
    :try_start_10
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_8

    .line 1077
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has strict mode dialog: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    monitor-exit v4

    goto/16 :goto_0

    .line 1080
    :cond_8
    const-string v3, "result"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/am/AppErrorResult;

    .line 1081
    .restart local v42       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_9

    .line 1082
    new-instance v20, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1083
    .restart local v20       #d:Landroid/app/Dialog;
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 1084
    move-object/from16 v0, v20

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1090
    .end local v20           #d:Landroid/app/Dialog;
    :goto_4
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1091
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1088
    :cond_9
    const/4 v3, 0x0

    :try_start_11
    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_4

    .line 1094
    .end local v22           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v38           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v42           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_4
    new-instance v20, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1096
    .restart local v20       #d:Landroid/app/Dialog;
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1100
    .end local v20           #d:Landroid/app/Dialog;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    .line 1101
    .local v43, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Configuration;

    move-object/from16 v0, v43

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    .line 1104
    .end local v43           #resolver:Landroid/content/ContentResolver;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1105
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1106
    monitor-exit v4

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v3

    .line 1110
    :pswitch_7
    sget-object v4, Lcom/android/server/SystemServer;->mCrossServiceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1111
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 1112
    :try_start_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 1113
    .local v17, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    .line 1114
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v3, :cond_a

    .line 1115
    new-instance v20, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1118
    .restart local v20       #d:Landroid/app/Dialog;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1119
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1120
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 1128
    .end local v20           #d:Landroid/app/Dialog;
    :cond_a
    :goto_5
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1129
    :try_start_15
    monitor-exit v4

    goto/16 :goto_0

    .end local v17           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_6
    move-exception v3

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v3

    .line 1123
    .restart local v17       #app:Lcom/android/server/am/ProcessRecord;
    :cond_b
    :try_start_16
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_a

    .line 1124
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1125
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    goto :goto_5

    .line 1128
    .end local v17           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_7
    move-exception v3

    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 1135
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->processNextBroadcast(Z)V
    invoke-static {v3, v4}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_0

    .line 1138
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1139
    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastTimeoutLocked(Z)V
    invoke-static {v3, v5}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1140
    monitor-exit v4

    goto/16 :goto_0

    :catchall_8
    move-exception v3

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    throw v3

    .line 1143
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v3, :cond_c

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 1146
    .local v31, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1150
    .end local v31           #nmsg:Landroid/os/Message;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1153
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1154
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v28, v3, -0x1

    .local v28, i:I
    :goto_6
    if-ltz v28, :cond_e

    .line 1155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .line 1156
    .local v41, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    if-eqz v3, :cond_d

    .line 1158
    :try_start_1a
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_0

    .line 1154
    :cond_d
    :goto_7
    add-int/lit8 v28, v28, -0x1

    goto :goto_6

    .line 1159
    :catch_0
    move-exception v24

    .line 1160
    .local v24, ex:Landroid/os/RemoteException;
    :try_start_1b
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update time zone for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1164
    .end local v24           #ex:Landroid/os/RemoteException;
    .end local v28           #i:I
    .end local v41           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_9
    move-exception v3

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v3

    .restart local v28       #i:I
    :cond_e
    :try_start_1c
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    goto/16 :goto_0

    .line 1167
    .end local v28           #i:I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1168
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v28, v3, -0x1

    .restart local v28       #i:I
    :goto_8
    if-ltz v28, :cond_10

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .line 1170
    .restart local v41       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    if-eqz v3, :cond_f

    .line 1172
    :try_start_1e
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1

    .line 1168
    :cond_f
    :goto_9
    add-int/lit8 v28, v28, -0x1

    goto :goto_8

    .line 1173
    :catch_1
    move-exception v24

    .line 1174
    .restart local v24       #ex:Landroid/os/RemoteException;
    :try_start_1f
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to clear dns cache for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1178
    .end local v24           #ex:Landroid/os/RemoteException;
    .end local v28           #i:I
    .end local v41           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_a
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    throw v3

    .restart local v28       #i:I
    :cond_10
    :try_start_20
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    goto/16 :goto_0

    .line 1181
    .end local v28           #i:I
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/net/ProxyProperties;

    .line 1182
    .local v40, proxy:Landroid/net/ProxyProperties;
    const-string v27, ""

    .line 1183
    .local v27, host:Ljava/lang/String;
    const-string v37, ""

    .line 1184
    .local v37, port:Ljava/lang/String;
    const-string v25, ""

    .line 1185
    .local v25, exclList:Ljava/lang/String;
    if-eqz v40, :cond_11

    .line 1186
    invoke-virtual/range {v40 .. v40}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v27

    .line 1187
    invoke-virtual/range {v40 .. v40}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    .line 1188
    invoke-virtual/range {v40 .. v40}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v25

    .line 1190
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1191
    :try_start_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v28, v3, -0x1

    .restart local v28       #i:I
    :goto_a
    if-ltz v28, :cond_13

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/am/ProcessRecord;

    .line 1193
    .restart local v41       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    if-eqz v3, :cond_12

    .line 1195
    :try_start_22
    move-object/from16 v0, v41

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v25

    invoke-interface {v3, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_2

    .line 1191
    :cond_12
    :goto_b
    add-int/lit8 v28, v28, -0x1

    goto :goto_a

    .line 1196
    :catch_2
    move-exception v24

    .line 1197
    .restart local v24       #ex:Landroid/os/RemoteException;
    :try_start_23
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update http proxy for: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1202
    .end local v24           #ex:Landroid/os/RemoteException;
    .end local v28           #i:I
    .end local v41           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v3

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    throw v3

    .restart local v28       #i:I
    :cond_13
    :try_start_24
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    goto/16 :goto_0

    .line 1206
    .end local v25           #exclList:Ljava/lang/String;
    .end local v27           #host:Ljava/lang/String;
    .end local v28           #i:I
    .end local v37           #port:Ljava/lang/String;
    .end local v40           #proxy:Landroid/net/ProxyProperties;
    :pswitch_e
    new-instance v20, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1207
    .local v20, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1208
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1209
    const-string v3, "System UIDs Inconsistent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1210
    const-string v3, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1211
    const/4 v3, -0x1

    const-string v4, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1214
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1217
    .end local v20           #d:Landroid/app/AlertDialog;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 1218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1223
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v3, :cond_14

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 1226
    .restart local v31       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1230
    .end local v31           #nmsg:Landroid/os/Message;
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 1231
    .restart local v17       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1232
    :try_start_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v17

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v3, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1233
    monitor-exit v4

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    throw v3

    .line 1236
    .end local v17           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1237
    :try_start_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1238
    monitor-exit v4

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    throw v3

    .line 1241
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1242
    :try_start_27
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 1243
    .local v9, uid:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_15

    const/4 v10, 0x1

    .line 1244
    .local v10, restart:Z
    :goto_c
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 1245
    .local v8, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZ)Z
    invoke-static/range {v7 .. v13}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZ)Z

    .line 1246
    monitor-exit v4

    goto/16 :goto_0

    .end local v8           #pkg:Ljava/lang/String;
    .end local v9           #uid:I
    .end local v10           #restart:Z
    :catchall_e
    move-exception v3

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    throw v3

    .line 1243
    .restart local v9       #uid:I
    :cond_15
    const/4 v10, 0x0

    goto :goto_c

    .line 1249
    .end local v9           #uid:I
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v3}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1252
    :pswitch_14
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v29

    .line 1253
    .local v29, inm:Landroid/app/INotificationManager;
    if-eqz v29, :cond_0

    .line 1257
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/am/ActivityRecord;

    .line 1258
    .local v44, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v39, v0

    .line 1259
    .local v39, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v39, :cond_0

    .line 1264
    :try_start_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v19

    .line 1265
    .local v19, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10403d1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    .line 1267
    .local v45, text:Ljava/lang/String;
    new-instance v32, Landroid/app/Notification;

    invoke-direct/range {v32 .. v32}, Landroid/app/Notification;-><init>()V

    .line 1268
    .local v32, notification:Landroid/app/Notification;
    const v3, 0x10804f5

    move-object/from16 v0, v32

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 1269
    const-wide/16 v3, 0x0

    move-object/from16 v0, v32

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    .line 1270
    const/4 v3, 0x2

    move-object/from16 v0, v32

    iput v3, v0, Landroid/app/Notification;->flags:I

    .line 1271
    move-object/from16 v0, v45

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1272
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput v3, v0, Landroid/app/Notification;->defaults:I

    .line 1273
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1274
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 1275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10403d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v11, 0x1000

    invoke-static {v4, v5, v7, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_28} :catch_4

    .line 1281
    const/4 v3, 0x1

    :try_start_29
    new-array v0, v3, [I

    move-object/from16 v35, v0

    .line 1282
    .local v35, outId:[I
    const-string v3, "android"

    const v4, 0x10403d1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v35

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_29} :catch_4

    goto/16 :goto_0

    .line 1284
    .end local v35           #outId:[I
    :catch_3
    move-exception v23

    .line 1285
    .local v23, e:Ljava/lang/RuntimeException;
    :try_start_2a
    const-string v3, "ActivityManager"

    const-string v4, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_2a} :catch_4

    goto/16 :goto_0

    .line 1289
    .end local v19           #context:Landroid/content/Context;
    .end local v23           #e:Ljava/lang/RuntimeException;
    .end local v32           #notification:Landroid/app/Notification;
    .end local v45           #text:Ljava/lang/String;
    :catch_4
    move-exception v23

    .line 1290
    .local v23, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActivityManager"

    const-string v4, "Unable to create context for heavy notification"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1294
    .end local v23           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v29           #inm:Landroid/app/INotificationManager;
    .end local v39           #process:Lcom/android/server/am/ProcessRecord;
    .end local v44           #root:Lcom/android/server/am/ActivityRecord;
    :pswitch_15
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v29

    .line 1295
    .restart local v29       #inm:Landroid/app/INotificationManager;
    if-eqz v29, :cond_0

    .line 1299
    :try_start_2b
    const-string v3, "android"

    const v4, 0x10403d1

    move-object/from16 v0, v29

    invoke-interface {v0, v3, v4}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_6

    goto/16 :goto_0

    .line 1301
    :catch_5
    move-exception v23

    .line 1302
    .local v23, e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    const-string v4, "Error canceling notification for service"

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1308
    .end local v23           #e:Ljava/lang/RuntimeException;
    .end local v29           #inm:Landroid/app/INotificationManager;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1309
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1310
    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1311
    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 1312
    .restart local v31       #nmsg:Landroid/os/Message;
    const-wide/32 v11, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v11, v12}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1313
    monitor-exit v4

    goto/16 :goto_0

    .end local v31           #nmsg:Landroid/os/Message;
    :catchall_f
    move-exception v3

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    throw v3

    .line 1316
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1317
    :try_start_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 1318
    .local v18, ar:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v3, :cond_17

    .line 1319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1321
    monitor-exit v4

    goto/16 :goto_0

    .line 1340
    .end local v18           #ar:Lcom/android/server/am/ActivityRecord;
    :catchall_10
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    throw v3

    .line 1323
    .restart local v18       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_16
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v3}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1326
    :cond_17
    if-eqz v18, :cond_18

    .line 1340
    :cond_18
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    goto/16 :goto_0

    .line 1344
    .end local v18           #ar:Lcom/android/server/am/ActivityRecord;
    :pswitch_18
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 1345
    .local v36, pid:I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 1346
    .restart local v9       #uid:I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    .line 1347
    .local v26, foregroundActivities:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v36

    move/from16 v1, v26

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchForegroundActivitiesChanged(IIZ)V
    invoke-static {v3, v0, v9, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;IIZ)V

    goto/16 :goto_0

    .line 1351
    .end local v9           #uid:I
    .end local v26           #foregroundActivities:Z
    .end local v36           #pid:I
    :pswitch_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v36, v0

    .line 1352
    .restart local v36       #pid:I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 1353
    .restart local v9       #uid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v36

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v3, v0, v9}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1357
    .end local v9           #uid:I
    .end local v36           #pid:I
    :pswitch_1a
    const-string v3, "1"

    const-string v4, "ro.debuggable"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    .line 1358
    .local v30, isDebuggable:Z
    if-eqz v30, :cond_0

    .line 1361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 1362
    :try_start_2f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v33

    .line 1363
    .local v33, now:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v11, v3, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    const-wide/32 v13, 0x493e0

    add-long/2addr v11, v13

    cmp-long v3, v33, v11

    if-gez v3, :cond_19

    .line 1366
    monitor-exit v4

    goto/16 :goto_0

    .line 1382
    .end local v33           #now:J
    :catchall_11
    move-exception v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    throw v3

    .line 1370
    .restart local v33       #now:J
    :cond_19
    :try_start_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1a

    .line 1371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    .line 1381
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v33

    iput-wide v0, v3, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1382
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_11

    .line 1383
    new-instance v46, Lcom/android/server/am/ActivityManagerService$2$1;

    const-string v3, "DumpMemoryInfo"

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;Ljava/lang/String;)V

    .line 1453
    .local v46, thread:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v46

    iput-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    .line 1454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1375
    .end local v46           #thread:Ljava/lang/Thread;
    :cond_1b
    :try_start_31
    const-string v3, "ActivityManager"

    const-string v5, "Previous mem usage report thread may be blocked!!!"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_11

    goto/16 :goto_0

    .line 1304
    .end local v30           #isDebuggable:Z
    .end local v33           #now:J
    .restart local v29       #inm:Landroid/app/INotificationManager;
    :catch_6
    move-exception v3

    goto/16 :goto_0

    .line 1287
    .restart local v19       #context:Landroid/content/Context;
    .restart local v32       #notification:Landroid/app/Notification;
    .restart local v39       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v44       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v45       #text:Ljava/lang/String;
    :catch_7
    move-exception v3

    goto/16 :goto_0

    .line 991
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_3
        :pswitch_16
        :pswitch_c
        :pswitch_d
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
