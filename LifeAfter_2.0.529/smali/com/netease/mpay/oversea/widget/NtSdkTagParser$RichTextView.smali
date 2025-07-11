.class public Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;
.super Ljava/lang/Object;
.source "NtSdkTagParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/widget/NtSdkTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichTextView"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;->a:Landroid/widget/TextView;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;->b:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    if-nez p2, :cond_0

    .line 7
    new-instance p1, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;

    invoke-direct {p1}, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$OnInnerSpanClickListener;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/widget/NtSdkTagParser$RichTextView;->b:Lcom/netease/mpay/oversea/widget/OnSpanClickListener;

    :cond_0
    return-void
.end method
