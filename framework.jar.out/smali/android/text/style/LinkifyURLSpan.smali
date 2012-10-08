.class public Landroid/text/style/LinkifyURLSpan;
.super Landroid/text/style/URLSpan;
.source "LinkifyURLSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final Debug_URL:Z

.field private static SUPPORT_PRIME:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mExtraFlags:I

.field private mUnderLineLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    sput-boolean v1, Landroid/text/style/LinkifyURLSpan;->SUPPORT_PRIME:Z

    .line 99
    const-string/jumbo v0, "ro.da1.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/style/LinkifyURLSpan;->SUPPORT_PRIME:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "src"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 43
    iput-boolean v3, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 44
    const-string/jumbo v1, "prime"

    iput-object v1, p0, Landroid/text/style/LinkifyURLSpan;->TAG:Ljava/lang/String;

    .line 45
    iput v2, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    .line 60
    new-array v0, v3, [Z

    .line 61
    .local v0, booleanArr:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 62
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 44
    const-string/jumbo v0, "prime"

    iput-object v0, p0, Landroid/text/style/LinkifyURLSpan;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    .line 49
    const-string/jumbo v0, "prime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LinkifyURLSpan] url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "xxx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "underLineLink"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 44
    const-string/jumbo v0, "prime"

    iput-object v0, p0, Landroid/text/style/LinkifyURLSpan;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    .line 54
    iput-boolean p2, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 55
    const-string/jumbo v0, "prime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LinkifyURLSpan] url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "xxx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 105
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x17

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter "widget"

    .prologue
    .line 141
    sget-boolean v4, Landroid/text/style/LinkifyURLSpan;->SUPPORT_PRIME:Z

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/text/style/LinkifyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 145
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0, v1, v3}, Landroid/text/style/LinkifyURLSpan;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 146
    .local v2, intent:Landroid/content/Intent;
    iget v4, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    if-eqz v4, :cond_0

    .line 147
    iget v4, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    :cond_0
    invoke-virtual {p0, v1}, Landroid/text/style/LinkifyURLSpan;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 155
    :goto_0
    const-string/jumbo v4, "prime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LinkifyURLSpan] onClick. url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "xxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :goto_1
    return-void

    .line 153
    .restart local v0       #componentName:Landroid/content/ComponentName;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #url:Ljava/lang/String;
    :cond_1
    const-string v4, "com.htc.HtcLinkifyDispatcher"

    const-string v5, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 159
    .end local v0           #componentName:Landroid/content/ComponentName;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/style/LinkifyURLSpan;->onNonPrimeClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onNonPrimeClick(Landroid/view/View;)V
    .locals 8
    .parameter "widget"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/text/style/LinkifyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0, v1, v3}, Landroid/text/style/LinkifyURLSpan;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 126
    .local v2, intent:Landroid/content/Intent;
    iget v4, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    if-eqz v4, :cond_0

    .line 127
    iget v4, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    :cond_0
    invoke-virtual {p0, v1}, Landroid/text/style/LinkifyURLSpan;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    :cond_1
    const-string/jumbo v4, "prime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LinkifyURLSpan] non-prime onClick. url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "xxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public setExtraFlags(I)V
    .locals 0
    .parameter "extraFlags"

    .prologue
    .line 82
    iput p1, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    .line 83
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 91
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 92
    iget-boolean v0, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 78
    iget v0, p0, Landroid/text/style/LinkifyURLSpan;->mExtraFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
