.class public Lcom/netease/mpay/oversea/b5;
.super Lcom/netease/mpay/oversea/z0;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/b5$l;
    }
.end annotation


# instance fields
.field private l:Lcom/netease/mpay/oversea/d1;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Lcom/netease/mpay/oversea/p1;

.field private r:Lcom/netease/mpay/oversea/p1;

.field private s:Lcom/netease/mpay/oversea/p1;

.field private t:Z

.field private final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/b5$l;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/p1;

    const-string v1, "2000"

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b5;->q:Lcom/netease/mpay/oversea/p1;

    .line 9
    new-instance v0, Lcom/netease/mpay/oversea/p1;

    const/4 v1, 0x1

    const-string v3, "01"

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b5;->r:Lcom/netease/mpay/oversea/p1;

    .line 10
    new-instance v0, Lcom/netease/mpay/oversea/p1;

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b5;->s:Lcom/netease/mpay/oversea/p1;

    .line 12
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b5;->u:Ljava/util/ArrayList;

    .line 15
    iput v2, p0, Lcom/netease/mpay/oversea/b5;->v:I

    return-void
.end method

.method static synthetic A(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b5;->s:Lcom/netease/mpay/oversea/p1;

    return-object p0
.end method

.method static synthetic B(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic C(Lcom/netease/mpay/oversea/b5;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic D(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b5;I)I
    .locals 0

    .line 6
    iput p1, p0, Lcom/netease/mpay/oversea/b5;->v:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b5;Lcom/netease/mpay/oversea/d1;)Lcom/netease/mpay/oversea/d1;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b5;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5;->q:Lcom/netease/mpay/oversea/p1;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b5;ZZ)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/b5;->a(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ZZ)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    .line 140
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->c0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__day_hint:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__month_hint:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__year_hint:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5;->s:Lcom/netease/mpay/oversea/p1;

    iget-object p1, p1, Lcom/netease/mpay/oversea/p1;->c:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5;->r:Lcom/netease/mpay/oversea/p1;

    iget-object v0, v0, Lcom/netease/mpay/oversea/p1;->c:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/netease/mpay/oversea/b5;->q:Lcom/netease/mpay/oversea/p1;

    iget-object v1, v1, Lcom/netease/mpay/oversea/p1;->c:Ljava/lang/String;

    .line 149
    :goto_0
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v2

    const-string v3, "%s - %s - %s"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    .line 152
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 154
    :cond_1
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    aput-object p1, v2, v4

    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 156
    :cond_2
    iget-boolean p2, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    if-eqz p2, :cond_3

    .line 157
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    aput-object p1, v2, v5

    aput-object v1, v2, v4

    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 159
    :cond_3
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    aput-object p1, v2, v4

    invoke-static {p2, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 44
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;

    new-instance v1, Lcom/netease/mpay/oversea/b5$f;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/b5$f;-><init>(Lcom/netease/mpay/oversea/b5;)V

    invoke-direct {v0, p2, v1}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;-><init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    .line 79
    invoke-static {p3}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->parseNtSdkTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/b;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;

    move-result-object p1

    .line 81
    invoke-static {v1, p1, v0}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 86
    sget-object v0, Lcom/netease/mpay/oversea/b5$c;->a:[I

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g9;->l()Lcom/netease/mpay/oversea/GameLanguage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    .line 94
    iput-boolean v2, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->k()V

    .line 102
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oversea/b5;->o:Landroid/view/View;

    .line 103
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_date_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/b5;->n:Landroid/widget/TextView;

    .line 104
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5;->n:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5;->n:Landroid/widget/TextView;

    invoke-direct {p0, v2, v2}, Lcom/netease/mpay/oversea/b5;->a(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance p1, Lcom/netease/mpay/oversea/b5$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/b5$a;-><init>(Lcom/netease/mpay/oversea/b5;)V

    .line 138
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/b5;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/b5;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/d1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/b5;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5;->r:Lcom/netease/mpay/oversea/p1;

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__popup_text_highlight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->d0()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_date_confirm_tips:I

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v7, v7, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object p1, v6, v3

    invoke-static {v1, v4, v6}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-array v4, v5, [I

    aput v0, v4, v2

    aput v0, v4, v3

    new-array v0, v5, [Ljava/lang/String;

    .line 12
    iget-object v5, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v5, v5, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    aput-object v5, v0, v2

    aput-object p1, v0, v3

    invoke-static {v1, v4, v0}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v4, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_no_region_tips:I

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v1, v4, v5}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    new-array v4, v3, [I

    aput v0, v4, v2

    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 20
    invoke-static {v1, v4, v0}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v3, v1

    .line 26
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 27
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    const-string v1, "child_protection_confirm"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection_confirm_show"

    invoke-virtual {p1, v1, v0}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance v5, Lcom/netease/mpay/oversea/b5$i;

    invoke-direct {v5, p0, p2}, Lcom/netease/mpay/oversea/b5$i;-><init>(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;)V

    new-instance v7, Lcom/netease/mpay/oversea/b5$j;

    invoke-direct {v7, p0}, Lcom/netease/mpay/oversea/b5$j;-><init>(Lcom/netease/mpay/oversea/b5;)V

    invoke-static/range {v2 .. v7}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_2

    .line 51
    :cond_1
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/b5;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/b5;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5;->s:Lcom/netease/mpay/oversea/p1;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 11

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->f()Lcom/netease/mpay/oversea/e6;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v2, v0, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v6, v0, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    .line 5
    iget-object v7, v0, Lcom/netease/mpay/oversea/e6;->d:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/rb;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    :goto_0
    move-object v8, v1

    new-instance v10, Lcom/netease/mpay/oversea/b5$k;

    invoke-direct {v10, p0, p1}, Lcom/netease/mpay/oversea/b5$k;-><init>(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;)V

    move-object v3, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/netease/mpay/oversea/rb;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

    .line 27
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/fa;->b()V

    goto :goto_1

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/ErrorCode;->ERR_REQUIRE_LOGIN:I

    const/16 v2, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 30
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    const/16 v1, 0x271f

    const-string v2, ""

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/r4;->onFailure(ILjava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->m()V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/d1;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private j()Z
    .locals 5

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->R()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v2, v2, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/i9;->b(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/b5;->q:Lcom/netease/mpay/oversea/p1;

    iget v2, v2, Lcom/netease/mpay/oversea/p1;->b:I

    iget-object v3, p0, Lcom/netease/mpay/oversea/b5;->r:Lcom/netease/mpay/oversea/p1;

    iget v3, v3, Lcom/netease/mpay/oversea/p1;->b:I

    iget-object v4, p0, Lcom/netease/mpay/oversea/b5;->s:Lcom/netease/mpay/oversea/p1;

    iget v4, v4, Lcom/netease/mpay/oversea/p1;->b:I

    invoke-static {v2, v3, v4}, Lcom/netease/mpay/oversea/bc;->a(III)I

    move-result v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limit age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", region:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v4, v4, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private k()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__year_hint:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__month_hint:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__day_hint:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/i9;->h()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "ddMMyyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 12
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    const/4 v3, 0x5

    .line 13
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0"

    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 14
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-ge v6, v7, :cond_1

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 16
    :goto_1
    new-instance v7, Lcom/netease/mpay/oversea/p1;

    iget-boolean v9, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    if-eqz v9, :cond_2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v5, v0, v9}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/netease/mpay/oversea/b5;->q:Lcom/netease/mpay/oversea/p1;

    .line 17
    new-instance v0, Lcom/netease/mpay/oversea/p1;

    iget-boolean v5, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    if-eqz v5, :cond_3

    move-object v1, v8

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-direct {v0, v10, v6, v1, v8}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b5;->r:Lcom/netease/mpay/oversea/p1;

    .line 18
    new-instance v0, Lcom/netease/mpay/oversea/p1;

    iget-boolean v1, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    if-eqz v1, :cond_4

    move-object v1, v4

    goto :goto_4

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-direct {v0, v10, v3, v1, v4}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/b5;->s:Lcom/netease/mpay/oversea/p1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private l()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_select_region:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v0, v0, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__popup_text_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    new-array v1, v2, [Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v2, v2, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object v1

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/b5;->m:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/b5;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v1, p0, Lcom/netease/mpay/oversea/b5;->m:Landroid/widget/TextView;

    new-instance v2, Lcom/netease/mpay/oversea/b5$g;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/b5$g;-><init>(Lcom/netease/mpay/oversea/b5;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/b5;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/mpay/oversea/b5$h;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/b5$h;-><init>(Lcom/netease/mpay/oversea/b5;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private m()V
    .locals 5

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    const-string v1, "child_protection"

    const-string v2, "child_protection_region"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->i()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/netease/mpay/oversea/x8;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget v3, p0, Lcom/netease/mpay/oversea/b5;->v:I

    new-instance v4, Lcom/netease/mpay/oversea/b5$b;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/b5$b;-><init>(Lcom/netease/mpay/oversea/b5;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/netease/mpay/oversea/x8;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/netease/mpay/oversea/x8$e;)V

    .line 19
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/x8;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/b5;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/mpay/oversea/b5;->t:Z

    return p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b5;->q:Lcom/netease/mpay/oversea/p1;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/b5;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b5;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/b5;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b5;->p:Landroid/view/View;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->l()V

    return-void
.end method

.method static synthetic y(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/b5;->r:Lcom/netease/mpay/oversea/p1;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__lvu_person_info:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 9
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_region:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b5;->m:Landroid/widget/TextView;

    .line 10
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/i9;->d0()Z

    move-result p3

    const/4 v1, 0x4

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 13
    sget-object p3, Lcom/netease/mpay/oversea/s9;->F:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eq p3, v2, :cond_2

    .line 14
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/g9;->r()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_1
    new-instance p3, Lcom/netease/mpay/oversea/b5$d;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/b5$d;-><init>(Lcom/netease/mpay/oversea/b5;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->i()Ljava/util/ArrayList;

    move-result-object p2

    iget p3, p0, Lcom/netease/mpay/oversea/b5;->v:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/mpay/oversea/d1;

    iput-object p2, p0, Lcom/netease/mpay/oversea/b5;->l:Lcom/netease/mpay/oversea/d1;

    .line 27
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->d0()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 28
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->l()V

    .line 30
    :cond_4
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 31
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/i9;->s()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/16 p3, 0x8

    .line 32
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 34
    :cond_5
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p2, v0}, Lcom/netease/mpay/oversea/b5;->a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 37
    :goto_2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    const-string p3, "child_protection"

    const-string v0, "child_protection_show"

    invoke-virtual {p2, p3, v0}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/b5;->a(Landroid/view/View;)V

    .line 39
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mpay/oversea/b5;->p:Landroid/view/View;

    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p3, p0, Lcom/netease/mpay/oversea/b5;->p:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 41
    iget-object p2, p0, Lcom/netease/mpay/oversea/b5;->p:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 42
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->j()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 43
    iget-object p2, p0, Lcom/netease/mpay/oversea/b5;->p:Landroid/view/View;

    new-instance p3, Lcom/netease/mpay/oversea/b5$e;

    invoke-direct {p3, p0}, Lcom/netease/mpay/oversea/b5$e;-><init>(Lcom/netease/mpay/oversea/b5;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-object p1
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/b5$l;

    .line 163
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/b5$l;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5;->o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {v0, p1}, Lcom/netease/mpay/oversea/ec;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ec;->b(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "child_protection"

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 31
    sget-object v0, Lcom/netease/mpay/oversea/s9;->F:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g9;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/oversea/b5;->h()V

    return v2
.end method
