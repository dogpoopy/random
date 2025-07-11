.class public Lcom/netease/mpay/oversea/o7;
.super Lcom/netease/mpay/oversea/z0;
.source "PassportLogin.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/ui/i$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/i9;->x()Ljava/lang/String;

    move-result-object v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;

    new-instance v2, Lcom/netease/mpay/oversea/o7$c;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/o7$c;-><init>(Lcom/netease/mpay/oversea/o7;)V

    invoke-direct {v1, p1, v2}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;-><init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V

    .line 45
    invoke-static {v0}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->parseNtSdkTags(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    .line 46
    invoke-static {v3}, Lcom/netease/mpay/oversea/widget/b;->b(Landroid/app/Activity;)Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;

    move-result-object v3

    .line 47
    invoke-static {v2, v3, v1}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/d5;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 5

    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    .line 53
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__passport_policy:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__login_privacy_highlight:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 58
    :try_start_0
    new-instance v3, Lcom/netease/mpay/oversea/o7$d;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/o7$d;-><init>(Lcom/netease/mpay/oversea/o7;Lcom/netease/mpay/oversea/d5;)V

    new-array p1, v2, [I

    aput v1, p1, v4

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    new-array p2, v2, [Landroid/text/style/ClickableSpan;

    aput-object v3, p2, v4

    .line 67
    invoke-static {v0, p1, v1, p2}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object p1

    .line 70
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 72
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/o7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o7;->i()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 6

    .line 2
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/o7$e;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/o7$e;-><init>(Lcom/netease/mpay/oversea/o7;)V

    .line 9
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 18
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_logo:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 19
    sget-object v2, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_longe:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_envoy:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/h9;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_stellar:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    :goto_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/o7;->c(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 4
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_email:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_email_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 6
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 7
    new-instance v2, Lcom/netease/mpay/oversea/o7$f;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/o7$f;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 19
    new-instance v2, Lcom/netease/mpay/oversea/o7$g;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/oversea/o7$g;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    new-instance v3, Lcom/netease/mpay/oversea/o7$h;

    invoke-direct {v3, p0, v0}, Lcom/netease/mpay/oversea/o7$h;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 46
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 47
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 48
    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 49
    new-instance v4, Lcom/netease/mpay/oversea/o7$i;

    invoke-direct {v4, p0, v0}, Lcom/netease/mpay/oversea/o7$i;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 59
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    new-instance v4, Lcom/netease/mpay/oversea/o7$j;

    invoke-direct {v4, p0, v3}, Lcom/netease/mpay/oversea/o7$j;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    new-instance v2, Lcom/netease/mpay/oversea/o7$k;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/o7$k;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_eye:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 89
    new-instance v2, Lcom/netease/mpay/oversea/o7$l;

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/oversea/o7$l;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    sget-object v2, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_longe_btn:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_envoy_btn:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 105
    :cond_1
    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_passport_btn:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 107
    :goto_0
    new-instance v4, Lcom/netease/mpay/oversea/o7$m;

    invoke-direct {v4, p0, v1, v3}, Lcom/netease/mpay/oversea/o7$m;-><init>(Lcom/netease/mpay/oversea/o7;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_register:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    new-instance v1, Lcom/netease/mpay/oversea/o7$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/o7$a;-><init>(Lcom/netease/mpay/oversea/o7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password_reset:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    new-instance v1, Lcom/netease/mpay/oversea/o7$b;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/o7$b;-><init>(Lcom/netease/mpay/oversea/o7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/i9;->c(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/q3$f;

    move-result-object v0

    .line 142
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3$f;->j:Lcom/netease/mpay/oversea/h8;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, v0, Lcom/netease/mpay/oversea/h8;->b:Lcom/netease/mpay/oversea/d5;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 144
    iget-object v1, v0, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v1, ""

    .line 145
    :goto_2
    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 146
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->h0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/i9;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 147
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/o7;->a(Landroid/widget/TextView;)V

    goto :goto_3

    .line 149
    :cond_4
    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/o7;->a(Lcom/netease/mpay/oversea/d5;Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_3
    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/o7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v2;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-boolean v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->g:Z

    if-eqz v1, :cond_1

    const-string v1, "single_login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w2;->a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/w2;->c(Z)V

    .line 11
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    :goto_1
    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private i()V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o7;->h()V

    .line 3
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__ntpassport:I

    .line 4
    sget-object v1, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__longe_passport:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__envoy_passport:I

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_err:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v1, Lcom/netease/mpay/oversea/v5;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/v5;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v1

    const/16 v2, 0x271a

    invoke-interface {v1, v2, v0}, Lcom/netease/mpay/oversea/p;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/o7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method private j()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v4, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    sget-object v2, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/g6;->c(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v2, Lcom/netease/mpay/oversea/v5;

    .line 6
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/v5;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/u0;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    .line 13
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->b()Lcom/netease/mpay/oversea/v2;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/v5;

    .line 14
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v2}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    iget-object v2, v2, Lcom/netease/mpay/oversea/v2;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/v5;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/v5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :catchall_0
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private k()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    new-instance v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v3, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v4, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    sget-object v2, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v2, v3}, Lcom/netease/mpay/oversea/g6;->c(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    check-cast v2, Lcom/netease/mpay/oversea/v5;

    .line 5
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/v5;->j()Lcom/netease/mpay/oversea/p;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/u0;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/p;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/w2;->b()Lcom/netease/mpay/oversea/v2;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/oversea/v5;

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {v2}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->f:Lcom/netease/mpay/oversea/v2;

    iget-object v2, v2, Lcom/netease/mpay/oversea/v2;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/v5;->b(Ljava/lang/String;)Lcom/netease/mpay/oversea/v5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->e:Lcom/netease/mpay/oversea/b1;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/b1;->b(Lcom/netease/mpay/oversea/w2;)Z

    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/o7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/o7;)Lcom/netease/mpay/oversea/s4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->j:Lcom/netease/mpay/oversea/s4;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/o7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o7;->j()V

    return-void
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/o7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o7;->k()V

    return-void
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/o7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 3
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/netease/mpay/oversea/ui/i$h;

    sget-object p3, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/o7;->l:Lcom/netease/mpay/oversea/ui/i$g;

    .line 5
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/o7;->b(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z
    .locals 1

    .line 76
    iget-boolean p1, p0, Lcom/netease/mpay/oversea/z0;->k:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 77
    :cond_0
    instance-of p1, p2, Lcom/netease/mpay/oversea/d6;

    if-eqz p1, :cond_2

    .line 78
    move-object p1, p2

    check-cast p1, Lcom/netease/mpay/oversea/d6;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/d6;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-static {p1}, Lcom/netease/mpay/oversea/s9;->b(Lcom/netease/mpay/oversea/s9;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o7;->h()V

    goto :goto_0

    .line 84
    :cond_1
    :try_start_0
    check-cast p2, Lcom/netease/mpay/oversea/d6;

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/d6;->c()Lcom/netease/mpay/oversea/j;

    move-result-object p1

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event:onReceive: toast:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 86
    iget-object p1, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/netease/mpay/oversea/x2;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/netease/mpay/oversea/v8;

    invoke-virtual {p0, p1, p2}, Lcom/netease/mpay/oversea/o7;->a(Lcom/netease/mpay/oversea/v8;Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/o7;->i()V

    const/4 v0, 0x1

    return v0
.end method
