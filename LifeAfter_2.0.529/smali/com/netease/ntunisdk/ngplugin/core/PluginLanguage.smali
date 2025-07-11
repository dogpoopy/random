.class public Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;
.super Ljava/lang/Object;
.source "PluginLanguage.java"


# instance fields
.field private final fontPath:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private final region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->fontPath:Ljava/lang/String;

    return-void
.end method

.method public static isEqual(Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    iget-object p0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public getFontPath()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->fontPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginLocale()Ljava/util/Locale;
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;->region:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 20
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
