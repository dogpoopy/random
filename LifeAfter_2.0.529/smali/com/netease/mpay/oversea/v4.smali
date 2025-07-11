.class public Lcom/netease/mpay/oversea/v4;
.super Lcom/netease/mpay/oversea/z0;
.source "LVUAgeGroupView.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/d1;

.field private m:Lcom/netease/mpay/oversea/w8;

.field private n:Landroid/widget/TextView;

.field private o:I

.field private p:Lcom/netease/mpay/oversea/u4;

.field private q:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/netease/mpay/oversea/v4;->o:I

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/v4;I)I
    .locals 0

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/v4;->o:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/v4;Lcom/netease/mpay/oversea/d1;)Lcom/netease/mpay/oversea/d1;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 68
    :try_start_0
    new-instance v0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;

    new-instance v1, Lcom/netease/mpay/oversea/v4$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/v4$c;-><init>(Lcom/netease/mpay/oversea/v4;)V

    invoke-direct {v0, p2, v1}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;-><init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    .line 102
    invoke-static {p3}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->parseNtSdkTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 103
    invoke-static {p1}, Lcom/netease/mpay/oversea/widget/b;->a(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;

    move-result-object p1

    .line 104
    invoke-static {v1, p1, v0}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/v4;Lcom/netease/mpay/oversea/w8$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/v4;->a(Lcom/netease/mpay/oversea/w8$a;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/v4;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/v4;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/w8$a;)V
    .locals 10

    .line 109
    iget-object v0, p1, Lcom/netease/mpay/oversea/w8$a;->b:Ljava/lang/String;

    .line 110
    iget-object p1, p1, Lcom/netease/mpay/oversea/w8$a;->a:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/i9;->b0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__popup_text_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 116
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->d0()Z

    move-result v2

    const-string v3, "\n\n"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_agegroup_region_date_reconfirm:I

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v9, v9, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    aput-object v9, v8, v4

    aput-object v0, v8, v5

    invoke-static {v2, v6, v8}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 121
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v7, [I

    aput v1, v8, v4

    aput v1, v8, v5

    new-array v1, v7, [Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v7, v7, Lcom/netease/mpay/oversea/d1;->a:Ljava/lang/String;

    aput-object v7, v1, v4

    aput-object v0, v1, v5

    invoke-static {v2, v8, v1}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_agegroup_confirm_warn:I

    .line 122
    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v7, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_agegroup_date_reconfirm:I

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v6, v7, v8}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v6, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_agegroup_confirm_without_region_warn:I

    .line 129
    invoke-static {v3, v6}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    new-array v3, v5, [I

    aput v1, v3, v4

    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v4

    .line 131
    invoke-static {v2, v3, v1}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    move-object v4, v2

    .line 138
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 139
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    const-string v2, "child_protection_confirm"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    const-string v1, "child_protection_confirm_show"

    invoke-virtual {v0, v2, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance v6, Lcom/netease/mpay/oversea/v4$f;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/oversea/v4$f;-><init>(Lcom/netease/mpay/oversea/v4;Ljava/lang/String;)V

    new-instance v8, Lcom/netease/mpay/oversea/v4$g;

    invoke-direct {v8, p0}, Lcom/netease/mpay/oversea/v4$g;-><init>(Lcom/netease/mpay/oversea/v4;)V

    invoke-static/range {v3 .. v8}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_1

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/v4;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/v4;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
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
    new-instance v0, Lcom/netease/mpay/oversea/lb;

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v5, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v2, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    :goto_0
    move-object v8, v1

    new-instance v10, Lcom/netease/mpay/oversea/v4$h;

    invoke-direct {v10, p0, p1}, Lcom/netease/mpay/oversea/v4$h;-><init>(Lcom/netease/mpay/oversea/v4;Ljava/lang/String;)V

    move-object v3, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v10}, Lcom/netease/mpay/oversea/lb;-><init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ea;)V

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

.method static synthetic e(Lcom/netease/mpay/oversea/v4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->k()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
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

.method static synthetic i(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
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

.method static synthetic j(Lcom/netease/mpay/oversea/v4;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private j()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

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
    iget-object v2, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

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
    iget-object v2, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 15
    :cond_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

    new-instance v2, Lcom/netease/mpay/oversea/v4$d;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/v4$d;-><init>(Lcom/netease/mpay/oversea/v4;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/mpay/oversea/v4$e;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/v4$e;-><init>(Lcom/netease/mpay/oversea/v4;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private k()V
    .locals 5

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object v0

    const-string v1, "child_protection2"

    const-string v2, "child_protection_region"

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/netease/mpay/oversea/x8;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/netease/mpay/oversea/v4;->o:I

    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->i()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/oversea/v4$i;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/v4$i;-><init>(Lcom/netease/mpay/oversea/v4;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/oversea/x8;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/netease/mpay/oversea/x8$e;)V

    .line 13
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/x8;->show()V

    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->D()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v1, v1, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/w8;

    iput-object v0, p0, Lcom/netease/mpay/oversea/v4;->m:Lcom/netease/mpay/oversea/w8;

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/v4;->p:Lcom/netease/mpay/oversea/u4;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w8;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/u4;->a(Ljava/util/ArrayList;)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/v4;->p:Lcom/netease/mpay/oversea/u4;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/v4;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/v4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->l()V

    return-void
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/v4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->j()V

    return-void
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/v4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->h()V

    return-void
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/v4;)Lcom/netease/mpay/oversea/d1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/v4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__lvu_age_group_view:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 7
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_region:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

    .line 8
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/i9;->d0()Z

    move-result p2

    .line 9
    iget-object p3, p0, Lcom/netease/mpay/oversea/v4;->n:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_close:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 12
    sget-object v2, Lcom/netease/mpay/oversea/s9;->F:Lcom/netease/mpay/oversea/s9;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eq v2, v3, :cond_2

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->r()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_1
    new-instance v0, Lcom/netease/mpay/oversea/v4$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/v4$a;-><init>(Lcom/netease/mpay/oversea/v4;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->i()Ljava/util/ArrayList;

    move-result-object p3

    iget v0, p0, Lcom/netease/mpay/oversea/v4;->o:I

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/mpay/oversea/d1;

    iput-object p3, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    .line 35
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/i9;->D()Ljava/util/HashMap;

    move-result-object p3

    iget-object v0, p0, Lcom/netease/mpay/oversea/v4;->l:Lcom/netease/mpay/oversea/d1;

    iget-object v0, v0, Lcom/netease/mpay/oversea/d1;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/mpay/oversea/w8;

    iput-object p3, p0, Lcom/netease/mpay/oversea/v4;->m:Lcom/netease/mpay/oversea/w8;

    .line 36
    sget p3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__lvu_age_groups:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/netease/mpay/oversea/v4;->q:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {p3}, Lcom/netease/mpay/oversea/ec;->c(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    goto :goto_2

    :cond_4
    const/4 p3, 0x2

    .line 38
    :goto_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/v4;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {v2, v3, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__spacing_10:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 40
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__spacing_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 41
    iget-object v3, p0, Lcom/netease/mpay/oversea/v4;->q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/netease/mpay/oversea/v3;

    invoke-direct {v4, p3, v0, v2}, Lcom/netease/mpay/oversea/v3;-><init>(III)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 42
    new-instance p3, Lcom/netease/mpay/oversea/u4;

    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/oversea/v4;->m:Lcom/netease/mpay/oversea/w8;

    iget-object v2, v2, Lcom/netease/mpay/oversea/w8;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/netease/mpay/oversea/v4$b;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/v4$b;-><init>(Lcom/netease/mpay/oversea/v4;)V

    invoke-direct {p3, v0, v2, v3}, Lcom/netease/mpay/oversea/u4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/r0;)V

    iput-object p3, p0, Lcom/netease/mpay/oversea/v4;->p:Lcom/netease/mpay/oversea/u4;

    .line 56
    iget-object v0, p0, Lcom/netease/mpay/oversea/v4;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p2, :cond_5

    .line 59
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->j()V

    .line 61
    :cond_5
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 62
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/i9;->s()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 63
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 65
    :cond_6
    iget-object p3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p2, v0}, Lcom/netease/mpay/oversea/v4;->a(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 67
    :goto_3
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p2

    const-string p3, "child_protection2"

    const-string v0, "child_protection_show"

    invoke-virtual {p2, p3, v0}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "child_protection2"

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
    invoke-direct {p0}, Lcom/netease/mpay/oversea/v4;->h()V

    return v2
.end method
