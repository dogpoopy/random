.class Lcom/netease/mpay/oversea/widget/NtSdkTagParser$2;
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

.field final synthetic b:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Landroid/text/SpannableString;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$2;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$2;->b:Landroid/text/SpannableString;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$2;->a:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$2;->b:Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/widget/OnSpanClickListener;->onFFRulesClicked(Ljava/lang/String;)V

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
