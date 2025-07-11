.class public Lcom/netease/mpay/oversea/widget/a$u;
.super Ljava/lang/Object;
.source "Alerter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/mpay/oversea/d;

.field private e:Z

.field private f:Landroid/content/DialogInterface$OnClickListener;

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Landroid/app/Activity;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    iput-object v0, p0, Lcom/netease/mpay/oversea/widget/a$u;->d:Lcom/netease/mpay/oversea/d;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/widget/a$u;->e:Z

    .line 14
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->h:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/netease/mpay/oversea/j;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/j;-><init>()V

    .line 2
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    iget-object v1, p1, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/d;->b:Lcom/netease/mpay/oversea/d;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Lcom/netease/mpay/oversea/widget/a$v;->a()V

    .line 8
    :cond_2
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 9
    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 10
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a$u;

    const/4 p0, 0x1

    .line 11
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Z)Lcom/netease/mpay/oversea/widget/a$u;

    .line 12
    iget-object p0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 13
    iget-object p0, p1, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 14
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;
    .locals 1

    .line 23
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 24
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 25
    sget-object p0, Lcom/netease/mpay/oversea/d;->b:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 26
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;
    .locals 1

    .line 15
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 17
    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/widget/a$u;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 18
    invoke-virtual {v0, p4}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 19
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 20
    sget-object p0, Lcom/netease/mpay/oversea/d;->d:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Z)Lcom/netease/mpay/oversea/widget/a$u;

    .line 22
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 27
    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 29
    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;
    .locals 1

    .line 30
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 31
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 32
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/widget/a$u;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 33
    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 34
    invoke-virtual {v0, p4}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 35
    invoke-virtual {v0, p5}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 36
    sget-object p0, Lcom/netease/mpay/oversea/d;->c:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 37
    invoke-virtual {v0, p6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Z)Lcom/netease/mpay/oversea/widget/a$u;

    .line 38
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 28
    invoke-static/range {v0 .. v8}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;
    .locals 1

    .line 39
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->e(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 41
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/widget/a$u;->c(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 42
    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 43
    invoke-virtual {v0, p4}, Lcom/netease/mpay/oversea/widget/a$u;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 44
    invoke-virtual {v0, p5}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 45
    invoke-virtual {v0, p6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 46
    invoke-virtual {v0, p7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 47
    sget-object p0, Lcom/netease/mpay/oversea/d;->e:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 48
    invoke-virtual {v0, p8}, Lcom/netease/mpay/oversea/widget/a$u;->a(Z)Lcom/netease/mpay/oversea/widget/a$u;

    .line 49
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;
    .locals 1

    .line 50
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 52
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/widget/a$u;->d(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 53
    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/widget/a$u;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 54
    invoke-virtual {v0, p4}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 55
    invoke-virtual {v0, p5}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 56
    invoke-virtual {v0, p6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 57
    sget-object p0, Lcom/netease/mpay/oversea/d;->d:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 58
    invoke-virtual {v0, p7}, Lcom/netease/mpay/oversea/widget/a$u;->a(Z)Lcom/netease/mpay/oversea/widget/a$u;

    .line 59
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a;
    .locals 1

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 10
    sget-object p0, Lcom/netease/mpay/oversea/d;->f:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 11
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/widget/a$u;->a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 3
    invoke-virtual {v0, p2}, Lcom/netease/mpay/oversea/widget/a$u;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 4
    invoke-virtual {v0, p3}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    .line 5
    sget-object p0, Lcom/netease/mpay/oversea/d;->d:Lcom/netease/mpay/oversea/d;

    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;

    const/4 p0, 0x0

    .line 6
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/widget/a$u;->a(Z)Lcom/netease/mpay/oversea/widget/a$u;

    .line 7
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/widget/a$u;->a()Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->f:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/d;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->d:Lcom/netease/mpay/oversea/d;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->l:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    return-object p0
.end method

.method public a(Lcom/netease/mpay/oversea/widget/a$v;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 1

    .line 65
    new-instance v0, Lcom/netease/mpay/oversea/widget/a$u$a;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oversea/widget/a$u$a;-><init>(Lcom/netease/mpay/oversea/widget/a$u;Lcom/netease/mpay/oversea/widget/a$v;)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->e:Z

    return-object p0
.end method

.method public a()Lcom/netease/mpay/oversea/widget/a;
    .locals 13

    .line 67
    new-instance v12, Lcom/netease/mpay/oversea/widget/a;

    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/a$u;->h:Landroid/app/Activity;

    invoke-direct {v12, v0}, Lcom/netease/mpay/oversea/widget/a;-><init>(Landroid/app/Activity;)V

    .line 68
    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/a$u;->d:Lcom/netease/mpay/oversea/d;

    iget-object v2, p0, Lcom/netease/mpay/oversea/widget/a$u;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/widget/a$u;->a:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/netease/mpay/oversea/widget/a$u;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/oversea/widget/a$u;->k:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/oversea/widget/a$u;->l:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    iget-object v7, p0, Lcom/netease/mpay/oversea/widget/a$u;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/oversea/widget/a$u;->g:Landroid/content/DialogInterface$OnClickListener;

    iget-object v9, p0, Lcom/netease/mpay/oversea/widget/a$u;->c:Ljava/lang/String;

    iget-object v10, p0, Lcom/netease/mpay/oversea/widget/a$u;->f:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v11, p0, Lcom/netease/mpay/oversea/widget/a$u;->e:Z

    move-object v0, v12

    invoke-static/range {v0 .. v11}, Lcom/netease/mpay/oversea/widget/a;->a(Lcom/netease/mpay/oversea/widget/a;Lcom/netease/mpay/oversea/d;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-object v12
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->j:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->k:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a$u;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/a$u;->i:Ljava/lang/String;

    return-object p0
.end method
