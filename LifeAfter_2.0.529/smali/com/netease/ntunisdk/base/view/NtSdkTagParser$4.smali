.class final Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;
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

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/netease/ntunisdk/base/view/b;

.field final synthetic d:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;Landroid/widget/TextView;Lcom/netease/ntunisdk/base/view/b;Landroid/text/SpannableString;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->a:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->c:Lcom/netease/ntunisdk/base/view/b;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->d:Landroid/text/SpannableString;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 166
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->a:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->c:Lcom/netease/ntunisdk/base/view/b;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/view/b;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->d:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$4;->c:Lcom/netease/ntunisdk/base/view/b;

    iget-object v3, v3, Lcom/netease/ntunisdk/base/view/b;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;->onOutLinkClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
