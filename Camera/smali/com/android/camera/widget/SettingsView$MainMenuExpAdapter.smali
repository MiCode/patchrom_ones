.class Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SettingsView.java"

# interfaces
.implements Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;
.implements Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainMenuExpAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentGroupPosition:I

.field private mListPreference:Landroid/preference/ListPreference;

.field private mNextGroupPosition:I

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/widget/SettingsView;


# direct methods
.method public constructor <init>(Lcom/android/camera/widget/SettingsView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p3, preferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 326
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    .line 332
    iput-object p3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    .line 333
    iput-object p2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mContext:Landroid/content/Context;

    .line 334
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public collapseAll()V
    .locals 3

    .prologue
    .line 342
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setSelectedGroup(I)V

    .line 345
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    .line 346
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 374
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f08007c

    .line 381
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 383
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    .line 384
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 386
    .local v0, entry:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 388
    .local v1, index:I
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v3, v3, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03001f

    invoke-virtual {v3, v5, p5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 389
    const v3, 0x7f08006a

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aget-object v5, v0, p2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v3, 0x7f0800a8

    invoke-virtual {p4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRadioButton;

    if-ne p2, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 396
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    invoke-virtual {p0, p2}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    .line 403
    :cond_1
    :goto_0
    const v3, 0x7f020081

    invoke-virtual {p4, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v3, p4

    .line 415
    .end local v0           #entry:[Ljava/lang/CharSequence;
    .end local v1           #index:I
    :goto_1
    return-object v3

    .line 400
    .restart local v0       #entry:[Ljava/lang/CharSequence;
    .restart local v1       #index:I
    :cond_2
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 408
    .end local v0           #entry:[Ljava/lang/CharSequence;
    .end local v1           #index:I
    :cond_3
    instance-of v3, v2, Lcom/android/camera/widget/CustomPreference;

    if-eqz v3, :cond_4

    .line 410
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$100(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    new-instance v4, Lcom/android/camera/widget/ImagePropertyItem;

    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/camera/widget/ImagePropertyItem;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, p2

    .line 411
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$100(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v4}, Lcom/android/camera/widget/SettingsView;->access$200(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/CameraThread;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/android/camera/widget/ImagePropertyItem;->initialize(ILcom/android/camera/CameraThread;)V

    .line 413
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$100(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    aget-object v3, v3, p2

    goto :goto_1

    .line 415
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 423
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 425
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    .line 426
    check-cast v2, Landroid/preference/ListPreference;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 427
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 428
    .local v1, entry:[Ljava/lang/CharSequence;
    array-length v0, v1

    .line 429
    .local v0, count:I
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I
    invoke-static {v4}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)I

    move-result v4

    mul-int/2addr v4, v0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I
    invoke-static {v3, v4}, Lcom/android/camera/widget/SettingsView;->access$302(Lcom/android/camera/widget/SettingsView;I)I

    .line 439
    .end local v0           #count:I
    .end local v1           #entry:[Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 433
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_0
    instance-of v3, v2, Lcom/android/camera/widget/CustomPreference;

    if-eqz v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mImagePropertyItem:[Lcom/android/camera/widget/ImagePropertyItem;
    invoke-static {v3}, Lcom/android/camera/widget/SettingsView;->access$100(Lcom/android/camera/widget/SettingsView;)[Lcom/android/camera/widget/ImagePropertyItem;

    move-result-object v3

    array-length v0, v3

    .line 435
    .restart local v0       #count:I
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_ImagePropertyItemHeight:I
    invoke-static {v4}, Lcom/android/camera/widget/SettingsView;->access$500(Lcom/android/camera/widget/SettingsView;)I

    move-result v4

    mul-int/2addr v4, v0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I
    invoke-static {v3, v4}, Lcom/android/camera/widget/SettingsView;->access$302(Lcom/android/camera/widget/SettingsView;I)I

    goto :goto_0

    .line 439
    .end local v0           #count:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 3

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 451
    .local v0, count:I
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_MenuItemHeight:I
    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$400(Lcom/android/camera/widget/SettingsView;)I

    move-result v2

    mul-int/2addr v2, v0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuParentHeight:I
    invoke-static {v1, v2}, Lcom/android/camera/widget/SettingsView;->access$602(Lcom/android/camera/widget/SettingsView;I)I

    .line 452
    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 457
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 465
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 467
    .local v8, preference:Landroid/preference/Preference;
    instance-of v12, v8, Landroid/preference/PreferenceGroup;

    if-eqz v12, :cond_1

    .line 468
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v12, v12, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f03001d

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    move-object v4, v8

    .line 469
    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 471
    .local v4, group:Landroid/preference/PreferenceGroup;
    const v12, 0x7f08007c

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 472
    .local v11, title:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    .end local v4           #group:Landroid/preference/PreferenceGroup;
    .end local v11           #title:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v8}, Landroid/preference/Preference;->isEnabled()Z

    move-result v13

    move-object/from16 v0, p3

    #calls: Lcom/android/camera/widget/SettingsView;->setEnabledStateOnViews(Landroid/view/View;Z)V
    invoke-static {v12, v0, v13}, Lcom/android/camera/widget/SettingsView;->access$1000(Lcom/android/camera/widget/SettingsView;Landroid/view/View;Z)V

    .line 536
    return-object p3

    .line 474
    :cond_1
    instance-of v12, v8, Landroid/preference/ListPreference;

    if-eqz v12, :cond_4

    move-object v7, v8

    .line 476
    check-cast v7, Landroid/preference/ListPreference;

    .line 477
    .local v7, listPref:Landroid/preference/ListPreference;
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v12, v12, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f03001e

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 478
    const v12, 0x7f08007c

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 479
    .restart local v11       #title:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    const v12, 0x7f0800a7

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 483
    .local v10, summary:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    .line 484
    .local v9, str:Ljava/lang/CharSequence;
    if-eqz v9, :cond_2

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 485
    :cond_2
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    .line 486
    :cond_3
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 488
    .end local v7           #listPref:Landroid/preference/ListPreference;
    .end local v9           #str:Ljava/lang/CharSequence;
    .end local v10           #summary:Landroid/widget/TextView;
    .end local v11           #title:Landroid/widget/TextView;
    :cond_4
    instance-of v12, v8, Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_7

    move-object v3, v8

    .line 490
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 491
    .local v3, ckPref:Landroid/preference/CheckBoxPreference;
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v12, v12, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f03001c

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 493
    const v12, 0x7f08007c

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 494
    .restart local v11       #title:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 496
    .local v2, checked:Z
    const v12, 0x7f080023

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcCheckBox;

    .line 497
    .local v1, checkBox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 498
    const v12, 0x7f0800a7

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 499
    .restart local v10       #summary:Landroid/widget/TextView;
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v12

    :goto_1
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, key:Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v12, "pref_camera_switch"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 504
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 499
    .end local v6           #key:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1

    .line 506
    .restart local v6       #key:Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 509
    .end local v1           #checkBox:Lcom/htc/widget/HtcCheckBox;
    .end local v2           #checked:Z
    .end local v3           #ckPref:Landroid/preference/CheckBoxPreference;
    .end local v6           #key:Ljava/lang/String;
    .end local v10           #summary:Landroid/widget/TextView;
    .end local v11           #title:Landroid/widget/TextView;
    :cond_7
    instance-of v12, v8, Landroid/preference/Preference;

    if-eqz v12, :cond_0

    .line 510
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v12, v12, Lcom/android/camera/widget/SettingsView;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f03001e

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 512
    const v12, 0x7f08007c

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 513
    .restart local v11       #title:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const v12, 0x7f0800a7

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 515
    .restart local v10       #summary:Landroid/widget/TextView;
    invoke-virtual {v8}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    .line 516
    .restart local v9       #str:Ljava/lang/CharSequence;
    instance-of v12, v8, Lcom/android/camera/widget/CustomPreference;

    if-eqz v12, :cond_9

    .line 517
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v12}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/camera/MenuHandler;->getSummary(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v9

    .line 518
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    move-object/from16 v0, p3

    #setter for: Lcom/android/camera/widget/SettingsView;->m_ImageAdjustmentView:Landroid/view/View;
    invoke-static {v12, v0}, Lcom/android/camera/widget/SettingsView;->access$802(Lcom/android/camera/widget/SettingsView;Landroid/view/View;)Landroid/view/View;

    .line 519
    iget-object v12, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #setter for: Lcom/android/camera/widget/SettingsView;->m_ImageAdjustmentPreference:Landroid/preference/Preference;
    invoke-static {v12, v8}, Lcom/android/camera/widget/SettingsView;->access$902(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 526
    :goto_2
    if-eqz v9, :cond_8

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 527
    :cond_8
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 523
    :cond_9
    const v12, 0x202000d

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcIndicatorButton;

    .line 524
    .local v5, indicatorBtn:Lcom/htc/widget/HtcIndicatorButton;
    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Lcom/htc/widget/HtcIndicatorButton;->setVisibility(I)V

    goto :goto_2

    .line 529
    .end local v5           #indicatorBtn:Lcom/htc/widget/HtcIndicatorButton;
    :cond_a
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 549
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 662
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-string v3, "pref_fast_fps"

    invoke-static {v1, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 665
    .local v0, isFastFrame:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$1500(Lcom/android/camera/widget/SettingsView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 678
    .end local v0           #isFastFrame:Z
    :goto_0
    return v1

    .line 668
    .restart local v0       #isFastFrame:Z
    :cond_1
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_set_resolution"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1080p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMenuHandler:Lcom/android/camera/MenuHandler;
    invoke-static {v1}, Lcom/android/camera/widget/SettingsView;->access$700(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/MenuHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/MenuHandler;->getMenuResolutionItem(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "QCIF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 673
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #isFastFrame:Z
    :cond_3
    move v1, v2

    .line 678
    goto :goto_0
.end method

.method public menuExpandCollapseHandler(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, -0x1

    .line 558
    iget v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    if-ne v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    .line 560
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListView;->setSelectedGroup(I)V

    .line 561
    iput p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    .line 573
    :goto_0
    return-void

    .line 563
    :cond_0
    iget v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    if-ne v0, p1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 565
    iput v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->collapseGroup(I)Z

    .line 569
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    .line 570
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainList_exp:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v0}, Lcom/android/camera/widget/SettingsView;->access$000(Lcom/android/camera/widget/SettingsView;)Lcom/htc/widget/HtcExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListView;->setSelectedGroup(I)V

    .line 571
    iput p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mCurrentGroupPosition:I

    goto :goto_0
.end method

.method public onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 634
    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 636
    .local v1, preference:Landroid/preference/Preference;
    instance-of v4, v1, Landroid/preference/ListPreference;

    if-nez v4, :cond_1

    .line 657
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_0
    :goto_0
    return v2

    .line 639
    .restart local v1       #preference:Landroid/preference/Preference;
    :cond_1
    check-cast v1, Landroid/preference/ListPreference;

    .end local v1           #preference:Landroid/preference/Preference;
    iput-object v1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 641
    invoke-virtual {p0, p4}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 645
    .local v0, current:I
    if-eq p4, v0, :cond_2

    .line 646
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, p4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 647
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    .line 648
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    iget-object v4, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    #calls: Lcom/android/camera/widget/SettingsView;->updateListPreference(Landroid/preference/Preference;I)V
    invoke-static {v2, v4, p4}, Lcom/android/camera/widget/SettingsView;->access$1300(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;I)V

    .line 649
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->mMainAdapter_exp:Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;
    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$1400(Lcom/android/camera/widget/SettingsView;)Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 650
    goto :goto_0

    .line 654
    :cond_2
    iget-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #getter for: Lcom/android/camera/widget/SettingsView;->m_Context:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/camera/widget/SettingsView;->access$1500(Lcom/android/camera/widget/SettingsView;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    move v2, v3

    .line 657
    goto :goto_0
.end method

.method public onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 578
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 580
    .local v2, preference:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 604
    .end local v2           #preference:Landroid/preference/Preference;
    :goto_0
    return v4

    .line 583
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_0
    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 584
    check-cast v2, Landroid/preference/ListPreference;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mListPreference:Landroid/preference/ListPreference;

    .line 585
    invoke-virtual {p0, p3}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->menuExpandCollapseHandler(I)V

    goto :goto_0

    .line 587
    .restart local v2       #preference:Landroid/preference/Preference;
    :cond_1
    instance-of v3, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 591
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 592
    .local v1, ckPref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    #calls: Lcom/android/camera/widget/SettingsView;->updateCheckBoxPreference(Landroid/preference/Preference;Z)V
    invoke-static {v5, v1, v3}, Lcom/android/camera/widget/SettingsView;->access$1100(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;Z)V

    .line 593
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 594
    .local v0, checked:Z
    const v3, 0x7f080023

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 595
    const v3, 0x7f0800a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 592
    .end local v0           #checked:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 595
    .restart local v0       #checked:Z
    :cond_3
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummaryOff()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    .line 599
    .end local v0           #checked:Z
    .end local v1           #ckPref:Landroid/preference/CheckBoxPreference;
    :cond_4
    instance-of v3, v2, Lcom/android/camera/widget/CustomPreference;

    if-eqz v3, :cond_5

    .line 600
    invoke-virtual {p0, p3}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->menuExpandCollapseHandler(I)V

    goto :goto_0

    .line 603
    :cond_5
    iget-object v3, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    #calls: Lcom/android/camera/widget/SettingsView;->updatePreference(Landroid/preference/Preference;)V
    invoke-static {v3, v2}, Lcom/android/camera/widget/SettingsView;->access$1200(Lcom/android/camera/widget/SettingsView;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 621
    iget v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mNextGroupPosition:I

    if-ne p1, v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->this$0:Lcom/android/camera/widget/SettingsView;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/widget/SettingsView;->m_MenuChildHeight:I
    invoke-static {v0, v1}, Lcom/android/camera/widget/SettingsView;->access$302(Lcom/android/camera/widget/SettingsView;I)I

    .line 629
    :cond_0
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "groupPosition"

    .prologue
    .line 610
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 611
    iput p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mNextGroupPosition:I

    .line 615
    return-void
.end method

.method public updateAdapter(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, preferences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    iput-object p1, p0, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->mPreferences:Ljava/util/ArrayList;

    .line 338
    invoke-virtual {p0}, Lcom/android/camera/widget/SettingsView$MainMenuExpAdapter;->notifyDataSetChanged()V

    .line 339
    return-void
.end method
