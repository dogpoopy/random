.class final Lcom/netease/ntunisdk/base/view/NtSdkTagParser$2;
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

.field final synthetic b:Landroid/text/SpannableString;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;Landroid/text/SpannableString;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$2;->a:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$2;->b:Landroid/text/SpannableString;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$2;->a:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;->a()V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    return-void
.end method
