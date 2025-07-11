.class public Lcom/netease/mpay/oversea/ui/b$d;
.super Ljava/lang/Object;
.source "AdapterViewData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/ui/b$d;->a:I

    .line 3
    iput p2, p0, Lcom/netease/mpay/oversea/ui/b$d;->b:I

    .line 4
    iput p3, p0, Lcom/netease/mpay/oversea/ui/b$d;->c:I

    .line 5
    iput p4, p0, Lcom/netease/mpay/oversea/ui/b$d;->d:I

    .line 6
    iput p5, p0, Lcom/netease/mpay/oversea/ui/b$d;->e:I

    return-void
.end method

.method private static a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 12

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/ui/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 236
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__unknown:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 237
    :pswitch_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_quicklogin_small:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__quick_login:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    const/4 v3, -0x1

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 238
    :pswitch_1
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v7, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_more_small:I

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_passport_more:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_more:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_channel_more:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 273
    :pswitch_2
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_discord_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_discord:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__discord:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 274
    :pswitch_3
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_apple_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_apple:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__apple:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 275
    :pswitch_4
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_tiktok_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_tiktok:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__tiktok:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 276
    :pswitch_5
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_email_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_email:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 277
    :pswitch_6
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_transfer_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_transfer:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__inherit:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 278
    :pswitch_7
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_naver_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_naver:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__naver:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 279
    :pswitch_8
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_kakao_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_kakao:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__kakao:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 280
    :pswitch_9
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_huawei_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_huawei:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__huawei:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 281
    :pswitch_a
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_amazon_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_amazon:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__amazon:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 282
    :pswitch_b
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_dmm_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_dmm:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__dmm:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 283
    :pswitch_c
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_wechat_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_wechat:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__wechat:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 284
    :pswitch_d
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_nintendo_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_nintendo:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__nintendo:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 285
    :pswitch_e
    sget-object p0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_envoy_small:I

    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_envoy:I

    sget v5, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__envoy_passport:I

    sget v6, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v1, p0

    move v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 293
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_longe_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_longe:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__longe_passport:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 300
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/h9;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 301
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_stellar_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_stellar:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__stellar:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 308
    :cond_2
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_passport_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_passport:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 309
    :pswitch_f
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_envoy_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_envoy:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__envoy_passport:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 316
    :pswitch_10
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_longe_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_longe:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__longe_passport:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 317
    :pswitch_11
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_psn_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_psn:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__psn:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 318
    :pswitch_12
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_steam_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_steam:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__steam:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 319
    :pswitch_13
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_line_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_line:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__line:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 320
    :pswitch_14
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_twitter_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_twitter:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__twitter:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 321
    :pswitch_15
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_vk_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_vk:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__vk:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 322
    :pswitch_16
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_facebook_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_facebook:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__facebook:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 323
    :pswitch_17
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/i9;->U()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/i9;->V()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 331
    :cond_3
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_google_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_google:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 332
    :cond_4
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_playgames_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_playgames:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google_play_games:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 333
    :pswitch_18
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_pn_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_pn:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pn:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 334
    :pswitch_19
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_epic_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_epic:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__epic:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 335
    :pswitch_1a
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_gamecenter_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_gamecenter:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__game_center:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 336
    :pswitch_1b
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_guest_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__channel_login_guest:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__guest:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/ui/b$d;->b(Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 12

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/ui/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 222
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__unknown:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 223
    :pswitch_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_discord_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_discord:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__discord:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 224
    :pswitch_1
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_apple_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_apple:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__apple:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 225
    :pswitch_2
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_tiktok_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_tiktok:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__tiktok:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 226
    :pswitch_3
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_email_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_email:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 227
    :pswitch_4
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_transfer_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_transfer:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__inherit:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 228
    :pswitch_5
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_naver_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_naver:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__naver:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 229
    :pswitch_6
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_kakao_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_kakao:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__kakao:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 230
    :pswitch_7
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_huawei_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_huawei:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__huawei:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 231
    :pswitch_8
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_amazon_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_amazon:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__amazon:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 232
    :pswitch_9
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_dmm_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_dmm:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__dmm:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 233
    :pswitch_a
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_wechat_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_wechat:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__wechat:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 234
    :pswitch_b
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_nintendo_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_nintendo:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__nintendo:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 235
    :pswitch_c
    sget-object p0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_envoy_small:I

    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_envoy:I

    sget v5, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__envoy_passport:I

    sget v6, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v1, p0

    move v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 243
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_longe_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_longe:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__longe_passport:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 250
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/h9;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 251
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_stellar_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_stellar:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__stellar:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 258
    :cond_2
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_passport_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_passport:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 259
    :pswitch_d
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_envoy_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_envoy:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__envoy_passport:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 260
    :pswitch_e
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_longe_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_longe:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__longe_passport:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 261
    :pswitch_f
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_psn_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_psn:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__psn:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 262
    :pswitch_10
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_steam_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_steam:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__steam:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 263
    :pswitch_11
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_line_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_line:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__line:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 264
    :pswitch_12
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_twitter_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_twitter:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__twitter:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 265
    :pswitch_13
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_vk_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_vk:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__vk:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 266
    :pswitch_14
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_facebook_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_facebook:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__facebook:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 267
    :pswitch_15
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/i9;->U()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/i9;->V()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 275
    :cond_3
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_google_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_google:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 276
    :cond_4
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_playgames_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_playgames:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google_play_games:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 277
    :pswitch_16
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_pn_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_pn:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pn:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 278
    :pswitch_17
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_epic_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_epic:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__epic:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 279
    :pswitch_18
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_gamecenter_small:I

    sget v3, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_gamecenter:I

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__game_center:I

    sget v5, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_01:I

    move-object v0, p0

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    .line 280
    :pswitch_19
    new-instance p0, Lcom/netease/mpay/oversea/ui/b$d;

    sget v8, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_guest_small:I

    sget v9, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__switch_login_guest:I

    sget v10, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__guest:I

    sget v11, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__button_font_03:I

    move-object v6, p0

    move v7, v8

    invoke-direct/range {v6 .. v11}, Lcom/netease/mpay/oversea/ui/b$d;-><init>(IIIII)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .end packed-switch
.end method

.method private static b(Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$d;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/ui/b$d;->a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/netease/mpay/oversea/ui/b$d;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object p0

    :goto_0
    return-object p0
.end method
