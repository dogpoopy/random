.class final Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;
.super Landroid/text/style/ClickableSpan;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/view/c;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

.field final synthetic b:Lcom/netease/ntunisdk/base/view/b;

.field final synthetic c:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;Lcom/netease/ntunisdk/base/view/b;Landroid/text/SpannableString;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;->a:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;->b:Lcom/netease/ntunisdk/base/view/b;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;->c:Landroid/text/SpannableString;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 179
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;->a:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;->b:Lcom/netease/ntunisdk/base/view/b;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/view/b;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;->b:Lcom/netease/ntunisdk/base/view/b;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/view/b;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OpenLinkType;->convert(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$5;->c:Landroid/text/SpannableString;

    .line 181
    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;->onOpenLinkClicked(Ljava/lang/String;ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
