.class public Lcom/netease/mpay/oversea/h6;
.super Ljava/lang/Object;
.source "LoginUtils.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->l()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/GameLanguage;->getLanguageRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.WEB_CLIENT_ID"

    .line 51
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.growthy.appid"

    .line 52
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/h6$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    .line 27
    :pswitch_1
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->l(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 28
    :pswitch_2
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->m(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 29
    :pswitch_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->l(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 30
    :pswitch_4
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->k(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 31
    :pswitch_5
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->o(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 32
    :pswitch_6
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->h(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 33
    :pswitch_7
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->i(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 34
    :pswitch_8
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->f(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 35
    :pswitch_9
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->g(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 36
    :pswitch_a
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->q(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 37
    :pswitch_b
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->i()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/netease/mpay/oversea/h6;->j()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 38
    :pswitch_c
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->c()Z

    move-result p0

    return p0

    .line 39
    :pswitch_d
    invoke-static {p0, p2}, Lcom/netease/mpay/oversea/h6;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method

.method private static a(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 3

    .line 40
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->o(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sign in"

    .line 41
    aput-object v0, p1, v1

    :cond_0
    if-eqz p1, :cond_2

    .line 43
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 44
    aget-object p1, p1, v1

    const-string v0, "games"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->n(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->j(Landroid/app/Activity;)Z

    move-result p0

    return p0

    .line 50
    :cond_2
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->j(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2"

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    return-object v0

    :cond_1
    const-string v0, "3"

    return-object v0

    :cond_2
    const-string v0, "0"

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.huawei.hms.client.appid"

    .line 11
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.line.CHANNEL_ID"

    .line 12
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.kakao.AppKey"

    .line 5
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.line.game.appid"

    .line 6
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v2, "com.facebook.FacebookSdkVersion"

    .line 4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public static d(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.naver.ClientId"

    .line 3
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.tiktok.CLIENT_KEY"

    .line 2
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.gms.auth.api.Auth"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static e(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.naver.ClientSecret"

    .line 3
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.wechat.KEY"

    .line 2
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.gms.games.Games"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static f(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.naver.ClientName"

    .line 26
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.gms.games.PlayGamesSdk"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.google.android.gms.games.PlayGames"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string p0, "com.amazon.identity.auth.device.api.authorization.AuthorizationManager"

    .line 3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->c()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "api_key.txt"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 17
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0

    :catchall_0
    move-exception p0

    .line 22
    throw p0

    :catch_1
    move-exception p0

    .line 23
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 24
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 25
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.twitter.KEY"

    .line 7
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "4.8.0"

    const-string v2, "."

    const-string v3, ""

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1e0

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 0

    :try_start_0
    const-string p0, "com.dmm.android.lib.auth.AuthActivity"

    .line 1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string p0, "isSupportDMM:true"

    .line 3
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.netease.mpay.oversea.twitter.SECRET"

    .line 9
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/bc;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string v0, "com.linecorp.trident.android.binding.TridentSDK"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v0, "com.linecorp.linesdk.auth.LineLoginApi"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static i(Landroid/app/Activity;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/16 p0, 0xa

    return p0
.end method

.method public static i()Z
    .locals 3

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v2, "com.vk.id.VKID"

    .line 6
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 4

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v3, "com.linecorp.linesdk.auth.LineLoginApi"

    .line 10
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    :catch_0
    move-exception p0

    .line 14
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    return v2
.end method

.method public static j()Z
    .locals 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    const-string v2, "com.vk.sdk.VKSdk"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public static j(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.nhn.android.search"

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method private static k()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.mm.opensdk.constants.Build"

    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static k(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.zhiliaoapp.musically"

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    return v2

    :catchall_0
    :cond_1
    :try_start_1
    const-string v2, "com.ss.android.ugc.trill"

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    :catchall_1
    :cond_3
    return v1
.end method

.method public static l(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    :try_start_0
    const-string v0, "com.kakao.sdk.auth.AuthCodeClient"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->h()Z

    move-result p0

    return p0
.end method

.method public static m(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->e(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->f(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    :try_start_0
    const-string v0, "com.navercorp.nid.NaverIdLoginSDK"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :try_start_1
    const-string v0, "com.nhn.android.naverlogin.OAuthLogin"

    .line 11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    return v1
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.vkontakte.android"

    const/4 v1, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    const-string p0, "VK is not installed!"

    .line 17
    invoke-static {p0}, Lcom/netease/mpay/oversea/m5;->d(Ljava/lang/String;)V

    return v1
.end method

.method public static n(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "com.tencent.mm"

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public static o(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->k()Z

    move-result p0

    return p0
.end method

.method public static p(Landroid/app/Activity;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->o(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.twitter.android"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 11
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.twitter.android.beta"

    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :catch_1
    :cond_3
    :goto_1
    return v0
.end method

.method public static q(Landroid/app/Activity;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->g(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->h(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    :try_start_0
    const-string v3, "com.twitter.sdk.android.core.TwitterCore"

    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :catch_0
    return v2
.end method
