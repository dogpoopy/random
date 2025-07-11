.class public Lcom/netease/mpay/oversea/thirdapi/d;
.super Ljava/lang/Object;
.source "ApiManager.java"


# static fields
.field private static final a:[Lcom/netease/mpay/oversea/g6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netease/mpay/oversea/g6;

    .line 1
    sget-object v1, Lcom/netease/mpay/oversea/g6;->u:Lcom/netease/mpay/oversea/g6;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/mpay/oversea/thirdapi/d;->a:[Lcom/netease/mpay/oversea/g6;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 1

    .line 416
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/d$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 450
    :pswitch_1
    new-instance p0, Lcom/netease/mpay/oversea/ab;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/ab;-><init>()V

    return-object p0

    .line 451
    :pswitch_2
    new-instance p0, Lcom/netease/mpay/oversea/c4;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/c4;-><init>()V

    return-object p0

    .line 469
    :pswitch_3
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e5;->c()Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p0

    return-object p0

    .line 470
    :pswitch_4
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/g;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/g;-><init>()V

    return-object p0

    .line 474
    :pswitch_5
    new-instance p0, Lcom/netease/mpay/oversea/f7;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f7;-><init>()V

    return-object p0

    .line 475
    :pswitch_6
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/f;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/f;-><init>()V

    return-object p0

    .line 476
    :pswitch_7
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/r;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/r;-><init>()V

    return-object p0

    .line 477
    :pswitch_8
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/o;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/o;-><init>()V

    return-object p0

    .line 478
    :pswitch_9
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    return-object p0

    .line 479
    :pswitch_a
    new-instance p0, Lcom/netease/mpay/oversea/b2;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/b2;-><init>()V

    return-object p0

    .line 480
    :pswitch_b
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/v;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/v;-><init>()V

    return-object p0

    .line 481
    :pswitch_c
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/p;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/p;-><init>()V

    return-object p0

    .line 482
    :pswitch_d
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    return-object p0

    .line 483
    :pswitch_e
    new-instance p0, Lcom/netease/mpay/oversea/c5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/c5;-><init>()V

    return-object p0

    .line 484
    :pswitch_f
    new-instance p0, Lcom/netease/mpay/oversea/f4;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f4;-><init>()V

    return-object p0

    .line 485
    :pswitch_10
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/s;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;-><init>()V

    return-object p0

    .line 486
    :pswitch_11
    new-instance p0, Lcom/netease/mpay/oversea/l7;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/l7;-><init>()V

    return-object p0

    .line 487
    :pswitch_12
    new-instance p0, Lcom/netease/mpay/oversea/oa;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/oa;-><init>()V

    return-object p0

    .line 488
    :pswitch_13
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/l;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/l;-><init>()V

    return-object p0

    .line 489
    :pswitch_14
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/a;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/a;-><init>()V

    return-object p0

    .line 490
    :pswitch_15
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 491
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    return-object p0

    .line 493
    :cond_0
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    return-object p0

    .line 494
    :pswitch_16
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;
    .locals 1

    .line 316
    sget-object v0, Lcom/netease/mpay/oversea/thirdapi/d$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 382
    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/oversea/e5;->b()Lcom/netease/mpay/oversea/e5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/e5;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 383
    :pswitch_1
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__discord:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :pswitch_2
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__pn:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 385
    :pswitch_3
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__epic:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 386
    :pswitch_4
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__game_center:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :pswitch_5
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__apple:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 388
    :pswitch_6
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__tiktok:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 389
    :pswitch_7
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__hydra_email_account:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 390
    :pswitch_8
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__naver:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 391
    :pswitch_9
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__kakao:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 392
    :pswitch_a
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__dmm:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 393
    :pswitch_b
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__wechat:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 394
    :pswitch_c
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__nintendo:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 395
    :pswitch_d
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__line:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 396
    :pswitch_e
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__inherit:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 397
    :pswitch_f
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__twitter:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 398
    :pswitch_10
    sget-object p1, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__longe_passport:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__envoy_passport:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 403
    :cond_1
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :pswitch_11
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__longe_passport:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 405
    :pswitch_12
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__envoy_passport:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 406
    :pswitch_13
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__psn:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 407
    :pswitch_14
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__steam:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :pswitch_15
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__guest:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 409
    :pswitch_16
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__amazon:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 410
    :pswitch_17
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__vk:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 411
    :pswitch_18
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__facebook:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 412
    :pswitch_19
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->U()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 413
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google_play_games:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 415
    :cond_2
    sget p1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__google:I

    invoke-static {p0, p1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

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
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    if-eqz p0, :cond_7

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 175
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 176
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    .line 180
    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    if-ne p2, p1, :cond_4

    .line 185
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 186
    invoke-static {}, Lcom/netease/mpay/oversea/w3;->a()Lcom/netease/mpay/oversea/w3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/w3;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 188
    :cond_3
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_4
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_5
    :goto_0
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :cond_6
    :goto_1
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_7
    :goto_2
    invoke-static {v0}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 197
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "{\"id\":\"0\"}"

    return-object p0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x11

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 497
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 498
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 499
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 500
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/i;-><init>()V

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 501
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->U()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 502
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/k;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/k;-><init>()V

    sget-object v1, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/k;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 503
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->V()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 504
    new-instance p1, Lcom/netease/mpay/oversea/g5;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/g5;-><init>()V

    sget-object v1, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v1}, Lcom/netease/mpay/oversea/g5;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 506
    :cond_5
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/j;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/j;-><init>()V

    sget-object v1, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v1}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/l;)V
    .locals 2

    .line 12
    sget-object v0, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/k;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/k;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/k;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/j;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/j;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 18
    :cond_1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->w:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/i;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 21
    :cond_2
    sget-object v0, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->i()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_d

    .line 26
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;)V

    invoke-interface {p2, p0}, Lcom/netease/mpay/oversea/l;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    goto/16 :goto_0

    .line 28
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->j()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 29
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 31
    :cond_4
    sget-object v0, Lcom/netease/mpay/oversea/g6;->v:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/s;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/s;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 34
    :cond_5
    sget-object v0, Lcom/netease/mpay/oversea/g6;->t:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    new-instance p1, Lcom/netease/mpay/oversea/c5;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/c5;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 37
    :cond_6
    sget-object v0, Lcom/netease/mpay/oversea/g6;->u:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 40
    :cond_7
    sget-object v0, Lcom/netease/mpay/oversea/g6;->r:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 41
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/a;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/a;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto/16 :goto_0

    .line 43
    :cond_8
    sget-object v0, Lcom/netease/mpay/oversea/g6;->n:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 44
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    new-instance p1, Lcom/netease/mpay/oversea/c4;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/c4;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto :goto_0

    .line 46
    :cond_9
    sget-object v0, Lcom/netease/mpay/oversea/g6;->y:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 47
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/m;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/m;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/m;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto :goto_0

    .line 49
    :cond_a
    sget-object v0, Lcom/netease/mpay/oversea/g6;->z:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 50
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/i9;->e(Lcom/netease/mpay/oversea/g6;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    new-instance p1, Lcom/netease/mpay/oversea/thirdapi/o;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/thirdapi/o;-><init>()V

    sget-object v0, Lcom/netease/mpay/oversea/s9;->q:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {p1, p0, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l;)V

    goto :goto_0

    .line 52
    :cond_b
    sget-object p0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    if-eqz p2, :cond_d

    const/4 p0, 0x0

    .line 54
    invoke-interface {p2, p0, p0, p0}, Lcom/netease/mpay/oversea/l;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_c
    if-eqz p2, :cond_d

    .line 58
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/e;

    sget-object p1, Lcom/netease/mpay/oversea/thirdapi/e$a;->a:Lcom/netease/mpay/oversea/thirdapi/e$a;

    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/thirdapi/e;-><init>(Lcom/netease/mpay/oversea/thirdapi/e$a;)V

    invoke-interface {p2, p0}, Lcom/netease/mpay/oversea/l;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    :cond_d
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/l;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/netease/mpay/oversea/y5;->f:Lcom/netease/mpay/oversea/g6;

    .line 6
    invoke-static {p0, v0, p2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/l;)V

    .line 8
    sget-object p2, Lcom/netease/mpay/oversea/thirdapi/d;->a:[Lcom/netease/mpay/oversea/g6;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    if-ne v3, v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v4, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 11
    invoke-static {p0, v3, v4}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_3
    :goto_2
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/CheckApiAuthCallback;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez p3, :cond_0

    goto/16 :goto_7

    .line 60
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    .line 62
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 66
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    .line 67
    iget-object v3, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    .line 68
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x4

    const/16 v3, 0x130

    if-eq p2, v2, :cond_c

    const/4 v2, 0x5

    if-eq p2, v2, :cond_a

    const/16 v2, 0xa

    if-eq p2, v2, :cond_8

    const/16 v2, 0x11

    if-eq p2, v2, :cond_5

    const/16 v2, 0x12

    if-eq p2, v2, :cond_3

    .line 119
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    return v1

    .line 120
    :cond_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->k(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    new-instance v0, Lcom/netease/mpay/oversea/c4;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/c4;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_0

    .line 124
    :cond_4
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_0
    return v1

    .line 125
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    goto :goto_1

    .line 129
    :cond_6
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->j()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 130
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_1

    .line 133
    :cond_7
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_1
    return v1

    .line 134
    :cond_8
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 135
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_2

    .line 138
    :cond_9
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_2
    return v1

    .line 162
    :cond_a
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->q(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 163
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/s;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/s;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/s;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_3

    .line 166
    :cond_b
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_3
    return v1

    .line 167
    :cond_c
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->c()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 168
    new-instance v0, Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/thirdapi/i;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/CheckApiAuthCallback;)V

    goto :goto_4

    .line 171
    :cond_d
    invoke-interface {p3, v3, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    :goto_4
    return v1

    :cond_e
    :goto_5
    const/16 p0, 0x12e

    .line 172
    invoke-interface {p3, p0, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    return v1

    :cond_f
    :goto_6
    const/16 p0, 0x12d

    .line 173
    invoke-interface {p3, p0, v0}, Lcom/netease/mpay/oversea/CheckApiAuthCallback;->isAuthValid(IZ)V

    return v1

    :cond_10
    :goto_7
    return v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 3

    if-eqz p0, :cond_10

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 203
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    .line 205
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 209
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    .line 210
    iget-object v2, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    .line 211
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x4

    const/16 v2, 0xcd

    if-eq p2, v1, :cond_c

    const/4 v1, 0x5

    if-eq p2, v1, :cond_a

    const/16 v1, 0xa

    if-eq p2, v1, :cond_8

    const/16 v1, 0x11

    if-eq p2, v1, :cond_5

    const/16 v1, 0x12

    if-eq p2, v1, :cond_3

    .line 261
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto/16 :goto_0

    .line 262
    :cond_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->k(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    new-instance v1, Lcom/netease/mpay/oversea/c4;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/c4;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto/16 :goto_0

    .line 266
    :cond_4
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto/16 :goto_0

    .line 267
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 271
    :cond_6
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 272
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/t;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 275
    :cond_7
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 276
    :cond_8
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 277
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/n;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 280
    :cond_9
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 304
    :cond_a
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->q(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 305
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/s;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/s;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/s;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 308
    :cond_b
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 309
    :cond_c
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 310
    new-instance v1, Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/thirdapi/i;-><init>()V

    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/i;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    goto :goto_0

    .line 313
    :cond_d
    invoke-interface {p3, v2}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :goto_0
    return v0

    :cond_e
    :goto_1
    const/16 p0, 0xca

    .line 314
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v0

    :cond_f
    :goto_2
    const/16 p0, 0xc9

    .line 315
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v0

    :cond_10
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/SyncApiAuthCallback;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p3, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-static {p2}, Lcom/netease/mpay/oversea/g6;->a(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    .line 9
    iget-object v3, p1, Lcom/netease/mpay/oversea/y5;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p1, Lcom/netease/mpay/oversea/y5;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/y5;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xa

    const/16 v3, 0xcd

    if-eq p2, v2, :cond_3

    .line 39
    invoke-interface {p3, v3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p0}, Lcom/netease/mpay/oversea/h6;->h(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 41
    new-instance p2, Lcom/netease/mpay/oversea/thirdapi/n;

    invoke-direct {p2}, Lcom/netease/mpay/oversea/thirdapi/n;-><init>()V

    new-instance v2, Lcom/netease/mpay/oversea/thirdapi/d$a;

    invoke-direct {v2, p1, p3}, Lcom/netease/mpay/oversea/thirdapi/d$a;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/SyncApiAuthCallback;)V

    invoke-virtual {p2, p0, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/l;)V

    goto :goto_0

    .line 57
    :cond_4
    invoke-interface {p3, v3}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    :goto_0
    return v1

    :cond_5
    :goto_1
    const/16 p0, 0xca

    .line 58
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v1

    :cond_6
    :goto_2
    const/16 p0, 0xc9

    .line 59
    invoke-interface {p3, p0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    return v1

    :cond_7
    :goto_3
    return v0
.end method
