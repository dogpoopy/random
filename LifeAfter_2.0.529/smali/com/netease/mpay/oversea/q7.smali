.class public Lcom/netease/mpay/oversea/q7;
.super Lcom/netease/mpay/oversea/z0;
.source "PassportLoginHome.java"


# instance fields
.field private l:Lcom/netease/mpay/oversea/ui/i$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/z0;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic B(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic C(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic D(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic E(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic F(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic G(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
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

    new-instance v2, Lcom/netease/mpay/oversea/q7$e;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/q7$e;-><init>(Lcom/netease/mpay/oversea/q7;)V

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
    new-instance v3, Lcom/netease/mpay/oversea/q7$f;

    invoke-direct {v3, p0, p1}, Lcom/netease/mpay/oversea/q7$f;-><init>(Lcom/netease/mpay/oversea/q7;Lcom/netease/mpay/oversea/d5;)V

    new-array p1, v2, [I

    aput v1, p1, v4

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    new-array p2, v2, [Landroid/text/style/ClickableSpan;

    aput-object v3, p2, v4

    .line 68
    invoke-static {v0, p1, v1, p2}, Lcom/netease/mpay/oversea/wa;->a(Ljava/lang/String;[I[Ljava/lang/String;[Landroid/text/style/ClickableSpan;)Landroid/text/SpannableString;

    move-result-object p1

    .line 71
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 72
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 73
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/q7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oversea/q7;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/ui/i$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/q7;->l:Lcom/netease/mpay/oversea/ui/i$g;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 3
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_email:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_email_text:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 6
    new-instance v2, Lcom/netease/mpay/oversea/q7$k;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/q7$k;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__email_delete:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 18
    new-instance v2, Lcom/netease/mpay/oversea/q7$l;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/oversea/q7$l;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    new-instance v3, Lcom/netease/mpay/oversea/q7$m;

    invoke-direct {v3, p0, v0}, Lcom/netease/mpay/oversea/q7$m;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password_text:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 47
    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 48
    new-instance v4, Lcom/netease/mpay/oversea/q7$n;

    invoke-direct {v4, p0, v0}, Lcom/netease/mpay/oversea/q7$n;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/LinearLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_delete:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    new-instance v4, Lcom/netease/mpay/oversea/q7$o;

    invoke-direct {v4, p0, v3}, Lcom/netease/mpay/oversea/q7$o;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    new-instance v2, Lcom/netease/mpay/oversea/q7$p;

    invoke-direct {v2, p0, v0}, Lcom/netease/mpay/oversea/q7$p;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__password_eye:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 88
    new-instance v2, Lcom/netease/mpay/oversea/q7$a;

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/oversea/q7$a;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 99
    sget-object v2, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_longe_btn:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_envoy_btn:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 104
    :cond_1
    sget v4, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_passport_btn:I

    invoke-static {v4}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    :goto_0
    new-instance v4, Lcom/netease/mpay/oversea/q7$b;

    invoke-direct {v4, p0, v1, v3}, Lcom/netease/mpay/oversea/q7$b;-><init>(Lcom/netease/mpay/oversea/q7;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_register:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    new-instance v1, Lcom/netease/mpay/oversea/q7$c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/q7$c;-><init>(Lcom/netease/mpay/oversea/q7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__passport_password_reset:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    new-instance v1, Lcom/netease/mpay/oversea/q7$d;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/q7$d;-><init>(Lcom/netease/mpay/oversea/q7;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/i9;->c(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/q3$f;

    move-result-object v0

    .line 141
    iget-object v0, v0, Lcom/netease/mpay/oversea/q3$f;->j:Lcom/netease/mpay/oversea/h8;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, v0, Lcom/netease/mpay/oversea/h8;->b:Lcom/netease/mpay/oversea/d5;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 143
    iget-object v1, v0, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/netease/mpay/oversea/d5;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v1, ""

    .line 144
    :goto_2
    sget v2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__policy_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 145
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

    .line 146
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/q7;->a(Landroid/widget/TextView;)V

    goto :goto_3

    .line 148
    :cond_4
    invoke-direct {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/q7;->a(Lcom/netease/mpay/oversea/d5;Ljava/lang/String;Landroid/widget/TextView;)V

    :goto_3
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 149
    sget-object v1, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget-object v2, v0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v7, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 152
    invoke-virtual/range {p0 .. p2}, Lcom/netease/mpay/oversea/q7;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 153
    invoke-static/range {v1 .. v8}, Lcom/netease/mpay/oversea/u5;->a(Lcom/netease/mpay/oversea/g6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/oversea/s9;Ljava/util/ArrayList;)Lcom/netease/mpay/oversea/u5;

    move-result-object v12

    .line 157
    new-instance v1, Lcom/netease/mpay/oversea/f6;

    iget-object v10, v0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/netease/mpay/oversea/q7$g;

    invoke-direct {v14, p0}, Lcom/netease/mpay/oversea/q7$g;-><init>(Lcom/netease/mpay/oversea/q7;)V

    const/4 v13, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Lcom/netease/mpay/oversea/f6;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/u5;ZLcom/netease/mpay/oversea/q5;)V

    .line 184
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/fa;->b()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/q7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/q7;->i()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/oversea/q7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/q7;->j()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic g(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic i(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/g6;->c(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/g6;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/g6;->c(I)Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/g6;)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    instance-of v1, v0, Lcom/netease/mpay/oversea/MpayActivity;

    const-string v2, "neteasegames_login"

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, v2}, Lcom/netease/mpay/oversea/MpayActivity;->setPageName(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic m(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic n(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic o(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic p(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic q(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic r(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic s(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic t(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object p0
.end method

.method static synthetic u(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic v(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic w(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic x(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic y(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method

.method static synthetic z(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/w2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 3
    sget p3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__passport_login_home:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/netease/mpay/oversea/ui/i$h;

    sget-object p3, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p2, p3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;)V

    iput-object p2, p0, Lcom/netease/mpay/oversea/q7;->l:Lcom/netease/mpay/oversea/ui/i$g;

    .line 5
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Lcom/netease/mpay/oversea/q7;->b(Landroid/view/ViewGroup;)V

    return-object p1
.end method

.method public a(Z)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/z0;->a(Z)V

    if-nez p1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/netease/mpay/oversea/q7;->k()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Passport Login Success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v3}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-direct {v1, v3, v2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/netease/mpay/oversea/a0;

    const-string v2, "account"

    invoke-direct {v1, v2, p1}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance p1, Lcom/netease/mpay/oversea/a0;

    const-string v1, "password"

    invoke-direct {p1, v1, p2}, Lcom/netease/mpay/oversea/a0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 11

    .line 2
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v4, v4, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v3, v4}, Lcom/netease/mpay/oversea/g9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-instance v3, Lcom/netease/mpay/oversea/q7$h;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/q7$h;-><init>(Lcom/netease/mpay/oversea/q7;)V

    .line 12
    invoke-virtual {v3}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_1
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__back:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 23
    iget-object v3, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v3, v3, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :goto_1
    new-instance v3, Lcom/netease/mpay/oversea/q7$i;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/q7$i;-><init>(Lcom/netease/mpay/oversea/q7;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title_logo:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 39
    sget-object v4, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g6;->h()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_3

    .line 40
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_longe:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g6;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 44
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_envoy:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 48
    :cond_4
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/h9;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 49
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    sget v0, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__login_logo_stellar:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 53
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :goto_2
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__channel_login_more_items:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/i9;->q()Ljava/util/ArrayList;

    move-result-object v7

    .line 60
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/q7;->h()Z

    move-result v4

    .line 61
    iget-object v5, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcom/netease/mpay/oversea/z0;->a:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v10, 0x1

    move v9, v4

    invoke-static/range {v5 .. v10}, Lcom/netease/mpay/oversea/ui/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZZZ)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 62
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-direct {v5, v6, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 63
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v5, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__margin_11:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 65
    new-instance v6, Lcom/netease/mpay/oversea/v3;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x3

    :goto_3
    invoke-direct {v6, v1, v5, v2}, Lcom/netease/mpay/oversea/v3;-><init>(III)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 66
    new-instance v1, Lcom/netease/mpay/oversea/s7;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    new-instance v4, Lcom/netease/mpay/oversea/q7$j;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/q7$j;-><init>(Lcom/netease/mpay/oversea/q7;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/oversea/s7;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/s7$a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/q7;->c(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "neteasegames_login"

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/z0;->d:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/g9;->a(Lcom/netease/mpay/oversea/s9;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/netease/mpay/oversea/q7;->l:Lcom/netease/mpay/oversea/ui/i$g;

    invoke-interface {v0, v2}, Lcom/netease/mpay/oversea/ui/e$c;->a(Lcom/netease/mpay/oversea/ui/i$g;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->g:Lcom/netease/mpay/oversea/w2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/w2;->n:Lcom/netease/mpay/oversea/ui/e$c;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/netease/mpay/oversea/ui/e$c;->a()V

    :cond_2
    :goto_0
    return v1
.end method

.method public h()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/z0;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
