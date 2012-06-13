.class public final Lcom/android/internal/telephony/ims/HtcIsimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "HtcIsimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    }
.end annotation


# static fields
.field public static final ADDRESS_TYPE_FQDN_VALUE:I = 0x0

.field public static final ADDRESS_TYPE_IPV4_VALUE:I = 0x1

.field public static final ADDRESS_TYPE_IPV6_VALUE:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_APP_REFRESH:I = 0x14

.field private static final EVENT_CHANNEL_SELECTION_DONE:I = 0x15

.field private static final EVENT_GET_DOMAIN_DONE:I = 0x5

.field private static final EVENT_GET_GBABP_DONE:I = 0x8

.field private static final EVENT_GET_IMPI_DONE:I = 0x4

.field private static final EVENT_GET_IMPU_DONE:I = 0x6

.field private static final EVENT_GET_IST_DONE:I = 0x3

.field private static final EVENT_GET_P_CSCF_DONE:I = 0x7

.field private static final EVENT_ISIM_READY:I = 0x1

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final HTC_DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mBtid:Ljava/lang/String;

.field mDOMAIN:Ljava/lang/String;

.field mHasISIM:Z

.field mIMPI:Ljava/lang/String;

.field mIMPUList:[Ljava/lang/String;

.field mIsGbaSupported:Z

.field mIsimRecordsLoaded:Z

.field mKeyLifetime:Ljava/lang/String;

.field mPCSCFList:Landroid/os/Bundle;

.field mPCSCF_FQDN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPCSCF_IPV4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPCSCF_IPV6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRand:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "p"
    .parameter "iccHandler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 60
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    .line 93
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V

    .line 95
    return-void
.end method

.method private ISIMRecords_init(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x14

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccAppRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForISIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0
.end method

.method private parserTLVRecord([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 514
    const/4 v1, 0x0

    .line 516
    .local v1, tlvValue:Ljava/lang/String;
    if-eqz p1, :cond_2

    array-length v3, p1

    if-le v3, v5, :cond_2

    .line 517
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, -0x80

    if-ne v3, v4, :cond_1

    .line 518
    aget-byte v0, p1, v5

    .line 520
    .local v0, tlvLength:I
    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    if-lt v3, v0, :cond_0

    .line 521
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "UTF-8"

    invoke-direct {v2, p1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .end local v1           #tlvValue:Ljava/lang/String;
    .local v2, tlvValue:Ljava/lang/String;
    move-object v1, v2

    .line 533
    .end local v0           #tlvLength:I
    .end local v2           #tlvValue:Ljava/lang/String;
    .restart local v1       #tlvValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 523
    .restart local v0       #tlvLength:I
    :cond_0
    const-string v3, "GSM"

    const-string v4, "Wrong length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v3

    goto :goto_0

    .line 528
    .end local v0           #tlvLength:I
    :cond_1
    const-string v3, "GSM"

    const-string v4, "unknown tag"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_2
    const-string v3, "GSM"

    const-string v4, "Empty tlv value or wrong length"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearISimRecords()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 621
    const-string v0, "GSM"

    const-string v1, "clearing ISIM records"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 623
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPI(Ljava/lang/String;)V

    .line 624
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 625
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 626
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 627
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetDOMAIN(Ljava/lang/String;)V

    .line 628
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 629
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetHasISIM(Z)V

    .line 630
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 631
    invoke-static {v3}, Lcom/android/internal/telephony/HtcIsimData;->SetIsGBASupported(Z)V

    .line 632
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 633
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 634
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 635
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 636
    iput-object v2, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 637
    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 638
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 639
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccAppRefresh(Landroid/os/Handler;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForISIMReady(Landroid/os/Handler;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0
.end method

.method public fetchISimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 587
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    if-nez v1, :cond_1

    .line 589
    const-string v1, "GSM"

    const-string v2, "Started loading ISIM records"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v2, 0x15

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->ensureISimSession(Landroid/os/Message;)V

    .line 591
    iput-boolean v4, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 592
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    .line 593
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    invoke-static {v1}, Lcom/android/internal/telephony/HtcIsimData;->SetHasISIM(Z)V

    .line 594
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasISIM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mHasISIM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const-string v1, "GSM"

    const-string v2, "ISIM record loading already done, skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISIMRecords:fetchSimRecords "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 604
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v0, :cond_0

    .line 605
    const/16 v1, 0x6f07

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 606
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 608
    const/16 v1, 0x6f02

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 609
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 611
    const/16 v1, 0x6f03

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 612
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 614
    const/16 v1, 0x6f04

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 615
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "GSM"

    const-string v1, "ISIMRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 194
    const/4 v15, 0x0

    .line 197
    .local v15, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v22, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_1

    if-eqz v15, :cond_1

    .line 506
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRecordLoaded()V

    .line 509
    :cond_1
    return-void

    .line 200
    :pswitch_1
    :try_start_1
    const-string v22, "GSM"

    const-string v23, "EVENT_ISIM_READY"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v9

    .line 502
    .local v9, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v22, "GSM"

    const-string v23, "Exception parsing RUIM record"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_1

    if-eqz v15, :cond_1

    goto :goto_1

    .line 206
    .end local v9           #exc:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v22

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v23

    if-eqz v23, :cond_2

    if-eqz v15, :cond_2

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onRecordLoaded()V

    .line 505
    :cond_2
    throw v22

    .line 211
    :pswitch_3
    :try_start_4
    const-string v22, "GSM"

    const-string v23, "EVENT_CHANNEL_SELECTION_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v15, 0x1

    .line 214
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 215
    .local v5, ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 216
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ISIM problem: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    goto :goto_0

    .line 219
    :cond_3
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v20, v22, v23

    .line 220
    .local v20, sid:I
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sessionId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/HtcIsimData;->SetSessionId(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/IccCard;->getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    .line 223
    .local v4, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 224
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    sput-object v22, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v12

    .line 229
    .local v12, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f02

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 230
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f03

    const/16 v24, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 231
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f04

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(Ljava/lang/String;ILandroid/os/Message;)V

    .line 232
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6f07

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 241
    .end local v4           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v12           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .end local v20           #sid:I
    :pswitch_4
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_IST_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v15, 0x1

    .line 244
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 245
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 246
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (IST): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 250
    :cond_4
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 251
    .local v6, data:[B
    if-eqz v6, :cond_b

    array-length v0, v6

    move/from16 v22, v0

    if-lez v22, :cond_b

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v12

    .line 258
    .restart local v12       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v12, :cond_a

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 260
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    const/16 v23, 0x0

    aget-byte v22, v22, v23

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    .line 261
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetIsGBASupported(Z)V

    .line 262
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "data[0]:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget-byte v24, v6, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mIsGbaSupported:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsGbaSupported:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/IccCard;->getApplication(Lcom/android/internal/telephony/IccCardApplication$AppType;)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    .line 265
    .restart local v4       #app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 266
    iget-object v0, v4, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x6fd5

    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 260
    .end local v4           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_5
    const/16 v22, 0x0

    goto :goto_2

    .line 269
    .restart local v4       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_6
    const-string v22, "GSM"

    const-string v23, "ISIM Application null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    .end local v4           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_7
    const/16 v22, 0x0

    aget-byte v22, v6, v22

    and-int/lit8 v22, v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 272
    const/16 v22, 0x6f09

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 275
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 276
    const/16 v22, 0x0

    aget-byte v22, v6, v22

    and-int/lit8 v22, v22, 0x1

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 277
    const/16 v22, 0x6f09

    const/16 v23, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 279
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 281
    :cond_9
    const-string v22, "GSM"

    const-string v23, "P-CSCF address service is not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 285
    :cond_a
    const-string v22, "GSM"

    const-string v23, "IccFileHandler is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    .end local v12           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_b
    const-string v22, "GSM"

    const-string v23, "Empty EF_IST"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #data:[B
    :pswitch_5
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_IMPI_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v15, 0x1

    .line 303
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 305
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 306
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 307
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (IMPI): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 311
    :cond_c
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 312
    .restart local v6       #data:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPI:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPI(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #data:[B
    :pswitch_6
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_DOMAIN_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v15, 0x1

    .line 325
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 327
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 328
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 329
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (DOMAIN): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 333
    :cond_d
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 334
    .restart local v6       #data:[B
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mDOMAIN:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetDOMAIN(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v6           #data:[B
    :pswitch_7
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_IMPU_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v15, 0x1

    .line 347
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 348
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 349
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIsimRecordsLoaded:Z

    .line 350
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (IMPU): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 353
    :cond_e
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 355
    .local v7, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v13, impuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_10

    .line 357
    const/4 v10, 0x0

    .local v10, i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, s:I
    :goto_3
    move/from16 v0, v19

    if-ge v10, v0, :cond_10

    .line 358
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 359
    .local v17, record:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->parserTLVRecord([B)Ljava/lang/String;

    move-result-object v21

    .line 361
    .local v21, uriValue:Ljava/lang/String;
    if-eqz v21, :cond_f

    .line 362
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 369
    .end local v10           #i:I
    .end local v17           #record:[B
    .end local v19           #s:I
    .end local v21           #uriValue:Ljava/lang/String;
    :cond_10
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_11

    .line 370
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mIMPUList:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetIMPU([Ljava/lang/String;)V

    .line 375
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 376
    new-instance v14, Landroid/content/Intent;

    const-string v22, "com.movial.gba_initialized"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 384
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v7           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v13           #impuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_8
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_GBABP_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 386
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    .line 387
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception ISIM records (GBABP): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 389
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 390
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 393
    :cond_12
    :try_start_5
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v6, v0

    .line 394
    .restart local v6       #data:[B
    const/4 v10, 0x0

    .line 395
    .restart local v10       #i:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .local v11, i:I
    aget-byte v16, v6, v10

    .line 397
    .local v16, len:I
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-static {v6, v11, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 403
    add-int/lit8 v10, v16, 0x1

    .line 404
    .end local v11           #i:I
    .restart local v10       #i:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    aget-byte v16, v6, v10

    .line 405
    new-instance v22, Ljava/lang/String;

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v6, v11, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 410
    add-int v10, v11, v16

    .line 411
    .end local v11           #i:I
    .restart local v10       #i:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    aget-byte v16, v6, v10

    .line 412
    new-instance v22, Ljava/lang/String;

    const-string v23, "UTF-8"

    move-object/from16 v0, v22

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v6, v11, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 416
    .end local v6           #data:[B
    .end local v11           #i:I
    .end local v16           #len:I
    :catch_1
    move-exception v8

    .line 417
    .local v8, e:Ljava/lang/Exception;
    :try_start_6
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed to parse GBABP contents: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mRand:[B

    .line 419
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mBtid:Ljava/lang/String;

    .line 420
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mKeyLifetime:Ljava/lang/String;

    goto/16 :goto_0

    .line 427
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v8           #e:Ljava/lang/Exception;
    :pswitch_9
    const-string v22, "GSM"

    const-string v23, "EVENT_APP_REFRESH"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 430
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 431
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v0, v22

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 432
    .local v18, result:[I
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "EVENT_APP_REFRESH: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/16 v22, 0x0

    aget v22, v18, v22

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 435
    const/16 v22, 0x1

    aget v22, v18, v22

    packed-switch v22, :pswitch_data_1

    .line 443
    :pswitch_a
    const-string v22, "GSM"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Not prepared to handle "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 439
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->fetchISimRecords()V

    goto/16 :goto_0

    .line 446
    :cond_13
    const-string v22, "GSM"

    const-string v23, "Unexpected: Some refresh for some other logical channel"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 453
    .end local v5           #ar:Landroid/os/AsyncResult;
    .end local v18           #result:[I
    :pswitch_c
    const-string v22, "GSM"

    const-string v23, "EVENT_GET_P_CSCF_DONE"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v15, 0x1

    .line 456
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    move-object/from16 v0, v22

    check-cast v0, Landroid/os/AsyncResult;

    move-object v5, v0

    .line 457
    .restart local v5       #ar:Landroid/os/AsyncResult;
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 460
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    .line 462
    .restart local v7       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .line 464
    .local v3, addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    const/4 v10, 0x0

    .restart local v10       #i:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    .restart local v19       #s:I
    :goto_4
    move/from16 v0, v19

    if-ge v10, v0, :cond_17

    .line 465
    new-instance v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;

    .end local v3           #addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;-><init>(Lcom/android/internal/telephony/ims/HtcIsimRecords;[B)V

    .line 466
    .restart local v3       #addressRecord:Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;
    if-eqz v3, :cond_14

    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_14

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_14

    .line 469
    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    if-nez v22, :cond_15

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_14
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 471
    :cond_15
    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 473
    :cond_16
    iget v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddressType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/internal/telephony/ims/HtcIsimRecords$PCSCF_Address;->mAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 479
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_18

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "address_type_fqdn"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_FQDN:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 484
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_19

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "address_type_ipv4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV4:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 489
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1a

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    const-string v23, "address_type_ipv6"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCF_IPV6:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 494
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/HtcIsimRecords;->mPCSCFList:Landroid/os/Bundle;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/HtcIsimData;->SetPCSCF(Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
    .end packed-switch

    .line 435
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 575
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 579
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 5

    .prologue
    .line 178
    const-string v2, "GSM"

    const-string v3, "ISIMRecords: record load complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccFileHandler;->getIccCardAppId()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, appId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/IccCardProxy;

    move-result-object v1

    .line 182
    .local v1, iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    if-eqz v1, :cond_0

    .line 183
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMRecords "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": record load complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setAllRecordsLoaded(Ljava/lang/String;)V

    .line 187
    .end local v0           #appId:Ljava/lang/String;
    .end local v1           #iccCardPxy:Lcom/android/internal/telephony/IccCardProxy;
    :cond_0
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "GSM"

    const-string v1, "ISIMRecords onRadioOffOrNotAvailable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->clearISimRecords()V

    .line 147
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 165
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 167
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/HtcIsimRecords;->onAllRecordsLoaded()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 170
    const-string v0, "GSM"

    const-string v1, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 2
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 131
    const-string v0, "GSM"

    const-string v1, "ISIMRecords onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 138
    const-string v0, "GSM"

    const-string v1, "ISIMRecords setVoiceMailNumber()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 152
    const-string v0, "GSM"

    const-string v1, "ISIMRecords setVoiceMessageWaiting()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method
