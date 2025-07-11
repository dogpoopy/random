.class public Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;
.super Ljava/lang/Object;
.source "LineGameLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/linecorp/trident/android/binding/Phase;
    .locals 5

    .line 12
    invoke-static {}, Lcom/linecorp/trident/android/binding/Phase;->values()[Lcom/linecorp/trident/android/binding/Phase;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    sget-object p0, Lcom/linecorp/trident/android/binding/Phase;->ReleasePhase:Lcom/linecorp/trident/android/binding/Phase;

    return-object p0
.end method

.method private a()Lcom/linecorp/trident/android/binding/TridentLanguage;
    .locals 2

    .line 81
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->l()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$e;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 111
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentEnglish:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 112
    :pswitch_0
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentUserDefinedLanguage:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 113
    :pswitch_1
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentChineseTraditional:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 114
    :pswitch_2
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentChineseSimplified:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 115
    :pswitch_3
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentIndonesian:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 116
    :pswitch_4
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentThai:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 117
    :pswitch_5
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentVietnamese:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 118
    :pswitch_6
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentPortuguese:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 119
    :pswitch_7
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentKorean:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 120
    :pswitch_8
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentJapanese:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 121
    :pswitch_9
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentDeutsch:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 122
    :pswitch_a
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentSpanish:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    .line 123
    :pswitch_b
    sget-object v0, Lcom/linecorp/trident/android/binding/TridentLanguage;->TridentEnglish:Lcom/linecorp/trident/android/binding/TridentLanguage;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.line.game.appid"

    .line 2
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 11
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 1

    .line 18
    instance-of v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity;

    if-nez v0, :cond_0

    .line 19
    invoke-static {p0}, Lcom/linecorp/trident/android/binding/TridentSDK;->setActivity(Landroid/app/Activity;)V

    .line 21
    :try_start_0
    invoke-static {}, Lcom/linecorp/trident/android/TridentNative;->loadNativeModules()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;)V
    .locals 5

    .line 24
    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p2, v0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;->a(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 34
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.linecorp.trident.sdk.Phase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Ljava/lang/String;)Lcom/linecorp/trident/android/binding/Phase;

    move-result-object v1

    .line 36
    invoke-static {p1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v3, Lcom/linecorp/trident/android/binding/TridentConfiguration;

    invoke-direct {v3, v2}, Lcom/linecorp/trident/android/binding/TridentConfiguration;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object v4, Lcom/linecorp/trident/android/binding/DebugLevel;->DebugLevelTrace:Lcom/linecorp/trident/android/binding/DebugLevel;

    invoke-virtual {v3, v4}, Lcom/linecorp/trident/android/binding/TridentConfiguration;->setDebugLevel(Lcom/linecorp/trident/android/binding/DebugLevel;)Lcom/linecorp/trident/android/binding/TridentConfiguration;

    .line 39
    invoke-virtual {v3, v1}, Lcom/linecorp/trident/android/binding/TridentConfiguration;->setApplicationPhase(Lcom/linecorp/trident/android/binding/Phase;)Lcom/linecorp/trident/android/binding/TridentConfiguration;

    .line 40
    invoke-virtual {v3, v2}, Lcom/linecorp/trident/android/binding/TridentConfiguration;->setApplicationIdentifier(Ljava/lang/String;)Lcom/linecorp/trident/android/binding/TridentConfiguration;

    .line 41
    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a()Lcom/linecorp/trident/android/binding/TridentLanguage;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/linecorp/trident/android/binding/TridentConfiguration;->setUILanguage(Lcom/linecorp/trident/android/binding/TridentLanguage;)Lcom/linecorp/trident/android/binding/TridentConfiguration;

    .line 42
    invoke-static {}, Lcom/linecorp/trident/android/binding/TridentSDK;->getInstance()Lcom/linecorp/trident/android/binding/TridentSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/trident/android/binding/TridentSDK;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a:Z

    if-eqz p2, :cond_1

    .line 45
    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;->a(Z)V

    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 50
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {}, Lcom/linecorp/trident/android/binding/TridentSDK;->getInstance()Lcom/linecorp/trident/android/binding/TridentSDK;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f$a;-><init>(Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;Landroid/app/Activity;)V

    invoke-virtual {v2, v1, v3}, Lcom/linecorp/trident/android/binding/TridentSDK;->initialize(Ljava/util/Vector;Lcom/linecorp/trident/android/binding/CallBackListener2;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a:Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a:Z

    :goto_0
    if-eqz p2, :cond_3

    .line 80
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$f;->a:Z

    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/thirdapi/LineGameLoginActivity$g;->a(Z)V

    :cond_3
    return-void
.end method
