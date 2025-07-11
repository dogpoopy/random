.class public Lcom/netease/ntunisdk/external/protocol/utils/TextCompat;
.super Ljava/lang/Object;
.source "TextCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getResourcesConfigLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 1

    const-string v0, "JAPAN"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sget-object p0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object p0

    :cond_0
    const-string v0, "KOREA"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    sget-object p0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object p0

    :cond_1
    const-string v0, "TRADITIONAL_CHINESE"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object p0

    :cond_2
    const-string v0, "ENGLISH"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object p0

    :cond_3
    const-string v0, "SIMPLIFIED_CHINESE"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 23
    sget-object p0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object p0

    .line 25
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    return-object v0

    :cond_5
    const-string p0, "latest_v23.tw.json"

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 29
    sget-object p0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object p0

    :cond_6
    const-string p0, "latest_v35.tw.json"

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 31
    sget-object p0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object p0

    :cond_7
    const-string p0, "latest_v6.tw.json"

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 33
    sget-object p0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object p0

    :cond_8
    return-object v0
.end method
