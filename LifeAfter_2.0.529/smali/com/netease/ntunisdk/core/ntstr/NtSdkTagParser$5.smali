.class final Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;->setNtSdkStrings2TextView(Ljava/util/List;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnColorReplacement;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;

.field final synthetic b:Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

.field final synthetic c:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;Lcom/netease/ntunisdk/core/ntstr/NtSdkString;Landroid/text/SpannableString;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;->a:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;->b:Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

    iput-object p3, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;->c:Landroid/text/SpannableString;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;->a:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;->b:Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

    iget-object v0, v0, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->href:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;->b:Lcom/netease/ntunisdk/core/ntstr/NtSdkString;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/ntstr/NtSdkString;->openType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OpenLinkType;->convert(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$5;->c:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;->onOpenLinkClicked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->getInstance()Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->playSound(I)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
