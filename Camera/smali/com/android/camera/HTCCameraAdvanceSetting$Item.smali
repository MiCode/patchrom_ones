.class Lcom/android/camera/HTCCameraAdvanceSetting$Item;
.super Ljava/lang/Object;
.source "HTCCameraAdvanceSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCameraAdvanceSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation


# instance fields
.field public canChanged:Z

.field public isGray:Z

.field public mName:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 546
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    .line 547
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "nameid"
    .parameter "valueid"

    .prologue
    .line 555
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    .line 556
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    .line 557
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "nameid"
    .parameter "value"

    .prologue
    .line 570
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    .line 571
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    .line 572
    iput-object p3, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "valueid"

    .prologue
    .line 565
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    .line 566
    iput-object p2, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    .line 567
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 560
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    .line 561
    iput-object p2, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    .line 562
    iput-object p3, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 549
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->canChanged:Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->isGray:Z

    .line 551
    iput-object p1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    .line 552
    iput-object p2, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    .line 553
    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "nameid"

    .prologue
    .line 576
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public setValue(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "valueid"

    .prologue
    .line 584
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    .line 589
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCameraAdvanceSetting$Item;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
