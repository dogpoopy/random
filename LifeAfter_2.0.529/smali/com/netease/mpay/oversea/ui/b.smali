.class public Lcom/netease/mpay/oversea/ui/b;
.super Ljava/lang/Object;
.source "AdapterViewData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/ui/b$d;,
        Lcom/netease/mpay/oversea/ui/b$b;,
        Lcom/netease/mpay/oversea/ui/b$e;,
        Lcom/netease/mpay/oversea/ui/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/netease/mpay/oversea/g6;

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/g6;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/mpay/oversea/g6;",
            "TData;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/b;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b;->a:Lcom/netease/mpay/oversea/g6;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/b;->a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;
    .locals 7

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v0, p1, :cond_0

    .line 3
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    sget p3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_112_5:I

    invoke-static {p3}, Lcom/netease/mpay/oversea/g8;->a(I)I

    move-result p3

    .line 9
    sget v0, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_35:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->a(I)I

    move-result v0

    goto :goto_0

    .line 11
    :cond_1
    sget p3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_135:I

    invoke-static {p3}, Lcom/netease/mpay/oversea/g8;->a(I)I

    move-result p3

    .line 12
    sget v0, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__channel_btn_size_42:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->a(I)I

    move-result v0

    :goto_0
    move v5, p3

    move v6, v0

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/i9;->b(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 17
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/b$d;->a(Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object v0

    .line 18
    iget v1, v0, Lcom/netease/mpay/oversea/ui/b$d;->c:I

    .line 21
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->f()Landroid/content/res/Resources;

    move-result-object v2

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->d()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-nez v2, :cond_3

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v3, v2

    :cond_3
    if-nez p3, :cond_4

    .line 33
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 35
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/netease/mpay/oversea/i9;->a(ZLcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 37
    iget p0, v0, Lcom/netease/mpay/oversea/ui/b$d;->d:I

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 39
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/netease/mpay/oversea/i9;->b(ZLcom/netease/mpay/oversea/g6;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_6

    .line 41
    new-instance p1, Ljava/lang/Integer;

    iget p2, v0, Lcom/netease/mpay/oversea/ui/b$d;->e:I

    invoke-static {v3, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/res/Resources;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 43
    :cond_6
    new-instance p2, Lcom/netease/mpay/oversea/ui/b$c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p2, p0, p3, p1}, Lcom/netease/mpay/oversea/ui/b$c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    return-object p2
.end method

.method public static b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;ZZ)Lcom/netease/mpay/oversea/ui/b$c;
    .locals 7

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v0, p1, :cond_0

    .line 3
    sget-object p1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    .line 5
    :cond_0
    sget v0, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__icon_30:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->a(I)I

    move-result v6

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move-object v4, p1

    move v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/oversea/i9;->d(Landroid/content/Context;Ljava/lang/String;ZLcom/netease/mpay/oversea/g6;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/b$d;->a(Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$d;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 10
    iget p3, p2, Lcom/netease/mpay/oversea/ui/b$d;->b:I

    goto :goto_0

    :cond_1
    iget p3, p2, Lcom/netease/mpay/oversea/ui/b$d;->a:I

    .line 13
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->f()Landroid/content/res/Resources;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->d()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, v1

    :goto_1
    if-nez v1, :cond_3

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, v1

    :cond_3
    if-nez v0, :cond_4

    .line 25
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 28
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/i9;->b(Lcom/netease/mpay/oversea/g6;)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    iget p0, p2, Lcom/netease/mpay/oversea/ui/b$d;->d:I

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 32
    :cond_5
    new-instance p1, Lcom/netease/mpay/oversea/ui/b$c;

    invoke-direct {p1, p0, v0}, Lcom/netease/mpay/oversea/ui/b$c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method
