.class Lcom/android/camera/component/MainBar$9;
.super Lcom/android/camera/trigger/Trigger;
.source "MainBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/camera/component/MainBar$9;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/component/MainBar$9;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->closePopup()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1200(Lcom/android/camera/component/MainBar;)V

    .line 276
    return-void
.end method
