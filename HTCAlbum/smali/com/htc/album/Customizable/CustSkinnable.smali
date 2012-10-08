.class public Lcom/htc/album/Customizable/CustSkinnable;
.super Ljava/lang/Object;
.source "CustSkinnable.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustSkinnable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor_AllHyperLinkColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 145
    const-string v2, "all_hyperlink_color"

    const v3, 0x2060002

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 149
    .local v1, allHyperLinkColorId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 151
    .local v0, HtcTextHyperLinkColor:I
    return v0
.end method

.method public static getColor_BackgroundColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 238
    const v0, -0xd0d0e

    return v0
.end method

.method public static getColor_CropFrame(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "multiply_color"

    const/high16 v3, 0x206

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 141
    .local v0, nColor:I
    return v0
.end method

.method public static getColor_TextSelectionColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 155
    const-string v2, "text_selection_color"

    const v3, 0x2060004

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, textSelectionColorId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 161
    .local v0, HtcTextSelectionColor:I
    return v0
.end method

.method public static getDrawableRes_2PanelBackground(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public static getDrawableRes_PanelBackground(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 206
    .local v0, nResID:I
    return v0
.end method

.method public static getDrawable_Camera_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    const-string v0, "icon_btn_camera_dark"

    const v1, 0x20800a2

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Cancel_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    const-string v0, "icon_btn_cancel_dark"

    const v1, 0x20800a3

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Checkbox_off(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "gallery_checkbox_rest"

    const v1, 0x7f020008

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Checkbox_on(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    const-string v0, "gallery_checkbox_on"

    const v1, 0x7f020007

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Default_Avatar(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 177
    const v0, 0x20800d1

    return v0
.end method

.method public static getDrawable_Default_PictureAndVideo(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    const v0, 0x20800cf

    return v0
.end method

.method public static getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    const-string v0, "icon_btn_delete_dark"

    const v1, 0x20800a6

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Done_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    const-string v0, "icon_btn_done_dark"

    const v1, 0x20800a7

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "icon_btn_edit_dark"

    const v1, 0x20800ac

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Folder_Select(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 226
    const-string v0, "gallery_frame_selected"

    const v1, 0x7f02003a

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Frame_Selected(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 232
    const-string v0, "gallery_frame_selected"

    const v1, 0x7f02003a

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_GridViewSelector(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 130
    const-string v0, "gallery_frame_selected"

    const v1, 0x7f02003a

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Info_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 118
    const-string v0, "icon_btn_info_dark"

    const v1, 0x7f020014

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 280
    const-string v0, "list_selector_holo_dark"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_ListViweDefaultBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 171
    const-string v0, "common_list_item_background"

    const v1, 0x208003b

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_More_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    const-string v0, "icon_btn_more_dark"

    const v1, 0x20800b1

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Next_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    const-string v0, "icon_btn_next_dark"

    const v1, 0x20800b3

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Note_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 52
    const-string v0, "icon_btn_note_dark"

    const v1, 0x7f020015

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Output_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    const-string v0, "icon_btn_output_dark"

    const v1, 0x20800b5

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Save_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    const-string v0, "icon_btn_save_dark"

    const v1, 0x20800c1

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Share_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    const-string v0, "icon_btn_share_dark"

    const v1, 0x20800c4

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Slideshow_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    const-string v0, "icon_btn_slideshow_dark"

    const v1, 0x7f020017

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Trim_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-string v0, "icon_btn_video_trimming_dark"

    const v1, 0x7f02001a

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_TvOut_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 106
    const-string v0, "icon_btn_output_dark"

    const v1, 0x20800b5

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 88
    const-string v0, "icon_btn_updates_dark"

    const v1, 0x20800cc

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Wallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "bIsLandscape"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getDrawable_Wallpaper2(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "bIsLandscape"

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrawable_WindowDefaultBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    const-string v0, "common_app_bkg"

    const v1, 0x2080001

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getFooterBarBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 287
    const-string v0, "common_app_bkg_down_src"

    const v1, 0x2080039

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getGalleryButtonPressed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 252
    const-string v0, "gallery_button_pressed"

    const v1, 0x7f020005

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getGlanceBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 245
    const-string v0, "common_app_bkg"

    const v1, 0x2080001

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 242
    const v0, 0x20800cf

    return v0
.end method

.method public static getDrawable_getPlaybackFooterBarButtonOuter(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 294
    const-string v0, "common_b_transport_outer"

    const v1, 0x2080014

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getPlaybackFooterBarButtonPressed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 300
    const-string v0, "common_b_transport_pressed"

    const v1, 0x2080015

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getPlaybackFooterBarButtonRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 306
    const-string v0, "common_b_transport_rest"

    const v1, 0x2080016

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 313
    const-string v0, "common_b_transport_middle_outer"

    const v1, 0x2080011

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 319
    const-string v0, "common_b_transport_middle_pressed"

    const v1, 0x2080012

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 325
    const-string v0, "common_b_transport_middle_rest"

    const v1, 0x2080013

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getRimButtonOuter(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 259
    const-string v0, "common_b_button_outer"

    const v1, 0x2080004

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getRimButtonPressed(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 266
    const-string v0, "common_b_button_pressed"

    const v1, 0x2080005

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getRimButtonRest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 273
    const-string v0, "common_b_button_rest"

    const v1, 0x2080006

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
