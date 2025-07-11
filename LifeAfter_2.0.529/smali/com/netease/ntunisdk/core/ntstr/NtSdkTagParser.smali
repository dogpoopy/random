.class public Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;,
        Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickWithOutLinkListener;,
        Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OpenLinkType;,
        Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;,
        Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;,
        Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<ntsdk (.*?)>(.*?)</ntsdk>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\w*)=\"(\\S*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/netease/ntunisdk/core/ntstr/NtSdkString;)V
    .locals 10

    sget-object v0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;->b:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->attributes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "open_type"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_1
    const-string v6, "color"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_2
    const-string v6, "href"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_3
    const-string v6, "bold"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_2

    :sswitch_4
    const-string v6, "underline"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_5
    const-string v6, "action"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, -0x1

    :goto_2
    if-eqz v2, :cond_7

    if-eq v2, v1, :cond_6

    if-eq v2, v3, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->underline:Z

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->bold:Z

    goto :goto_0

    :cond_4
    iput-object v4, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->action:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string v1, "^0[xX]"

    const-string v2, "#"

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->color:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iput-object v4, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->openType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    iput-object v4, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->href:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_5
        -0x3d363934 -> :sswitch_4
        0x2e3a85 -> :sswitch_3
        0x30ff2b -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x5c2b800f -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseNtSdkTags(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/core/ntstr/NtSdkString;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    sget-object v2, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

    invoke-direct {v5, v1}, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

    invoke-direct {v1, v4, v3}, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;->a(Lcom/netease/ntunisdk/core/ntstr/NtSdkString;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public static setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;Landroid/widget/TextView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/core/ntstr/NtSdkString;",
            ">;",
            "Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;-><init>(Landroid/widget/TextView;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;)V

    invoke-static {p0, p1, v0}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;)V

    return-void
.end method

.method public static setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/core/ntstr/NtSdkString;",
            ">;",
            "Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;",
            "Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p2, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p2, p2, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$a;-><init>(B)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->content:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean v4, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->isPureText:Z

    if-nez v4, :cond_8

    iget-object v4, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->content:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->color:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x21

    if-nez v5, :cond_4

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    iget-object v5, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->color:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;->replace2Color(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->color:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_3
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v7, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v7, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    iget-object v5, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->action:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_6

    iget-object v5, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->action:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "urs_realname"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_1
    const-string v9, "native_realname"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string v9, "ff_rules"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v9, "webview_realname"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_4
    const-string v9, "openlink"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_5
    const-string v9, "realname"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_6
    const-string v9, "outlink"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    new-instance v5, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;

    invoke-direct {v5, p2, v1, v3}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;-><init>(Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;Lcom/netease/ntunisdk/core/ntstr/NtSdkString;Landroid/text/SpannableString;)V

    goto :goto_3

    :pswitch_1
    new-instance v5, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$4;

    invoke-direct {v5, p2, v1, v3}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$4;-><init>(Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;Lcom/netease/ntunisdk/core/ntstr/NtSdkString;Landroid/text/SpannableString;)V

    goto :goto_3

    :pswitch_2
    new-instance v5, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$3;

    invoke-direct {v5, p2, v3}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$3;-><init>(Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;Landroid/text/SpannableString;)V

    goto :goto_3

    :pswitch_3
    new-instance v5, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$2;

    invoke-direct {v5, p2, v3}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$2;-><init>(Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;Landroid/text/SpannableString;)V

    goto :goto_3

    :pswitch_4
    new-instance v5, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$1;

    invoke-direct {v5, p2}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$1;-><init>(Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;)V

    :goto_3
    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    :goto_4
    iget-boolean v5, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->bold:Z

    if-eqz v5, :cond_7

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    iget-boolean v1, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->underline:Z

    if-eqz v1, :cond_8

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3, v1, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x41eff7b8 -> :sswitch_6
        -0x33392ad7 -> :sswitch_5
        -0x1e095ebc -> :sswitch_4
        -0x3edcd51 -> :sswitch_3
        0x200d28b8 -> :sswitch_2
        0x411ce051 -> :sswitch_1
        0x613205d2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
