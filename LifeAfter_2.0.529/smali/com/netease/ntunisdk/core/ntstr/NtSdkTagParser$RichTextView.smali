.class public Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichTextView"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;

    iget-object p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;

    if-nez p1, :cond_0

    new-instance p1, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickWithOutLinkListener;

    invoke-direct {p1}, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickWithOutLinkListener;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$RichTextView;->b:Lcom/netease/ntunisdk/core/ntstr/NtSdkTagParser$OnSpanClickListener;

    :cond_0
    return-void
.end method
