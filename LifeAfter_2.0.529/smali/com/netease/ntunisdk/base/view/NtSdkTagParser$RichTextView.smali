.class public Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;
.super Ljava/lang/Object;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/base/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichTextView"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

.field c:Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->a:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 226
    iput-object p2, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->c:Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;

    .line 227
    invoke-virtual {p2}, Lcom/netease/ntunisdk/base/view/NtSdkStringClickableSpan;->getOnSpanClickListener()Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    if-nez p1, :cond_1

    .line 231
    new-instance p1, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickWithOutLinkListener;

    invoke-direct {p1}, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickWithOutLinkListener;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/base/view/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/base/view/NtSdkTagParser$OnSpanClickListener;

    :cond_1
    return-void
.end method
