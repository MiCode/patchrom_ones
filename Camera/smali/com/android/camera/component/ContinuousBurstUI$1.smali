.class Lcom/android/camera/component/ContinuousBurstUI$1;
.super Ljava/lang/Object;
.source "ContinuousBurstUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ContinuousBurstUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/ExternalCommandEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ContinuousBurstUI;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ExternalCommandEventArgs;)V
    .locals 8
    .parameter
    .parameter "sender"
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/ExternalCommandEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<Lcom/android/camera/ExternalCommandEventArgs;>;"
    const/16 v1, 0x1f4

    const/4 v4, 0x0

    .line 209
    iget-object v6, p3, Lcom/android/camera/ExternalCommandEventArgs;->command:Ljava/lang/String;

    .line 210
    .local v6, command:Ljava/lang/String;
    const-string v0, "help"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$000(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_conti_burst_long_press_timeout TIMEOUT(Milliseconds)"

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_max_conti_burst_pictures PICTURE_COUNT"

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v0, "set_conti_burst_long_press_timeout"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p3, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$202(Lcom/android/camera/component/ContinuousBurstUI;I)I

    .line 234
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    const-string v1, "pref_continuous_burst_long_press_timeout"

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v2}, Lcom/android/camera/component/ContinuousBurstUI;->access$200(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$400(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Long-press timeout has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v2}, Lcom/android/camera/component/ContinuousBurstUI;->access$200(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    goto :goto_0

    .line 223
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p3, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$202(Lcom/android/camera/component/ContinuousBurstUI;I)I

    .line 224
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$200(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-gez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v1, 0x1f4

    #setter for: Lcom/android/camera/component/ContinuousBurstUI;->m_LongPressTimeout:I
    invoke-static {v0, v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$202(Lcom/android/camera/component/ContinuousBurstUI;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 227
    :catch_0
    move-exception v7

    .line 229
    .local v7, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$300(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timeout \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 238
    .end local v7           #ex:Ljava/lang/Throwable;
    :cond_4
    const-string v0, "set_max_conti_burst_pictures"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_State:I
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$500(Lcom/android/camera/component/ContinuousBurstUI;)I

    move-result v0

    if-nez v0, :cond_8

    .line 243
    iget-object v0, p3, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$600(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No picture count specified"

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 251
    :cond_5
    :try_start_1
    iget-object v0, p3, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 252
    .local v3, count:I
    if-gtz v3, :cond_6

    .line 253
    const/16 v3, 0x14

    .line 261
    :cond_6
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #calls: Lcom/android/camera/component/ContinuousBurstUI;->linkToController()Z
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$800(Lcom/android/camera/component/ContinuousBurstUI;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 263
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/component/ContinuousBurstUI;->m_Controller:Lcom/android/camera/component/ContinuousBurstController;
    invoke-static {v1}, Lcom/android/camera/component/ContinuousBurstUI;->access$900(Lcom/android/camera/component/ContinuousBurstUI;)Lcom/android/camera/component/ContinuousBurstController;

    move-result-object v1

    const/16 v2, 0x2715

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1000(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum picture count has been changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v3           #count:I
    :goto_2
    invoke-virtual {p3}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 255
    :catch_1
    move-exception v7

    .line 257
    .restart local v7       #ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$700(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid picture count \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/camera/ExternalCommandEventArgs;->arguments:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Lcom/android/camera/ExternalCommandEventArgs;->setHandled()V

    goto/16 :goto_0

    .line 267
    .end local v7           #ex:Ljava/lang/Throwable;
    .restart local v3       #count:I
    :cond_7
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1100(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot change maximum picture count due to no controller"

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 270
    .end local v3           #count:I
    :cond_8
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstUI$1;->this$0:Lcom/android/camera/component/ContinuousBurstUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/ContinuousBurstUI;->access$1200(Lcom/android/camera/component/ContinuousBurstUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot change maximum picture count due to current state"

    invoke-virtual {p3, v0, v1}, Lcom/android/camera/ExternalCommandEventArgs;->response(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 205
    check-cast p3, Lcom/android/camera/ExternalCommandEventArgs;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ContinuousBurstUI$1;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/ExternalCommandEventArgs;)V

    return-void
.end method
