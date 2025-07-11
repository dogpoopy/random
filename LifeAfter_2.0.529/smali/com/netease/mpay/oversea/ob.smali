.class public Lcom/netease/mpay/oversea/ob;
.super Lcom/netease/mpay/oversea/fa;
.source "UploadEmailTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/fa<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p6}, Lcom/netease/mpay/oversea/fa;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/netease/mpay/oversea/j8;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/i8;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/fa;->a(Lcom/netease/mpay/oversea/i8;)Lcom/netease/mpay/oversea/fa;

    .line 3
    iput-object p3, p0, Lcom/netease/mpay/oversea/ob;->l:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/netease/mpay/oversea/ob;->m:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/netease/mpay/oversea/ob;->n:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/MpayFeedbackResult;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_REQUIRE_LOGIN:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 7
    :cond_1
    new-instance v1, Lcom/netease/mpay/oversea/pa;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->c()Lcom/netease/mpay/oversea/n5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/n5;->d()Lcom/netease/mpay/oversea/y5;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/pa;->b()Lcom/netease/mpay/oversea/r1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 10
    iget-object v3, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    .line 11
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/y5;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    :try_start_0
    new-instance p2, Lcom/netease/mpay/oversea/da;

    const/4 v3, 0x0

    invoke-direct {p2, p0, p1, v3}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance p0, Lcom/netease/mpay/oversea/nb;

    iget-object p1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v1, v2, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/mpay/oversea/y5;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/netease/mpay/oversea/nb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p0}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;

    .line 17
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->SUCCESS:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/netease/mpay/oversea/g; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/g;->a()Lcom/netease/mpay/oversea/j;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 21
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_NETWORK:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 22
    :cond_3
    instance-of p2, p0, Lcom/netease/mpay/oversea/w5;

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/netease/mpay/oversea/g;->a:I

    .line 23
    invoke-static {p2}, Lcom/netease/mpay/oversea/w5;->h(I)Z

    move-result p2

    if-nez p2, :cond_4

    iget p0, p0, Lcom/netease/mpay/oversea/g;->a:I

    .line 24
    invoke-static {p0}, Lcom/netease/mpay/oversea/w5;->d(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 25
    :cond_4
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_LOGIN_FAILED:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 27
    :cond_5
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p2, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_SERVER_ERROR:I

    if-eqz p1, :cond_6

    .line 28
    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 29
    :cond_7
    :goto_0
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_REQUIRE_LOGIN:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 30
    :cond_8
    :goto_1
    new-instance p0, Lcom/netease/mpay/oversea/MpayFeedbackResult;

    sget p1, Lcom/netease/mpay/oversea/MpayFeedbackResult;->ERR_INVALID_PARAMS:I

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/MpayFeedbackResult;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic d(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ob;->e(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/netease/mpay/oversea/fa$f;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/g;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/da;

    iget-object v1, p0, Lcom/netease/mpay/oversea/fa;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/fa;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/netease/mpay/oversea/da;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/fa$f;)V

    new-instance v1, Lcom/netease/mpay/oversea/nb;

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/fa$f;->a()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ob;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ob;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ob;->n:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/netease/mpay/oversea/nb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/da;->a(Lcom/netease/mpay/oversea/a;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/netease/mpay/oversea/g; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/g;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/g;->a()Lcom/netease/mpay/oversea/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/g;-><init>(Lcom/netease/mpay/oversea/j;)V

    throw v0
.end method
