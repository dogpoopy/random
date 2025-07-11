.class Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;
.super Landroid/text/style/ClickableSpan;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/widget/NtSdkTagParser;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnColorReplacement;Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

.field final synthetic b:Lcom/netease/mpay/oversea/c7;

.field final synthetic c:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Lcom/netease/mpay/oversea/c7;Landroid/text/SpannableString;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;->b:Lcom/netease/mpay/oversea/c7;

    iput-object p3, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;->c:Landroid/text/SpannableString;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;->b:Lcom/netease/mpay/oversea/c7;

    iget-object v0, v0, Lcom/netease/mpay/oversea/c7;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;->c:Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$4;->b:Lcom/netease/mpay/oversea/c7;

    iget-object v2, v2, Lcom/netease/mpay/oversea/c7;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/widget/OnSpanClickListener;->onOutLinkClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/netease/mpay/oversea/g8;->c(I)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
