.class Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;
.super Ljava/lang/Object;
.source "SlideshowFusionSceneFallingPhoto.java"

# interfaces
.implements Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->onGoPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/fusion/fx/FxRunAsync$IFxRunAsync",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mOrientation:I

    if-ne v2, v4, :cond_3

    .line 172
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "L_zoom"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 180
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mOrientation:I

    if-ne v2, v4, :cond_4

    .line 184
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoPlay]mTableTimelineControl, L_looping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v4, v4, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "L_looping"

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v4, v4, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 192
    :goto_1
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v3, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControlPausedFrame:F

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 195
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v2, 0x6

    if-ge v0, v2, :cond_6

    .line 197
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_5

    .line 199
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "L_move"

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v4, v4, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;IFZ)V

    .line 200
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v3, v3, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_ScenePausedFrame:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 202
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem:[Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$PhotoItem;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "timeline.deform"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 203
    .local v1, mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v1, :cond_2

    .line 205
    const-string v2, "falling"

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v5, v3, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 206
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mAryPhotoItem_Scene_Falling_PausedFrame:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 195
    .end local v1           #mTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 176
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mScene:Lcom/htc/fusion/fx/FxScene;

    const-string v3, "P_zoom"

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_4
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionSceneFallingPhoto][onGoPlay]mTableTimelineControl, P_looping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v4, v4, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget-object v2, v2, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mTableTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "P_looping"

    iget-object v4, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    iget v4, v4, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->mMovingSpeed:F

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    goto/16 :goto_1

    .line 211
    .restart local v0       #i:I
    :cond_5
    iget-object v2, p0, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->this$0:Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;

    #getter for: Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;->access$000(Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][SlideshowFusionScenePhotoLockScreen][onGoPlay]mForegroundTimelineControls["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 214
    :cond_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideshowFusionSceneFallingPhoto$2;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
