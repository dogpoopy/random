.class public Lcom/netease/ntunisdk/base/view/c;
.super Ljava/lang/Object;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnColorReplacement;,
        Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnHandleExtraDataCallback;,
        Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickWithOutLinkListener;,
        Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OpenLinkType;,
        Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;,
        Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;,
        Lcom/netease/ntunisdk/base/view/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<ntsdk (.*?)>(.*?)</ntsdk>"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/base/view/c;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\w*)=\"(\\S*)\""

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/base/view/c;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/netease/ntunisdk/base/view/b;)V
    .locals 4

    .line 72
    sget-object v0, Lcom/netease/ntunisdk/base/view/c;->b:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/view/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "href"

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iput-object v2, p0, Lcom/netease/ntunisdk/base/view/b;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "href_2"

    .line 81
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    iput-object v2, p0, Lcom/netease/ntunisdk/base/view/b;->i:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "scene"

    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    iput-object v2, p0, Lcom/netease/ntunisdk/base/view/b;->k:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "open_type"

    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    iput-object v2, p0, Lcom/netease/ntunisdk/base/view/b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v3, "color"

    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "^0[xX]"

    const-string v3, "#"

    .line 88
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/base/view/b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v3, "action"

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    iput-object v2, p0, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v3, "bold"

    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/base/view/b;->f:Z

    goto :goto_0

    :cond_7
    const-string v3, "underline"

    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/base/view/b;->g:Z

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static parseNtSdkTags(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/view/b;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 46
    sget-object v2, Lcom/netease/ntunisdk/base/view/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 47
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 49
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 52
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v5, Lcom/netease/ntunisdk/base/view/b;

    invoke-direct {v5, v1}, Lcom/netease/ntunisdk/base/view/b;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    new-instance v1, Lcom/netease/ntunisdk/base/view/b;

    invoke-direct {v1, v4, v3}, Lcom/netease/ntunisdk/base/view/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {v1}, Lcom/netease/ntunisdk/base/view/c;->a(Lcom/netease/ntunisdk/base/view/b;)V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 64
    new-instance v1, Lcom/netease/ntunisdk/base/view/b;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/view/b;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static setNtSdkStrings2TextView(Ljava/util/List;Landroid/widget/TextView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/view/b;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;-><init>(Landroid/widget/TextView;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V

    invoke-static {p0, v0}, Lcom/netease/ntunisdk/base/view/c;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;)V

    return-void
.end method

.method public static setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/view/b;",
            ">;",
            "Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 104
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 105
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 107
    :cond_1
    iget-object v1, p1, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    .line 108
    iget-object p1, p1, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->c:Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;

    const-string v2, ""

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v2, Lcom/netease/ntunisdk/base/view/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netease/ntunisdk/base/view/c$a;-><init>(B)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/base/view/b;

    .line 112
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, v2, Lcom/netease/ntunisdk/base/view/b;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 113
    iget-boolean v5, v2, Lcom/netease/ntunisdk/base/view/b;->c:Z

    if-nez v5, :cond_c

    .line 116
    iget-object v5, v2, Lcom/netease/ntunisdk/base/view/b;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 117
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x21

    if-nez v6, :cond_2

    .line 118
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 119
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v8, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v8, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 121
    :cond_2
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 122
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    const-string v8, "realname"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    const-string v8, "native_realname"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 136
    :cond_3
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    const-string v8, "ff_rules"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    new-instance v6, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$2;

    invoke-direct {v6, v1, v4}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$2;-><init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;Landroid/text/SpannableString;)V

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 149
    :cond_4
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    const-string v8, "urs_realname"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    const-string v8, "webview_realname"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    .line 162
    :cond_5
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    const-string v8, "outlink"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 163
    new-instance v6, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;

    invoke-direct {v6, v1, v0, v2, v4}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;-><init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;Landroid/widget/TextView;Lcom/netease/ntunisdk/base/view/b;Landroid/text/SpannableString;)V

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 175
    :cond_6
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    const-string v8, "openlink"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 176
    new-instance v6, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;

    invoke-direct {v6, v1, v2, v4}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;-><init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;Lcom/netease/ntunisdk/base/view/b;Landroid/text/SpannableString;)V

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_a

    .line 193
    iget-object v6, v2, Lcom/netease/ntunisdk/base/view/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;->setAction(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4, p1, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 150
    :cond_8
    :goto_1
    new-instance v6, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$3;

    invoke-direct {v6, v1, v4}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$3;-><init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;Landroid/text/SpannableString;)V

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 123
    :cond_9
    :goto_2
    new-instance v6, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$1;

    invoke-direct {v6, v1}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$1;-><init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;)V

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 198
    :cond_a
    :goto_3
    iget-boolean v6, v2, Lcom/netease/ntunisdk/base/view/b;->f:Z

    if-eqz v6, :cond_b

    .line 199
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v6, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 201
    :cond_b
    iget-boolean v2, v2, Lcom/netease/ntunisdk/base/view/b;->g:Z

    if-eqz v2, :cond_c

    .line 202
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4, v2, v3, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 204
    :cond_c
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    :goto_4
    return-void
.end method
