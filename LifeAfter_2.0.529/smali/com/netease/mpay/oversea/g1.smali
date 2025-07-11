.class public abstract Lcom/netease/mpay/oversea/g1;
.super Landroid/text/style/ClickableSpan;
.source "CustomClickSpan.java"


# instance fields
.field private final a:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 3
    new-instance v0, Lcom/netease/mpay/oversea/g1$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/g1$a;-><init>(Lcom/netease/mpay/oversea/g1;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/g1;->a:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/g1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
